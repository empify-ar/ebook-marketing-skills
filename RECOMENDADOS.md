# Recomendados que no entran al catálogo

El catálogo de este repositorio (`.claude-plugin/marketplace.json`) solo lista complementos de Claude Code que cumplen cuatro condiciones, al 24 de noviembre de 2026: el repositorio existe, trae un archivo de licencia, tiene su propio manifiesto de complemento y se puede fijar a una versión exacta. Los cuatro que las cumplen (`marketing-skills`, `claude-seo`, `claude-ads` y `resend`) están en el [README](README.md#recomendados-de-otros-autores).

Esto es lo que se recomienda pero no pudo entrar, con el motivo. Ninguno es de Empify ni lo respalda su autor, y ninguno se probó desde acá.

## Servidor de Google Analytics

- **Autor y repositorio:** Google, [googleanalytics/google-analytics-mcp](https://github.com/googleanalytics/google-analytics-mcp).
- **Licencia:** Apache-2.0 (archivo `LICENSE` en la raíz, al 24-nov-2026).
- **Versión revisada:** `1076b11af612cb3246c93e8cc513215396df3b5e`.
- **Para qué sirve:** leer el tráfico de tu sitio en Google Analytics 4. Sirve si tu ebook se vende en un dominio propio y lo medís con GA4.
- **Por qué no está en el catálogo:** no es un complemento de Claude Code. El repositorio no tiene `.claude-plugin`: es un servidor MCP que se instala con `pipx`, así que no hay manifiesto para listar ni forma de fijarlo en el catálogo.
- **Cómo se instala** (según su README; hace falta `pipx` y credenciales de Google Cloud con acceso a tu propiedad de Analytics, que se configuran como explica ese README):

```bash
claude mcp add analytics-mcp \
  --scope user \
  -e "GOOGLE_APPLICATION_CREDENTIALS=RUTA_A_TUS_CREDENCIALES_JSON" \
  -e "GOOGLE_CLOUD_PROJECT=ID_DE_TU_PROYECTO" \
  -- pipx run analytics-mcp
```

- **Cuidado:** `pipx run` baja la versión que esté publicada en ese momento, no una fijada. Leé el README de su autor antes de dar acceso a tus datos.

## Conexiones oficiales de otros servicios

Son servicios alojados por sus empresas: no tienen un repositorio que fijar ni una licencia de código, y se rigen por los términos de cada empresa. Se agregan como conector, igual que Empify (en Claude, **Personalización** y **Conectores**). Las direcciones responden pidiendo iniciar sesión (al 24-nov-2026); lo demás, incluidos los planes que lo permiten, se leyó en sus páginas oficiales y puede haber cambiado.

| Servicio | Dirección del conector | Para qué le sirve a quien vende un ebook | Cuidado |
|---|---|---|---|
| Canva | `https://mcp.canva.com/mcp` | Armar piezas de venta a partir de la ficha del ebook | Las plantillas de marca y el autocompletado pueden pedir un plan de pago de Canva (confirmalo en su ayuda) |
| Meta (anuncios) | `https://mcp.facebook.com/ads` | Leer el rendimiento de tus campañas y cruzarlo con tus ventas de Empify | Puede crear y editar anuncios: dejalo en solo lectura. No se confirmó el costo ni si está habilitado para cuentas argentinas |
| Buffer | `https://mcp.buffer.com/mcp` | Dejar borradores de publicaciones en cola | No se confirmó si el plan gratis incluye el conector |
| Gmail, Google Calendar y Google Drive | Desde los conectores de Claude | Borradores de mail, eventos de lanzamiento, planilla de historial semanal | Cada uno pide tu permiso; Empify no manda datos a otro lado sin que lo pidas |

Las recetas que los combinan con Empify están más abajo, en [Recetas para combinar](#recetas-para-combinar).

## Recetas para combinar

Son ideas de uso; todavía no las corrimos de punta a punta. Todas dependen de que tengas esos conectores en tu IA, y cada conector es de su empresa, con sus propios planes y términos.

Regla común: pedí cada receta en una conversación, con vos mirando, y pedí de forma expresa que lleve datos de Empify a la otra herramienta, porque las habilidades no lo hacen por su cuenta. No las dejes en una tarea que corre sola con esas otras conexiones prendidas.

1. **Piezas de venta en Canva a partir de la ficha del ebook.** Tu IA lee con `ver_ebook` el título, la bajada, los beneficios y la portada, y arma en Canva tres diseños (publicación, historia y banner). Límite: las plantillas de marca y el autocompletado pueden pedir un plan de pago de Canva (confirmalo en su ayuda); sin eso se genera un diseño nuevo sin plantilla.
2. **Rendimiento de Meta cruzado con tus ventas de Empify.** Con el conector de anuncios de Meta en solo lectura, más `visitas_tienda` y `ventas`, tu IA arma una tabla por campaña con gasto, clics, visitantes y ventas cobradas, y el costo por venta real. Límite: el cruce solo funciona si el nombre de campaña del link coincide en los dos lados; las ventas sin origen quedan aparte. Ese conector también puede crear y editar anuncios: dejá esas acciones en "preguntar siempre" o bloqueadas. El origen de visitas y la versión completa de `visitas_tienda` son del plan Emprendedor en adelante.
3. **El informe semanal como borrador de mail.** Pedile `/empify:semana` y que deje el resultado como borrador en Gmail, sin enviarlo.
4. **Historial semanal en una planilla de Google Drive.** Pedile el informe y que agregue la fila de la semana a tu hoja de cálculo, con un comentario de qué cambió. Resuelve que la conexión de Empify no guarda historial.
5. **Revisión de tu página de venta con una guía de copy ajena.** Con `ver_ebook` (el texto de la página) y `visitas_tienda` (la conversión), más una guía como [`marketing-skills`](README.md#recomendados-de-otros-autores), tu IA propone tres cambios en el titular, la garantía o los beneficios, con tu conversión actual como línea de base. Límite: esa guía es genérica y está en inglés; quitá todo lo que sea urgencia que no existe.

## Qué no se recomienda

- El conector oficial de Mercado Pago (`https://mcp.mercadopago.com/mcp`) es para desarrolladores: documentación, credenciales y pruebas de integración. No lee tus ventas reales, así que no complementa a Empify.
- Los servidores de facturación con ARCA de la comunidad: tocan certificados fiscales y duplican lo que Empify ya hace con la Factura C de las ventas de tu tienda cobradas con Mercado Pago en pesos (para monotributistas).

## Si ves un error

Si algo de esta lista quedó viejo, avisá desde [Issues](../../issues/new/choose).
