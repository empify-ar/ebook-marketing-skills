<p align="center">
  <img src="https://empify.com.ar/empify-wordmark.png" alt="Empify" width="260">
</p>

<h1 align="center">Empify en tu IA</h1>

<p align="center">Conectá tu cuenta de Empify con Claude, ChatGPT o tu editor, y sumá habilidades para vender mejor tus ebooks.</p>

<!-- AVISO-ETAPAS -->
> **Aviso:** la conexión se está habilitando por etapas. Si todavía no te aparece la pantalla de permisos, probá más tarde.
<!-- /AVISO-ETAPAS -->

## Qué es

[Empify](https://empify.com.ar) es una plataforma argentina para crear ebooks con IA y venderlos con tienda propia. Esta conexión permite que tu IA (Claude, ChatGPT, Cursor y otras) vea tus ebooks, tus ventas y tus visitas, y te ayude a validar ideas y a escribir textos de anuncio, sin que tengas que copiar y pegar datos. Este repositorio es el regalo para quien la conecta: los pasos, ocho pedidos de ejemplo y seis habilidades listas para instalar que le enseñan a tu IA a trabajar bien con tu cuenta.

La conexión es una dirección web, no un programa para instalar: `https://empify.com.ar/api/mcp`. Por eso acá no hay código de servidor, solo el kit de conexión y las habilidades.

Ayuda oficial con los pasos al día: https://empify.com.ar/conectar-ia

## Qué puede y qué no puede hacer la IA con tu cuenta

**Puede**

- Mostrar tu plan, cuánto usaste de tus cupos del mes y si tenés Mercado Pago conectado.
- Listar tus ebooks y leer uno: el índice, el texto de un capítulo que le pidas, la portada y los textos de la página de venta.
- Contarte tus ventas (pesos y dólares por separado) y tus visitas, por período y por ebook.
- Validar una idea de ebook y escribir textos de anuncio para uno de tus ebooks (si tildás el permiso de "crear" al conectar).

**No puede**

- Publicar ni cambiar tu tienda ni tus ebooks.
- Tocar precios, cobros ni reembolsos.
- Borrar nada.
- Publicar anuncios en Meta ni en ningún otro lado: solo escribe el texto.
- Ver datos de tus compradores: nombres, mails ni nada de ellos.

## Conectar Claude en 5 pasos

Funciona en claude.ai y en la aplicación de escritorio. Los planes gratis permiten una conexión propia; Pro y superiores permiten varias. Si tu Claude está en español, los menús pueden figurar traducidos.

1. Entrá a **Customize** (Personalizar) y abrí **Connectors** (Conectores).
2. Tocá **Add** y elegí **Add custom connector** (Agregar conector personalizado).
3. Escribí el nombre `Empify`, pegá la dirección `https://empify.com.ar/api/mcp` y tocá **Continue**. Dejá la autenticación como viene (**Detected**) y tocá **Add**.
4. Tocá **Connect**. Se abre Empify: entrá con tu cuenta, mirá los permisos (por defecto, solo ver) y aceptá. Si querés que además valide ideas y escriba textos de anuncio, tildá esa casilla.
5. En cada conversación donde quieras usarlo, tocá **+**, abrí **Connectors** y activá Empify. Probá con un pedido de los de abajo.

En Team y Enterprise, la primera vez la agrega quien administra la cuenta. Agregarla desde el celular no está confirmado por Claude: hacelo desde la web o el escritorio, y después la usás también en la app.

### ChatGPT

Agregar una conexión propia en ChatGPT depende de tu plan y se hace desde la web (chatgpt.com), no desde el celular:

- **Business, Enterprise y Edu:** completo. En Business lo agrega una persona administradora.
- **Pro:** solo lectura. Ves tus ebooks, ventas y visitas, pero no podés validar ideas ni armar textos de anuncio.
- **Plus y gratis:** puede variar o no estar disponible; la ayuda oficial de OpenAI no los confirma.

Pasos: entrá a **Plugins** (chatgpt.com/plugins), tocá **+**, elegí **Add custom MCP server**, poné el nombre `Empify` y pegá `https://empify.com.ar/api/mcp`; en autenticación elegí **OAuth**, marcá que entendés y querés continuar, y elegí **Create as a plugin**. Revisá las herramientas, instalalo y entrá a Empify cuando te lo pida. En una conversación nueva, escribí `@` y elegí Empify. Si no ves **Add custom MCP server**, tu plan probablemente no la incluye: Claude es el camino más directo.

### Cursor, VS Code y Claude Code (para quien programa)

La dirección es la misma.

**Claude Code**

```bash
claude mcp add --transport http empify https://empify.com.ar/api/mcp
```

Dentro de Claude Code escribí `/mcp`, elegí `empify` y seguí el navegador para entrar a tu cuenta. Si instalás el plugin de este repositorio (más abajo), la conexión ya viene declarada y no hace falta este comando.

**Cursor:** agregá esto en `~/.cursor/mcp.json` (o en `.cursor/mcp.json` dentro de un proyecto). Cursor abre el navegador para que entres a Empify.

```json
{ "mcpServers": { "empify": { "url": "https://empify.com.ar/api/mcp" } } }
```

**VS Code con GitHub Copilot:** en la paleta de comandos ejecutá **Chat: Open Customizations**, abrí **MCP Servers** y tocá **Add Server**. Elegí **HTTP**, pegá la dirección, ponele el nombre `empify`, aceptá la confianza del servidor y entrá a tu cuenta. Si tu organización limita los servidores permitidos, puede estar bloqueado.

### Gemini

Hoy la aplicación de Gemini solo acepta conexiones personalizadas en Estados Unidos, en inglés y con una cuenta de Google personal, así que desde Argentina no hay un camino por ahí.

## Instalar las habilidades

Una habilidad es una carpeta con instrucciones que tu IA carga sola cuando hace falta. No ejecutan código ni mandan datos a ningún lado: son texto. Primero conectá Empify (arriba) y después instalá las habilidades según tu IA. Los pasos están verificados contra la documentación oficial al 15 de noviembre de 2026.

### Claude Code: el plugin (dos comandos)

```text
/plugin marketplace add <organizacion>/empify-ia
/plugin install empify@empify
```

<!-- PUBLICAR: reemplazar <organizacion> por el nombre real de la organización de GitHub en todo el README -->

Con eso quedan instaladas las seis habilidades y declarada la conexión a `https://empify.com.ar/api/mcp`. Las habilidades del plugin se invocan con el prefijo del plugin (por ejemplo `/empify:validar-idea-de-ebook`) y Claude las usa solo cuando corresponde. Para entrar a tu cuenta, abrí `/mcp` y elegí `empify`.

### claude.ai (web y escritorio): un .zip por habilidad

Funciona en los planes Free, Pro, Max, Ultra, Team y Enterprise, con **Code execution and file creation** activado (en Settings, Capabilities). En Team y Enterprise, quien administra puede haber desactivado la subida de habilidades propias.

1. Bajá los .zip que quieras de la carpeta [`descargas/`](descargas/) (empezá por `empify-base.zip`).
2. Entrá a **Customize** (Personalizar), abrí **Skills**, tocá **+**, después **+ Create skill** y elegí **Upload a skill**.
3. Subí un .zip por vez. Cada uno ya tiene la carpeta de la habilidad como raíz, que es lo que pide claude.ai.
4. Activá la habilidad en la lista y probá un pedido.

`empify-habilidades-todas.zip` junta las seis y sirve para descomprimir en una carpeta de habilidades (Claude Code o Cursor), no para subir de una sola vez a claude.ai.

### Cursor

Descomprimí `empify-habilidades-todas.zip` dentro de `~/.cursor/skills/` (para todos tus proyectos) o de `.cursor/skills/` (para un proyecto). Cursor también lee `.claude/skills/`. El nombre de cada carpeta tiene que coincidir con el de la habilidad, y así vienen.

### ChatGPT y otras IA: un archivo para pegar

Copiá el bloque de [`otras-ia/instrucciones-empify.md`](otras-ia/instrucciones-empify.md) en las instrucciones personalizadas de ChatGPT (Personalización), en las reglas de usuario de Cursor o donde tu IA lo permita. Es corto a propósito para entrar en los límites de cada plan.

OpenAI documenta habilidades con el mismo formato de carpeta y archivo `SKILL.md`, pero no pudimos confirmar qué planes de ChatGPT permiten subirlas. Si tu plan las tiene, podés subir la carpeta de una habilidad; si no, usá el bloque para pegar.

## Las habilidades

| Habilidad | Para qué sirve |
|---|---|
| [`empify-base`](skills/empify-base/SKILL.md) | Contexto general: las 7 herramientas y cuándo usar cada una, permisos, cupos, cómo leer las salidas y reglas de seguridad. |
| [`validar-idea-de-ebook`](skills/validar-idea-de-ebook/SKILL.md) | Afina la idea con 3 o 4 preguntas, valida y cierra con una decisión: avanzar, ajustar o descartar. |
| [`textos-de-anuncio-para-ebooks`](skills/textos-de-anuncio-para-ebooks/SKILL.md) | Elige ángulo, genera textos de anuncio y los edita con oficio, sin promesas ni cifras inventadas. |
| [`lectura-de-ventas-y-visitas`](skills/lectura-de-ventas-y-visitas/SKILL.md) | Diagnostica si el problema es tráfico o conversión, qué canal rinde y qué hacer esta semana. |
| [`revision-de-pagina-de-venta`](skills/revision-de-pagina-de-venta/SKILL.md) | Revisa tu página de venta como un comprador y devuelve textos listos para pegar en tu panel. |
| [`rutina-semanal-del-vendedor`](skills/rutina-semanal-del-vendedor/SKILL.md) | Un repaso de 10 minutos: cuenta, ebooks, ventas, visitas y una decisión para la semana. |

## Ocho pedidos para probar

1. "¿Cuál de mis ebooks vendió más este mes?"
2. "¿De dónde vienen las visitas de mi tienda y cuántas terminan en compra?"
3. "Armame tres textos de anuncio para mi ebook de repostería."
4. "Validá esta idea: guía de huerta en balcón."
5. "¿Cuánto me queda de cupo este mes en mi plan?"
6. "Leé la página de venta de mi último ebook y decime qué mejorarías."
7. "Hacé el repaso semanal de mi cuenta."
8. "¿Qué ebooks míos todavía no tienen la tienda publicada?"

## Límites por plan

| Plan | Llamadas por día |
|---|---|
| Borrador | 30 |
| Editor | 150 |
| Emprendedor | 500 |
| Imperio | 1.500 |

- Hasta 30 llamadas por minuto y hasta 5 conexiones activas por cuenta.
- Validar ideas: hasta 10 por hora. Si tu plan tiene un cupo mensual de validaciones (hoy, Borrador), cada una descuenta del cupo como en el panel.
- Textos de anuncio: del plan Emprendedor en adelante, hasta 20 pedidos por hora.
- Ventas y visitas: con Borrador y Editor ves cantidades; los montos, el detalle por ebook, de dónde vienen las visitas y la conversión son del plan Emprendedor en adelante, igual que en el panel.
- Los cupos del plan se renuevan el primer día de cada mes (hora UTC). Los planes están en https://empify.com.ar/precios.

## Seguridad y privacidad

- **No le das tu contraseña a la IA.** Entrás a Empify con tu cuenta y aceptás permisos. Por defecto, la IA solo puede ver.
- **La IA ve solo lo tuyo:** tus ebooks (títulos, el texto de un capítulo si se lo pedís, la página de venta), tus totales de ventas y visitas, tu plan y tus cupos. Nunca los de otras personas, ni datos de tus compradores, ni claves.
- **Lo que lee lo procesa tu IA** con las reglas del servicio que elegiste. Conectá solo IAs en las que confiás.
- **Podés cortar la conexión cuando quieras:** desde tu cuenta en Empify, en **Conexiones con IA**, o quitando el conector en tu IA. Una conexión sin uso durante 30 días se corta sola. Si ves conexiones repetidas, cortá las que no uses.
- **Un riesgo que Empify no puede cerrar desde acá:** si tu IA también está conectada a otras cosas (tu correo, la web, otros servicios), un texto escrito para engañarla podría hacer que mande a otro lado algo que leyó de Empify. Dejá activado que tu IA te pida permiso antes de usar herramientas y leé lo que te pide antes de aceptar.
- Todo lo que devuelve la conexión (títulos, capítulos, nombres de campaña) se trata como dato y no como instrucciones. Las habilidades de este repositorio refuerzan esa regla.

## Preguntas frecuentes

**¿Tiene costo extra?** No. La conexión no se cobra aparte. Validar una idea y armar textos de anuncio siguen las reglas de tu plan, como si lo hicieras desde Empify. Lo que cuesta tu IA (tu suscripción a Claude o a ChatGPT) es aparte.

**¿Funciona en el celular?** En Claude, una vez agregada desde la computadora, también la usás en la app. En ChatGPT la conexión se agrega solo desde la web.

**¿La IA puede publicar o cambiar mi tienda?** No. Puede leer y generar texto; lo demás lo hacés vos en tu panel.

**¿Qué datos de mis compradores ve?** Ninguno.

**No me aparece la pantalla de permisos.** La conexión se está habilitando por etapas. Probá más tarde.

**No me aparece la opción en ChatGPT.** Depende de tu plan (ver arriba). Claude es el camino más directo.

**¿Las habilidades mandan mis datos a algún lado?** No. Son archivos de texto con instrucciones; no ejecutan código ni hacen llamadas por su cuenta.

**¿Por qué no hay código del servidor?** Porque la conexión es remota, por dirección web. No hay nada que instalar ni ejecutar en tu computadora.

## Contenido del repositorio

```text
.claude-plugin/     plugin y catálogo (marketplace) para Claude Code
.mcp.json           conexión a Empify declarada para el plugin
skills/             las seis habilidades (una carpeta cada una)
descargas/          un .zip por habilidad y uno con todas
otras-ia/           bloque de instrucciones para pegar en otras IA
scripts/            empaquetar.sh arma los .zip
```

Para regenerar los .zip después de cambiar una habilidad: `scripts/empaquetar.sh`.

## Ayuda y licencia

Pasos al día y preguntas frecuentes: https://empify.com.ar/conectar-ia

Licencia MIT, titular Empify. Ver [LICENSE](LICENSE).
