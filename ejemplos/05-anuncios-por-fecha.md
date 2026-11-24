EJEMPLO CON DATOS INVENTADOS · 24-nov-2026 · La persona, la marca, el ebook y los anuncios son inventados. Las fechas salen del calendario de la habilidad. No es un caso real ni una cuenta de Empify.

# 5. Anuncios por fecha, con `angulos-de-anuncio-por-fecha`

Habilidad: [`skills/angulos-de-anuncio-por-fecha`](../skills/angulos-de-anuncio-por-fecha/SKILL.md). Calendario usado: [calendario-de-fechas.md](../skills/angulos-de-anuncio-por-fecha/calendario-de-fechas.md). Viene de [04-pagina-de-venta.md](04-pagina-de-venta.md).

## Paso 1. Los datos

| Dato | Lo que contó |
|---|---|
| Qué trae el libro | 40 recetas por estación, planilla de cosecha, 5 formas de guardar, lista de compras de regalo (archivo 02) |
| Países, moneda y tono | Solo Argentina, en pesos, con voseo |
| Margen | Lanza el lunes 7 de diciembre de 2026 (archivo 06); los anuncios tienen que estar listos antes |
| Nombre de la página | Cosecha Chica |

## Paso 2. Las fechas

| Fecha | Día | Estado | ¿Entra? |
|---|---|---|---|
| Black Friday | viernes 27 de noviembre de 2026 | Calculada | No: el libro sale el 7 de diciembre |
| Navidad | viernes 25 de diciembre de 2026 | Fecha fija | Sí |
| Año nuevo | viernes 1 de enero de 2027 | Fecha fija | Sí |
| Reyes | miércoles 6 de enero de 2027 | Fecha fija | No: el libro no trae nada pensado para chicos |

## Paso 3. Los ángulos

| Fecha | Ángulo | Frase (una por ángulo) | Por qué cumple la condición |
|---|---|---|---|
| Navidad | Regalo | "Para regalarle a quien tiene macetas en el balcón: 40 recetas con lo que cosecha, estación por estación." | Se usa sola, después de abrirlo |
| Navidad | Pregunta de curiosidad | "¿Qué cocinás con tres tomates cherry y un puñado de albahaca? 40 recetas pensadas para cosechas chicas." | El libro responde esa pregunta (capítulos 4 y 7) |
| Año nuevo | Empezar algo nuevo | "Para empezar el año: una planilla de cosecha y 40 recetas por estación para cocinar con tu balcón." | El capítulo 1 es un primer paso claro: tres aderezos para hacer hoy |

Quedaron afuera "Rutina" (el libro no está organizado por días) y "Un rato sin pantalla" (no trae actividades).

## Paso 4. Las variantes de cada ángulo

Con presupuesto chico, dos o tres por ángulo. La frase, el botón y el destino son los mismos dentro de cada ángulo: lo único que cambia es la imagen.

| Ángulo | Variante | Imagen | Nombre del anuncio |
|---|---|---|---|
| Regalo | A | Libro 3D sobre fondo oscuro | `regalo-navidad26-libro3d-v1` |
| Regalo | B | Página de muestra a escala legible (la ensalada tibia) | `regalo-navidad26-muestra-v1` |
| Regalo | D | Balcón con macetas y una fuente servida, sin persona | `regalo-navidad26-escena-v1` |
| Curiosidad | A | Libro 3D sobre fondo oscuro | `curiosidad-navidad26-libro3d-v1` |
| Curiosidad | B | Página de muestra a escala legible | `curiosidad-navidad26-muestra-v1` |
| Empezar algo nuevo | A | Libro 3D sobre fondo oscuro | `empezar-enero27-libro3d-v1` |
| Empezar algo nuevo | B | La planilla de cosecha a escala legible | `empezar-enero27-planilla-v1` |
| Regalo | E | Pantalla de oferta con el precio de lanzamiento | `regalo-navidad26-oferta-v1`, solo hasta el domingo 13 de diciembre a las 23:59, cuando termina el precio de lanzamiento |

Las imágenes se piden con `imagenes-de-venta`. El patrón del nombre (ángulo, fecha, imagen, versión) va también en la etiqueta del link, para leer los resultados después.

## Paso 5. El nombre de la página

Eligió anunciar con el nombre de la marca, **Cosecha Chica**, el mismo de la portada y la tienda. Antes de usarlo, se busca en redes, en Mercado Libre y en un buscador, para que no se confunda con otra marca ni con una persona: en este ejemplo inventado no se buscó. La biografía de la página dice lo que es: "Recetas con lo que da una huerta en el balcón. Ebooks de Cosecha Chica." Sin títulos ni historia inventada. Las reglas de nombres de páginas de cada plataforma las revisa ella.

## Lo que entrega la habilidad

| Fecha | Ángulos | Variantes | Fecha de trabajo |
|---|---|---|---|
| Navidad, viernes 25-dic-2026 (fecha fija) | Regalo, pregunta de curiosidad | Regalo: A, B, D (y E hasta el 13-dic). Curiosidad: A, B | Armados el jueves 3-dic; cargados en pausa el domingo 6-dic; activos del lunes 7 al jueves 24-dic |
| Año nuevo, viernes 1-ene-2027 (fecha fija) | Empezar algo nuevo | A, B | Armados el viernes 18-dic; cargados el lunes 21-dic; activos del sábado 26-dic al domingo 10-ene |

La revisión de la plataforma puede demorar: por eso se cargan unos días antes. No cargué ni publiqué ningún anuncio: eso lo hace ella.

**Próximo paso:** el plan de 14 días, [06-lanzamiento-en-14-dias.md](06-lanzamiento-en-14-dias.md).
