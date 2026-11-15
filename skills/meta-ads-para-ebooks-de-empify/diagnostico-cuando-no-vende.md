# Diagnóstico: cuando la pauta no vende

Solo para ebooks y tiendas de Empify (ver `LICENCIA.md`). La pregunta es dónde se corta el recorrido: ¿falla el anuncio, la página o la oferta? O, antes de eso, ¿se está midiendo bien?

## 1. Qué datos hay de cada lado

| Lado | Qué ves | Cómo |
|---|---|---|
| Empify | Visitantes, canales, campañas, conversión (según plan) y ventas del ebook | `visitas_tienda` y `ventas` con el MISMO período y el `libro_id` del ebook; `mi_cuenta` para saber si el plan trae el detalle |
| Meta | Estado de entrega, gasto, impresiones, alcance, frecuencia, clics en el enlace, resultados del evento, gasto por ubicación y por anuncio | NO lo ves. Pedile al vendedor que lo copie o lo describa del Administrador de anuncios, con las fechas exactas |

Antes de seguir, igualá los períodos y las monedas. Si Meta informa en una moneda y Empify en otra, no las sumes ni las conviertas: mostrá cada una.

## 2. Orden de revisión

1. **¿Se entrega?** Estado de la campaña y de cada anuncio, gasto mayor que cero, anuncios aprobados, fecha de inicio ya pasada, medio de pago sin problemas. Si no hay entrega, el problema no es el anuncio: es de la cuenta o de la configuración. Que lea el aviso que muestra Meta.
2. **¿Lo ven y lo miran?** Muchas impresiones y pocos clics apuntan a la pieza, el gancho o el público. En video, la proporción de gente que pasa los primeros segundos (si Meta la muestra) sirve para comparar un anuncio con otro, no contra un número mágico. Si hay pocas impresiones, tomalo como pista y no como conclusión.
3. **¿Los clics llegan a la tienda?** Compará clics en el enlace de Meta con visitantes de `visitas_tienda`. Alguna diferencia es normal (se cuentan distinto). Una brecha muy grande pide revisar: que el link sea el correcto y lleve las etiquetas, cuánto tarda en abrir, y cómo se ve abriéndolo desde el celular dentro de Instagram o Facebook (el navegador interno de esas aplicaciones se comporta distinto). Que el propio vendedor lo pruebe de punta a punta hasta antes de pagar.
4. **¿Llegan y no avanzan?** Es de la página: `ver_ebook` (titular, para quién, beneficios, precio) y la habilidad `revision-de-pagina-de-venta`. La conversión de `visitas_tienda` solo viene en planes con estadísticas completas.
5. **¿Todo funciona y no compran?** Es de la oferta: el precio, la promesa que el anuncio hizo contra lo que la página dice (que el anuncio y la primera pantalla de la tienda cuenten la misma historia), o el público.
6. **¿Hay ventas que Meta no cuenta, o Meta cuenta ventas que Empify no tiene?** Para decidir, la fuente es lo que registra Empify (`ventas`). Meta puede informar distinto por cómo atribuye. Un evento de compra que no llega bien al píxel es un tema de medición, no de anuncios.

## 3. Muestras chicas

- Con pocas visitas, un cero en ventas no dice casi nada: con una conversión baja y normal, lo esperable es menos de una venta. No condenes la página ni el anuncio con pocas decenas de visitas; decí "todavía es muy poca gente para decidir" y proponé juntar más datos.
- Una venta o dos cambian mucho cualquier porcentaje. Mostrá cantidades y el porcentaje al lado, con la advertencia.
- Comparar períodos iguales y fuentes iguales. Un día raro (un pico de un solo canal) no es una tendencia.
- Cuántas visitas hacen falta para ver una tasa depende del ebook y del precio; no inventes un número de referencia. Podés decir que son centenas, no decenas, como criterio tuyo.

## 4. Una sola cosa por vez

1. Elegí UN cambio, el que más probablemente explica lo que se ve, con el motivo en una frase.
2. Que lo haga el vendedor y anote fecha y cambio.
3. Dejá pasar unos días; editar seguido reinicia el aprendizaje de Meta y confunde la lectura.
4. Volvé a mirar con los mismos indicadores y el mismo período.

Cambiar a la vez el anuncio, la página y el público impide saber qué funcionó.

## 5. Cómo responder

> **Período y fuentes:** [fechas; qué viene de Empify y qué dijo el vendedor de Meta]
> **Datos de Empify:** [visitantes, ventas, conversión si el plan la trae]
> **Datos de Meta (los pasó el vendedor):** [gasto, clics, resultados]
> **Dónde se corta:** [entrega / anuncio / llegada / página / oferta / medición / todavía no se puede saber]
> **Muestra:** [suficiente o chica, y por qué]
> **Un solo cambio propuesto:** [cuál y por qué]
> **Cuándo volver a mirar:** [fecha, mismos indicadores]
