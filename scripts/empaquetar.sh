#!/usr/bin/env bash
# Arma los .zip de las habilidades de Empify con la estructura que pide claude.ai:
# cada zip tiene la carpeta de la habilidad como raíz (nombre-de-la-habilidad/SKILL.md).
# Uso: scripts/empaquetar.sh            -> escribe en descargas/
#      SALIDA=/otra/carpeta scripts/empaquetar.sh
# Los zip salen siempre iguales (fecha fija, orden fijo) para que git no marque cambios sin motivo.
set -euo pipefail

RAIZ="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SALIDA="${SALIDA:-$RAIZ/descargas}"
FECHA_FIJA="202611150000"
TODAS="empify-habilidades-todas"

command -v zip >/dev/null || { echo "Falta el comando zip." >&2; exit 1; }
mkdir -p "$SALIDA"
rm -f "$SALIDA"/*.zip

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

# Valida el encabezado de una habilidad: name igual a la carpeta, solo minúsculas, números y guiones,
# hasta 64 caracteres, sin las palabras reservadas; description entre 1 y 200 caracteres, sin < ni >;
# license (opcional, es parte de la especificación de habilidades) de hasta 200 caracteres.
validar() {
  local carpeta="$1" nombre
  nombre="$(basename "$carpeta")"
  python3 - "$carpeta/SKILL.md" "$nombre" <<'PY'
import re, sys
ruta, carpeta = sys.argv[1], sys.argv[2]
t = open(ruta, encoding="utf-8").read()
m = re.match(r"---\n(.*?)\n---\n", t, re.S)
if not m:
    sys.exit(f"{ruta}: falta el encabezado entre ---")
campos = {}
for linea in m.group(1).splitlines():
    k, _, v = linea.partition(":")
    campos[k.strip()] = v.strip().strip('"')
extra = set(campos) - {"name", "description", "license"}
if extra:
    sys.exit(f"{ruta}: campos no permitidos en claude.ai: {sorted(extra)}")
n, d = campos.get("name", ""), campos.get("description", "")
if n != carpeta:
    sys.exit(f"{ruta}: name '{n}' no coincide con la carpeta '{carpeta}'")
if not re.fullmatch(r"[a-z0-9-]{1,64}", n) or "claude" in n or "anthropic" in n:
    sys.exit(f"{ruta}: name inválido")
if not 1 <= len(d) <= 200 or "<" in d or ">" in d:
    sys.exit(f"{ruta}: description inválida ({len(d)} caracteres)")
if "license" in campos and not 1 <= len(campos["license"]) <= 200:
    sys.exit(f"{ruta}: license inválida")
PY
}

empaquetar() {  # empaquetar <zip> <carpeta-de-habilidad>...
  local zipf="$1"; shift
  local etapa; etapa="$(mktemp -d "$TMP/e.XXXX")"
  for c in "$@"; do
    cp -R "$c" "$etapa/"
    cp "$RAIZ/LICENSE" "$etapa/$(basename "$c")/LICENSE"   # la licencia viaja dentro de cada habilidad
  done
  find "$etapa" -exec touch -t "$FECHA_FIJA" {} +
  ( cd "$etapa" && find . -type f ! -name .DS_Store | LC_ALL=C sort | sed 's#^\./##' | zip -X -D -q "$zipf" -@ )
}

habilidades=()
for c in "$RAIZ"/skills/*/; do
  c="${c%/}"
  validar "$c"
  habilidades+=("$c")
  empaquetar "$SALIDA/$(basename "$c").zip" "$c"
done
empaquetar "$SALIDA/$TODAS.zip" "${habilidades[@]}"

echo "Listo. Zips en $SALIDA:"
ls -1 "$SALIDA"/*.zip | sed 's#.*/#  #'
