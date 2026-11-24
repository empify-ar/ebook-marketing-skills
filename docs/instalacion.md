# Instalación en detalle

Volver al [README](../README.md).

## Claude Code (terminal)

```bash
claude plugin marketplace add empify-ar/ebook-marketing-skills && claude plugin install empify@empify
```

El comando instala las habilidades, los siete comandos y la conexión declarada. Dentro de Claude Code, los mismos dos pasos son `/plugin marketplace add empify-ar/ebook-marketing-skills` y `/plugin install empify@empify`.

Después, dentro de Claude Code, escribí `/empify:empezar` (o `/empify:empezar sin cuenta`).

## claude.ai (web y escritorio)

1. En Ajustes, Capacidades, activá la ejecución de código y creación de archivos (en pantallas nuevas: **Create and edit files**).
2. Bajá un `.zip` de la [última versión](https://github.com/empify-ar/ebook-marketing-skills/releases/latest). Empezá por [`idea-de-ebook.zip`](https://github.com/empify-ar/ebook-marketing-skills/releases/latest/download/idea-de-ebook.zip).
3. En **Personalización** (**Customize**) abrí **Skills**, tocá **+**, **+ Create skill** y **Upload a skill**.
4. Subí un `.zip` por vez.

En [`descargas/`](../descargas/) hay un `.zip` por habilidad y `empify-habilidades-todas.zip`, que junta todas y sirve para descomprimir en una carpeta, no para subir de una vez. Si tu Claude está en español, el menú se llama **Personalización**; en inglés, **Customize**. En Team y Enterprise, quien administra puede haber desactivado las habilidades propias.

Para regenerar los `.zip` después de cambiar una habilidad: `scripts/empaquetar.sh`.

## Conectar tu cuenta de Empify

Es opcional y aparte de la instalación: [conectar-tu-cuenta.md](conectar-tu-cuenta.md).
