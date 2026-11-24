# Recomendados que no entran al catálogo

El catálogo de este repositorio (`.claude-plugin/marketplace.json`) solo lista complementos de Claude Code que cumplen cuatro condiciones, comprobadas el 24 de noviembre de 2026: el repositorio existe, trae un archivo de licencia, tiene su propio manifiesto de complemento y se puede fijar a una versión exacta. Los cuatro que las cumplen (`marketing-skills`, `claude-seo`, `claude-ads` y `resend`) están en el [README](README.md#recomendados-de-otros-autores).

Esto es lo que se recomienda pero no pudo entrar, con el motivo. Ninguno es de Empify ni lo respalda su autor, y ninguno se probó desde acá.

## Servidor de Google Analytics

- **Autor y repositorio:** Google, [googleanalytics/google-analytics-mcp](https://github.com/googleanalytics/google-analytics-mcp).
- **Licencia:** Apache-2.0 (archivo `LICENSE` en la raíz, comprobado el 24-nov-2026).
- **Versión revisada:** `1076b11af612cb3246c93e8cc513215396df3b5e`.
- **Para qué sirve:** leer el tráfico de tu sitio en Google Analytics 4. Sirve si tu ebook se vende en un dominio propio y lo medís con GA4; la mayoría de las tiendas de Empify no lo usan.
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

Son servicios alojados por sus empresas: no tienen un repositorio que fijar ni una licencia de código, y se rigen por los términos de cada empresa. Se agregan como conector, igual que Empify (en Claude, **Personalización** y **Conectores**). Las direcciones responden pidiendo iniciar sesión (comprobado el 24-nov-2026); lo demás, incluidos los planes que lo permiten, se leyó en sus páginas oficiales y puede haber cambiado.

| Servicio | Dirección del conector | Para qué le sirve a quien vende un ebook | Cuidado |
|---|---|---|---|
| Canva | `https://mcp.canva.com/mcp` | Armar piezas de venta a partir de la ficha del ebook | Las plantillas de marca y el autocompletado piden un plan de Canva pago; en el plan gratis se generan diseños nuevos |
| Meta Ads (anuncios) | `https://mcp.facebook.com/ads` | Leer el rendimiento de tus campañas y cruzarlo con tus ventas de Empify | Puede crear y editar anuncios: dejalo en solo lectura. No se confirmó el costo ni si está habilitado para cuentas argentinas |
| Buffer | `https://mcp.buffer.com/mcp` | Dejar borradores de publicaciones en cola | No se confirmó si el plan gratis incluye el conector |
| Gmail, Google Calendar y Google Drive | Desde los conectores de Claude | Borradores de mail, eventos de lanzamiento, planilla de historial semanal | Cada uno pide tu permiso; Empify no manda datos a otro lado sin que lo pidas |

Las recetas que los combinan con Empify están en el [README](README.md#con-las-herramientas-que-ya-usás). Ninguna se probó en vivo.

## Qué no se recomienda

- El conector oficial de Mercado Pago (`https://mcp.mercadopago.com/mcp`) es para desarrolladores: documentación, credenciales y pruebas de integración. No lee tus ventas reales, así que no complementa a Empify.
- Los servidores de facturación con ARCA de la comunidad: tocan certificados fiscales y duplican lo que Empify ya hace con la Factura C de las ventas de tu tienda cobradas con Mercado Pago en pesos (para monotributistas).

## Si ves un error

Si algo de esta lista quedó viejo, avisá desde [Issues](../../issues/new/choose).
