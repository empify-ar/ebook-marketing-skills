> **English:** 12 skills to sell your ebook with AI. They work with no account.
> If you also connect your [Empify](https://empify.com.ar) account, your AI reviews your store every week and writes you the decision. You make the changes.
> Open source (MIT), in Spanish (Argentina). Full summary in English: [README.en.md](README.en.md).

# 12 habilidades para vender tu ebook con IA. Andan sin cuenta.

**Y si conectás tu cuenta de Empify, tu IA revisa tu tienda cada semana y te escribe la decisión. Los cambios los hacés vos.**

Abierto (licencia MIT) · en español · sin cuenta para empezar · probado con Claude · las rutinas piden tu cuenta de Empify y un plan pago de Claude

## Demostración

**Video corto: todavía por grabar.** Va a mostrar, en unos 20 segundos, cómo se pide el informe de la semana y qué devuelve.

Mientras tanto, esto es lo que entrega el comando `/empify:semana`.

**Ejemplo con datos de muestra** (el ebook y los números están inventados para mostrar el formato; no es una cuenta real):

```text
Datos leídos el lunes 23 de noviembre de 2026 de mi_cuenta, listar_ebooks, ventas y visitas_tienda.
Período: del 16 al 22 de noviembre de 2026.

Estado: plan Emprendedor, Mercado Pago conectado, 2 tiendas publicadas y ninguna con falla.

                        Esta semana              Semana anterior
Visitantes              64                       51
Ventas en pesos         2                        1
Ventas en dólares       0                        0
Conversión (pesos)      sin dato (muestra chica) sin dato
Canal principal         Instagram (38 de 64)     Instagram (30 de 51)

Observación: subieron las visitas y las ventas, pero son números chicos. Pasar de 1 a 2 ventas
no alcanza para decir que algo mejoró. Lo que sí se ve: Instagram trae más de la mitad de las
visitas. Con tan pocas visitas no se puede saber cuál de los dos ebooks pesa más.

Decisión de la semana: publicar tres veces en Instagram con el link de la tienda de "Huerta en
balcón" y no tocar la página. Vuelvo a mirar el lunes 30 con visitantes y ventas, mismo período.

Fila para tu planilla: 2026-11-22 | 64 | 2 | 0 | sin dato | Instagram

Qué no pude saber: cuánto gastaste ni qué resultados tuvieron tus anuncios en Meta; esta
conexión no los ve.
```

## Instalación (copiar y pegar)

Elegí tu IA. Lo que no se probó dice "sin probar".

**Claude Code (terminal).** Instala las habilidades, los siete comandos y la conexión a Empify declarada.

```bash
claude plugin marketplace add empify-ar/empify-ia && claude plugin install empify@empify
```

Dentro de Claude Code, los mismos dos pasos son `/plugin marketplace add empify-ar/empify-ia` y `/plugin install empify@empify`. Probado el 24 de noviembre de 2026 con el repositorio en una carpeta local; ese mismo comando con el nombre de GitHub todavía no se corrió desde acá.

**claude.ai (web y escritorio).** Bajá los `.zip` de [`descargas/`](descargas/): uno por habilidad y `empify-habilidades-todas.zip`, que junta todas y sirve para descomprimir en una carpeta, no para subir de una vez. Empezá por `idea-de-ebook.zip`. En **Personalización** (en inglés, **Customize**) abrí **Skills**, tocá **+**, después **+ Create skill** y **Upload a skill**, y subí un `.zip` por vez. Pide tener activada la ejecución de código y creación de archivos (en Ajustes, Capacidades; en pantallas nuevas se llama **Create and edit files**). En Team y Enterprise, quien administra puede haber desactivado las habilidades propias. Pasos según la ayuda de Claude del 24 de noviembre de 2026; la subida de estos `.zip` en particular, sin probar.

**Cursor.** Descomprimí `empify-habilidades-todas.zip` dentro de `~/.cursor/skills/` (para todos tus proyectos) o de `.cursor/skills/` (para uno). Sin probar.

**ChatGPT y otras IA.** Pegá el bloque de [`otras-ia/instrucciones-empify.md`](otras-ia/instrucciones-empify.md) en las instrucciones personalizadas, o el texto de un `SKILL.md` en la conversación. Sin probar; en ChatGPT, además, conectar tu cuenta depende de tu plan (ver [Conectar tu cuenta](#conectar-tu-cuenta)).

## Qué querés, qué escribís, qué recibís

Los siete comandos de Claude Code (con el complemento instalado llevan el prefijo `/empify:`).

| Qué querés | Qué escribís | Qué recibís | Cuenta de Empify |
|---|---|---|---|
| Arrancar y saber por dónde seguir | `/empify:empezar` | Tu perfil de vendedor guardado (o un bloque para pegar), el estado de la conexión en una línea y un comando recomendado para seguir | No hace falta: con `/empify:empezar sin cuenta` se arma igual |
| Planear el lanzamiento | `/empify:lanzar nombre del ebook` | Un tablero de 14 días con fechas, casillas y criterio para seguir, ajustar o frenar | No hace falta; con cuenta parte del estado real de tu tienda |
| Saber cómo viene la semana | `/empify:semana` | Informe de una pantalla: cinco cifras frente a la semana anterior, una observación honesta, una decisión y la fila para tu planilla | Sí |
| Enterarte si algo se rompió | `/empify:guardia` | Revisión corta: tienda pausada o con falla al publicar, Mercado Pago sin conectar, cupo bajo | Sí |
| Elegir qué ebook publicitar | `/empify:elegir` | Tabla de hasta cinco ebooks y una recomendación, diciendo si la muestra alcanza | Sí |
| Textos de anuncio | `/empify:anuncios nombre del ebook` | Al menos tres variantes de gancho, cuerpo y llamado, que difieren en una sola cosa, y una lista de revisión | Sí; la herramienta de Empify empieza en el plan Emprendedor |
| Arreglar la conexión | `/empify:doctor` | Veredicto en una línea y pasos para volver a conectar | Sí |

Sin comandos, las habilidades abiertas también se activan solas cuando lo pedís con tus palabras. Por ejemplo: "Tengo dos ideas de ebook, ¿por cuál sigo?", "Armame la estructura de un ebook sobre ahorro para freelancers", "Revisá mi página de venta" o "Armame el plan de 14 días para lanzar mi ebook".

## Las dos partes

Este repositorio tiene dos partes, las dos con licencia MIT.

### Parte 1: doce habilidades que andan sin cuenta

No piden cuenta de Empify, ni conexión, ni ninguna herramienta: alcanza con lo que contás y con las preguntas que te hace tu IA. Sirven para cualquier ebook o producto digital de información, esté donde esté a la venta. Las leen tus IA como texto; no ejecutan código ni mandan datos a ningún lado.

| Habilidad | Para qué sirve |
|---|---|
| [`idea-de-ebook`](skills/idea-de-ebook/SKILL.md) | Dejar la idea en una frase, ver qué ya existe, hacer cinco conversaciones y decidir si seguís, cambiás el recorte o la dejás. |
| [`estructura-de-ebook`](skills/estructura-de-ebook/SKILL.md) | Pasar de la idea al índice: promesa en una frase, capítulos, qué entra y qué no, y un control de calidad antes de escribir. |
| [`ebook-visual`](skills/ebook-visual/SKILL.md) | Armar un ebook donde manda la imagen: plantilla fija, hoja y letra para imprimir, página de muestra y obras de dominio público. |
| [`pagina-de-venta`](skills/pagina-de-venta/SKILL.md) | La estructura de una página que vende y una lista de control, con las frases flojas y su arreglo. |
| [`precio-y-oferta`](skills/precio-y-oferta/SKILL.md) | Elegir precio, bonos y garantía que puedas cumplir, y hacer la cuenta de lo que te queda por venta. |
| [`escalera-de-ofertas`](skills/escalera-de-ofertas/SKILL.md) | Oferta al pagar, oferta después de comprar y segunda oportunidad, con textos, imágenes y una urgencia que sea cierta. |
| [`imagenes-de-venta`](skills/imagenes-de-venta/SKILL.md) | La lista de imágenes que vende un ebook (libro 3D, escena de uso, pantalla de oferta, página de muestra) y cómo pedirlas. |
| [`angulos-de-anuncio-por-fecha`](skills/angulos-de-anuncio-por-fecha/SKILL.md) | Fechas de Argentina y Latinoamérica, ángulos de anuncio por fecha y varias imágenes por ángulo. |
| [`lanzamiento-en-14-dias`](skills/lanzamiento-en-14-dias/SKILL.md) | Un plan día por día alrededor del lanzamiento, con puntos de control. |
| [`piezas-para-redes`](skills/piezas-para-redes/SKILL.md) | Publicaciones para redes sacadas de tu propio libro, fieles a lo que dice, sin pagar anuncios. |
| [`perfil-del-vendedor`](skills/perfil-del-vendedor/SKILL.md) | Un archivo con tu rubro, público, ebooks, canales y meta del mes, que leen las demás habilidades para no repetirte las preguntas. |
| [`proximo-paso`](skills/proximo-paso/SKILL.md) | Tres acciones ordenadas y qué cambió desde la vez anterior. Con cuenta lee tus números; sin cuenta usa los que le contás. |

Ninguna promete ventas, alcance ni resultados: ordenan el trabajo y bajan la incertidumbre.

### Parte 2: lo que suma tu cuenta de Empify

[Empify](https://empify.com.ar) es una plataforma argentina para crear ebooks con IA y venderlos con tienda propia. La cuenta gratis alcanza para empezar. Al conectarla, tu IA puede leer tus ebooks, tus ventas y tus visitas, y las habilidades de esta parte trabajan con tus datos reales. La conexión es una dirección web, `https://empify.com.ar/api/mcp`, no un programa para instalar.

| Habilidad | Para qué sirve | Plan de Empify |
|---|---|---|
| [`empify-base`](skills/empify-base/SKILL.md) | Contexto: las 7 herramientas y cuándo usar cada una, permisos, cupos y reglas de seguridad. | Cualquiera |
| [`validar-idea-de-ebook`](skills/validar-idea-de-ebook/SKILL.md) | Afina la idea con 3 o 4 preguntas, la valida con un panel de compradores simulados y cierra con avanzar, ajustar o descartar. Es una simulación: no mide ventas. | Cualquiera; con Borrador, 1 validación por mes. Pide el permiso "crear" |
| [`textos-de-anuncio-para-ebooks`](skills/textos-de-anuncio-para-ebooks/SKILL.md) | Elige ángulo, pide los textos a Empify y los edita, sin promesas ni cifras inventadas. | Emprendedor o superior. Pide el permiso "crear" |
| [`lectura-de-ventas-y-visitas`](skills/lectura-de-ventas-y-visitas/SKILL.md) | Diagnostica si el problema es tráfico o conversión, qué canal rinde y qué hacer esta semana. | Cualquiera; montos, detalle por ebook, origen de visitas y conversión desde Emprendedor |
| [`revision-de-pagina-de-venta`](skills/revision-de-pagina-de-venta/SKILL.md) | Lee tu página de venta como un comprador y devuelve textos para pegar en tu panel. | Cualquiera |
| [`rutina-semanal-del-vendedor`](skills/rutina-semanal-del-vendedor/SKILL.md) | Un repaso de 10 minutos: cuenta, ebooks, ventas, visitas y una decisión. | Cualquiera |
| [`doctor-de-conexion`](skills/doctor-de-conexion/SKILL.md) | Diagnostica por qué no anda la conexión: no agregada, sesión vencida, 30 días sin uso, plan o cupo. | Cualquiera |

Además: los siete comandos de arriba y cuatro rutinas ([más abajo](#rutinas)).

**Qué puede hacer tu IA con tu cuenta**

- Mostrar tu plan, cuánto usaste de tus cupos del mes y si tenés Mercado Pago conectado.
- Listar tus ebooks y leer uno: el índice, el texto de un capítulo que le pidas, la portada y los textos de la página de venta.
- Contarte tus ventas (pesos y dólares por separado) y tus visitas, por período y por ebook.
- Validar una idea de ebook y escribir textos de anuncio para uno de tus ebooks (si tildás el permiso de "crear" al conectar).

**Qué no puede hacer**

- Publicar ni cambiar tu tienda ni tus ebooks.
- Tocar precios, cobros ni reembolsos.
- Borrar nada.
- Publicar anuncios en Meta ni en ningún otro lado: solo escribe el texto.
- Ver datos de tus compradores: nombres, mails ni nada de ellos.

#### Conectar tu cuenta

Detalle y ayuda oficial al día: https://empify.com.ar/conectar-ia

**Claude en 5 pasos.** Funciona en claude.ai y en la aplicación de escritorio. Los planes gratis permiten una conexión propia; Pro y superiores permiten varias.

1. Entrá a **Personalización** y abrí **Conectores**.
2. Tocá **Añadir** y elegí **Añadir conector personalizado**.
3. Escribí el nombre `Empify`, pegá la dirección `https://empify.com.ar/api/mcp` y tocá **Continuar**. Dejá la autenticación como viene (las opciones marcadas **Detectado**) y tocá **Añadir**.
4. Tocá **Conectar**. Se abre Empify: entrá con tu cuenta, mirá los permisos (por defecto, solo ver) y tocá **Aceptar y volver**. Si querés que además valide ideas y escriba textos de anuncio, tildá esa casilla antes.
5. Abrí una conversación nueva y probá con un pedido de los de abajo. La primera vez Claude puede pedirte permiso para usar cada herramienta: podés permitirla una vez o siempre.

Probado el 15 de noviembre de 2026 con Claude en español. Si tu Claude está en inglés, los menús son **Customize**, **Connectors**, **Add custom connector**, **Continue**, **Add** y **Connect**. En Team y Enterprise, la primera vez la agrega quien administra la cuenta. Agregarla desde el celular no está confirmado por Claude: hacelo desde la web o el escritorio, y después la usás también en la app.

**Claude Code.** Si instalaste el complemento, la conexión ya viene declarada: dentro de Claude Code escribí `/mcp`, elegí `empify` y seguí el navegador para entrar a tu cuenta. Sin el complemento:

```bash
claude mcp add --transport http empify https://empify.com.ar/api/mcp
```

**ChatGPT.** Agregar una conexión propia depende de tu plan y se hace desde la web (chatgpt.com), no desde el celular. Business, Enterprise y Edu: completo (en Business lo agrega una persona administradora). Pro: solo lectura; ves tus ebooks, ventas y visitas, pero no podés validar ideas ni armar textos de anuncio. Plus y gratis: puede variar o no estar disponible; la ayuda oficial de OpenAI no los confirma. Pasos: entrá a **Plugins** (chatgpt.com/plugins), tocá **+**, elegí **Add custom MCP server**, poné el nombre `Empify` y pegá `https://empify.com.ar/api/mcp`; en autenticación elegí **OAuth**, marcá que entendés y querés continuar, y elegí **Create as a plugin**. Revisá las herramientas, instalalo y entrá a Empify cuando te lo pida. En una conversación nueva, escribí `@` y elegí Empify. Si no ves **Add custom MCP server**, tu plan probablemente no la incluye. Sin probar de punta a punta.

**Cursor.** En `~/.cursor/mcp.json` (o `.cursor/mcp.json` dentro de un proyecto) agregá lo siguiente; Cursor abre el navegador para que entres a Empify. Sin probar.

```json
{ "mcpServers": { "empify": { "url": "https://empify.com.ar/api/mcp" } } }
```

**VS Code con GitHub Copilot.** En la paleta de comandos ejecutá **Chat: Open Customizations**, abrí **MCP Servers** y tocá **Add Server**. Elegí **HTTP**, pegá la dirección, ponele el nombre `empify`, aceptá la confianza del servidor y entrá a tu cuenta. Si tu organización limita los servidores permitidos, puede estar bloqueado. Sin probar.

**Gemini.** Hoy la aplicación de Gemini solo acepta conexiones personalizadas en Estados Unidos, en inglés y con una cuenta de Google personal, así que desde Argentina no hay un camino por ahí.

**Ocho pedidos para probar la conexión**

1. "¿Cuál de mis ebooks vendió más este mes?"
2. "¿De dónde vienen las visitas de mi tienda y cuántas terminan en compra?"
3. "Armame tres textos de anuncio para mi ebook de repostería."
4. "Validá esta idea: guía de huerta en balcón."
5. "¿Cuánto me queda de cupo este mes en mi plan?"
6. "Leé la página de venta de mi último ebook y decime qué mejorarías."
7. "Hacé el repaso semanal de mi cuenta."
8. "¿Qué ebooks míos todavía no tienen la tienda publicada?"

## Rutinas

Una rutina es un pedido que tu IA hace sola, en el día y la hora que elegís, y cuyo resultado queda guardado para que lo leas cuando quieras. Son cuatro textos para pegar, con una guía paso a paso en [`rutinas/LEEME.md`](rutinas/LEEME.md). Corren como tareas programadas de Claude, que piden un plan pago de Claude (Pro, Max, Ultra, Team o Enterprise).

| Archivo | Nombre | Qué hace | Cada cuánto | Plan de Empify |
|---|---|---|---|---|
| [`informe-semanal.md`](rutinas/informe-semanal.md) | La Decisión del Lunes | El informe de la semana con una decisión (es `/empify:semana`, pero sola) | Una vez por semana | Cualquiera |
| [`guardia-diaria.md`](rutinas/guardia-diaria.md) | El Sereno | Mira si hay tienda pausada o con falla, Mercado Pago sin conectar o cupo bajo (es `/empify:guardia`, pero sola) | Una vez por día | Cualquiera |
| [`tanda-de-anuncios.md`](rutinas/tanda-de-anuncios.md) | La Tanda | Un borrador de textos de anuncio para hasta tres ebooks (es `/empify:anuncios`, pero sola) | Cada 28 días | Emprendedor o superior |
| [`mantener-la-conexion.md`](rutinas/mantener-la-conexion.md) | (sin nombre propio) | Una lectura mínima para que la conexión no se corte | Una vez por semana | Cualquiera |

"El Sereno" es el vigilador nocturno de las cuadras argentinas.

- **Qué es:** una IA que lee tu cuenta y escribe texto. Ninguna rutina publica, cambia precios, crea ebooks, sube anuncios ni paga nada: los cambios los hacés vos en tu panel.
- **Dónde queda el resultado:** en la lista de tareas de tu IA. No te llega al celular ni al mail: tenés que entrar a mirarlo.
- **Por qué 28 días y no un mes:** Empify corta la conexión cuando pasan 30 días sin usarla, y un mes puede durar 31.
- **Un resguardo:** dejá prendida solo la conexión de Empify en la tarea. Lo explica `rutinas/LEEME.md`.
- **Sin probar:** que estas rutinas corran solas con la conexión de Empify, sin nadie delante. Corrélas a mano antes de dejarlas solas, como indica la guía. Para ChatGPT, Cursor y VS Code no está confirmado que una tarea programada use la conexión, así que no se ofrecen.

## Con las herramientas que ya usás

Si ya usás Canva, Gmail, Google Drive o el conector de anuncios de Meta, tu IA puede combinarlos con tu cuenta de Empify. Son cinco recetas posibles hoy: ninguna se probó en vivo, y todas dependen de que tengas esos conectores en tu IA. Cada conector es de su empresa, con sus propios planes y términos.

Regla común: pedí cada receta en una conversación, con vos mirando, y pedí de forma expresa que lleve datos de Empify a la otra herramienta, porque las habilidades no lo hacen por su cuenta. No las dejes en una tarea que corre sola con esas otras conexiones prendidas.

1. **Piezas de venta en Canva a partir de la ficha del ebook.** Tu IA lee con `ver_ebook` el título, la bajada, los beneficios y la portada, y arma en Canva tres diseños (publicación, historia y banner). Límite: las plantillas de marca y el autocompletado de Canva piden un plan Pro o superior; en el plan gratis se genera un diseño nuevo sin plantilla.
2. **Rendimiento de Meta cruzado con tus ventas de Empify.** Con el conector de anuncios de Meta en solo lectura, más `visitas_tienda` y `ventas`, tu IA arma una tabla por campaña con gasto, clics, visitantes y ventas cobradas, y el costo por venta real. Límite: el cruce solo funciona si el nombre de campaña del link coincide en los dos lados; las ventas sin origen quedan aparte. Ese conector también puede crear y editar anuncios: dejá esas acciones en "preguntar siempre" o bloqueadas. El origen de visitas y la versión completa de `visitas_tienda` son del plan Emprendedor en adelante.
3. **El informe semanal como borrador de mail.** Pedile `/empify:semana` y que deje el resultado como borrador en Gmail, sin enviarlo.
4. **Historial semanal en una planilla de Google Drive.** Pedile el informe y que agregue la fila de la semana a tu hoja de cálculo, con un comentario de qué cambió. Resuelve que la conexión de Empify no guarda historial.
5. **Revisión de tu página de venta con una guía de copy ajena.** Con `ver_ebook` (el texto de la página) y `visitas_tienda` (la conversión), más una guía como [`marketing-skills`](#recomendados-de-otros-autores), tu IA propone tres cambios en el titular, la garantía o los beneficios, con tu conversión actual como línea de base. Límite: esa guía es genérica y está en inglés; quitá todo lo que sea urgencia que no existe.

## Recomendados de otros autores

El catálogo de este repositorio, además de `empify`, lista complementos de otros autores. **No son de Empify ni los respalda su autor.** No hay nada copiado acá: cada uno se baja del repositorio de su autor, en una versión exacta que revisamos (fijada con un código de versión), y se rige por la licencia de su autor. Antes de instalar uno, leelo: pueden traer comandos y scripts. Revisamos manifiesto, licencia y ganchos declarados; no leímos todo su código.

Primero agregá el catálogo (una sola vez): `/plugin marketplace add empify-ar/empify-ia`.

| Complemento | Autor | Licencia | Para qué le sirve a quien vende un ebook | Instalar | Cuidado |
|---|---|---|---|---|---|
| `marketing-skills` | [coreyhaines31](https://github.com/coreyhaines31/marketingskills) | MIT | Textos de venta, optimización de una página que no convierte, secuencias de mails, lanzamientos | `/plugin install marketing-skills@empify` | En inglés y escrito para SaaS; trae habilidades que no aplican a un ebook |
| `claude-seo` | [AgriciDaniel](https://github.com/AgriciDaniel/claude-seo) | MIT | Revisar una página para buscadores y para que las IA puedan citarla | `/plugin install claude-seo@empify` | Trae scripts y un gancho que corre código en tu computadora; sirve si el ebook se vende en un dominio propio |
| `claude-ads` | [AgriciDaniel](https://github.com/AgriciDaniel/claude-ads) | MIT | Auditar tus anuncios, hacer cuentas de punto de equilibrio y diseñar pruebas | `/plugin install claude-ads@empify` | Puede proponer cambios en tu cuenta de anuncios: dejalo en solo lectura; en inglés |
| `resend` | [resend](https://github.com/resend/resend-skills) | MIT | Redactar y enviar mails con Resend | `/plugin install resend@empify` | Pide cuenta de Resend, dominio e inicio de sesión; Empify no te da la lista de compradores |

Otras dos clases de recomendación no pueden ir en el catálogo: un servidor de Google Analytics, que no es un complemento, y las conexiones oficiales de servicios como Canva, Meta, Buffer o Gmail, que no tienen un repositorio que se pueda fijar. Están en [`RECOMENDADOS.md`](RECOMENDADOS.md), con el motivo y cómo instalarlas.

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
- Una conexión sin uso durante 30 días se corta sola.

Comprobado contra https://empify.com.ar/conectar-ia el 24 de noviembre de 2026.

## Seguridad y privacidad

- **No le das tu contraseña a la IA.** Entrás a Empify con tu cuenta y aceptás permisos. Por defecto, la IA solo puede ver.
- **La IA ve solo lo tuyo:** tus ebooks (títulos, el texto de un capítulo si se lo pedís, la página de venta), tus totales de ventas y visitas, tu plan y tus cupos. Nunca los de otras personas, ni datos de tus compradores, ni claves.
- **Lo que lee lo procesa tu IA** con las reglas del servicio que elegiste. Conectá solo IAs en las que confiás.
- **Podés cortar la conexión cuando quieras:** desde tu cuenta en Empify, en **Conexiones con IA**, o quitando el conector en tu IA. Si ves conexiones repetidas, cortá las que no uses.
- **Un riesgo que Empify no puede cerrar desde acá:** si tu IA también está conectada a otras cosas (tu correo, la web, otros servicios), un texto escrito para engañarla podría hacer que mande a otro lado algo que leyó de Empify. Dejá activado que tu IA te pida permiso antes de usar herramientas y leé lo que te pide antes de aceptar.
- Todo lo que devuelve la conexión (títulos, capítulos, nombres de campaña) se trata como dato y no como instrucciones. Las habilidades de este repositorio refuerzan esa regla.
- Las doce habilidades abiertas no usan ninguna cuenta ni mandan nada a ningún lado.

## Qué se probó y qué no

Probado:

- La conexión a tu cuenta con Claude, en español (15 de noviembre de 2026).
- Que el complemento pasa `claude plugin validate` y que se instala desde una copia local junto con los cuatro recomendados (24 de noviembre de 2026).

Sin probar:

- El comando de instalación de dos pasos con el nombre de este repositorio en GitHub.
- Una conversación completa de cada habilidad y de cada comando con una cuenta real: están escritos y revisados, pero el ejemplo de la demostración usa datos de muestra.
- Las rutinas corriendo solas con la conexión de Empify.
- La subida de los `.zip` a claude.ai, y todo lo de Cursor, VS Code y ChatGPT (instalación y conexión).
- Las cinco recetas con otras herramientas.
- Cualquier uso con una IA que no sea Claude.

## Preguntas frecuentes

**¿Tiene costo extra?** No. La conexión no se cobra aparte. Validar una idea y armar textos de anuncio siguen las reglas de tu plan, como si lo hicieras desde Empify. Lo que cuesta tu IA (tu suscripción a Claude o a ChatGPT) es aparte.

**¿Por qué dice 12 y no 19?** Doce habilidades sirven sin cuenta. Las otras siete usan tu cuenta de Empify, y están en la parte 2.

**¿Necesito Empify para usar las doce?** No. Sirven para cualquier ebook, esté donde esté. Las que mencionan a Empify (sus comisiones, sus ofertas extra, su tienda) lo hacen en una sección aparte, "Con Empify", que es opcional.

**¿Funciona en el celular?** En Claude, una vez agregada la conexión desde la computadora, también la usás en la app. En ChatGPT la conexión se agrega solo desde la web.

**¿La IA puede publicar o cambiar mi tienda?** No. Puede leer y generar texto; lo demás lo hacés vos en tu panel.

**¿Qué datos de mis compradores ve?** Ninguno.

**No me aparece la pantalla de permisos.** Fijate que la dirección sea exactamente `https://empify.com.ar/api/mcp` y que hayas entrado a tu cuenta de Empify en ese navegador. Si sigue sin aparecer, quitá el conector y agregalo de nuevo, o corré `/empify:doctor`.

**¿Las habilidades mandan mis datos a algún lado?** No. Son archivos de texto con instrucciones; no ejecutan código ni hacen llamadas por su cuenta. Los complementos recomendados de otros autores sí pueden traer código: leé su ficha antes de instalarlos.

**¿Hacen vender?** No prometen ventas ni resultados. Te ayudan a ordenar el trabajo, a escribir mejor y a leer tus números con criterio.

**¿Dónde está la habilidad de Meta Ads?** Salió de este repositorio en la versión 2.0.0. Para armar anuncios con este kit usá `angulos-de-anuncio-por-fecha`, `imagenes-de-venta` y `textos-de-anuncio-para-ebooks`.

**¿Por qué no hay código del servidor?** Porque la conexión es remota, por dirección web. No hay nada que instalar ni ejecutar en tu computadora.

## Contenido del repositorio

```text
.claude-plugin/     plugin y catálogo (marketplace) para Claude Code
.mcp.json           conexión a Empify declarada para el plugin
.github/            plantillas para pedir una habilidad o avisar de un error
skills/             las 19 habilidades (una carpeta cada una)
commands/           los siete comandos
rutinas/            los cuatro textos de rutina y su guía
descargas/          un .zip por habilidad y uno con todas
otras-ia/           bloque de instrucciones para pegar en otras IA
scripts/            empaquetar.sh arma los .zip
RECOMENDADOS.md     recomendaciones que no entran al catálogo
CHANGELOG.md        qué cambió en cada versión
CONTRIBUTING.md     cómo aportar
SECURITY.md         cómo avisar de un problema de seguridad
LICENSE             MIT
```

Para regenerar los .zip después de cambiar una habilidad: `scripts/empaquetar.sh`.

## Cómo aportar

Podés pedir una habilidad nueva o avisar de un error desde [Issues](../../issues/new/choose). Si querés proponer un cambio, leé [`CONTRIBUTING.md`](CONTRIBUTING.md). Las reglas que todas las habilidades respetan: sin promesas de ventas ni de ingresos, sin datos inventados (testimonios, cifras, fechas, cupos) y sin urgencia falsa.

## Licencia, marca y contacto

Todo el repositorio está bajo licencia [MIT](LICENSE): podés usarlo, copiarlo, adaptarlo y compartirlo, dejando el aviso de copyright. El nombre y el logo de Empify no quedan cubiertos por la licencia. Los complementos de otros autores que se listan en el catálogo no están en este repositorio y tienen la licencia de cada autor.

Titular: Empify. Contacto: hola@empify.com.ar. Pasos al día y preguntas frecuentes: https://empify.com.ar/conectar-ia
