# Plantillas para el diagnóstico

## Resumen de una pantalla

> **Período:** últimos 30 días (del [fecha] al [fecha]).
> **Visitas:** [N] visitantes en [N] tiendas.
> **Ventas en pesos:** [N] (bruto [monto] ARS). **Ventas en dólares:** [N] (tu parte estimada [monto] USD). No se suman.
> **Conversión (solo pesos):** [X]% sobre [N] visitantes.
> **Muestra:** [suficiente / chica: por qué].
> **Lectura:** [tráfico / conversión / escala / todavía no se puede saber].
> **Tres acciones:** 1) ... 2) ... 3) ...
> **Cuándo volver a mirar:** [fecha] con ventas y visitas en el mismo período.

## Preguntas para completar un diagnóstico flojo

Si faltan datos, preguntá de a una:

- ¿Desde cuándo está publicada la tienda? (Una tienda de pocos días no tiene histórico.)
- ¿Estás pautando o solo publicás en redes? ¿Hace cuánto cambiaste la página de venta?
- ¿A qué link mandás: al de la tienda o a otro? ¿Usás un link distinto por red?
- ¿Cuánto cambió el precio en el período?

## Tabla de canales (para armar a mano)

| Canal | Visitantes | Ventas | Ventas por visitante | Muestra |
|---|---|---|---|---|
| | | | | chica / suficiente |

Dejá "Ventas por visitante" vacío si la muestra es chica.

## Señales de que mirar de nuevo no sirve todavía

- Menos de una semana de datos.
- Un solo canal con casi todas las visitas y pocas visitas en total.
- Cambios grandes de precio o de página a mitad del período.
- Ventas de un solo día que explican casi todo el período.

## Fórmulas simples (hacelas en el chat y mostrá la cuenta)

- Conversión = ventas / visitantes (la herramienta ya trae `conversion_pct`).
- Ventas por canal = ventas del canal / visitantes del canal.
- Variación = (período actual - período anterior) / período anterior. Solo con períodos iguales y muestra suficiente.
