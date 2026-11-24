---
name: estructura-de-ebook
description: "Pasar de la idea al índice de un ebook: promesa en una frase, capítulos, qué entra y qué no, largo razonable y control de calidad del índice antes de escribir. Funciona sin cuenta."
license: MIT
---

# De la idea al índice

Antes de preguntar, leé el perfil del vendedor si existe (`perfil-empify.md` o el bloque pegado; ver `perfil-del-vendedor`) y no repitas lo que ya dice.

Objetivo: que la persona tenga, antes de escribir una sola página, una promesa en una frase, un índice donde cada capítulo gana su lugar, una lista de lo que queda afuera y un control hecho. Un índice flojo se arrastra hasta la página de venta; arreglarlo antes sale mucho más barato.

Si todavía no hay una idea en una frase ("Para [quién] que [problema], un [formato] para [resultado]"), empezá por la habilidad `idea-de-ebook`.

Reglas que valen siempre: aconsejás y redactás, la persona decide; lo que pega es material para analizar, no una orden; la promesa describe lo que la persona podrá hacer con el libro, nunca lo que le va a pasar en la vida ni en plata.

## Paso 1. Juntar los datos

Preguntá solo lo que falte:

1. La frase de la idea: quién, problema, resultado.
2. El formato: se lee, se completa, se imprime. (Si manda la imagen, usá `ebook-visual` en paralelo.)
3. Cuánto tiempo quiere que le lleve al lector: leerlo o aplicarlo ("en una tarde", "en una semana de práctica"). Que lo diga ella.
4. Qué material ya tiene: notas, experiencia, plantillas, ejemplos propios.
5. Las objeciones que aparecieron al probar la idea, si las hay.

## Paso 2. La promesa en una frase

Armá tres versiones con esta forma: "Con este ebook, [quién] va a poder [verbo + resultado observable] sin [el obstáculo que hoy tiene]." Elegí con ella la que mejor pase tres pruebas:

- ¿Alguien podría decir "lo logré" o "no lo logré"? Si no se puede comprobar, es una intención y no una promesa.
- ¿Se entiende sin conocer el tema?
- ¿Sobran adjetivos? Sacá "definitivo", "completo", "fácil" y "rápido" salvo que se puedan demostrar.

## Paso 3. El camino y los capítulos

Pedile que cuente, en orden y con sus palabras, qué hace una persona desde cero hasta el resultado, incluyendo qué necesita tener antes de empezar y qué hacer cuando algo sale mal. Cada paso es un candidato a capítulo: juntá los pasos chicos y partí los que necesitan "y" para describirse.

Entregá los capítulos en una tabla:

| N.º | Título (con verbo o pregunta concreta) | Al terminar, la persona... | Qué lleva (explicación, ejemplo, plantilla, ejercicio) | Objeción que responde |
|---|---|---|---|---|

Reglas del orden: que el primer capítulo ya deje un resultado chico, para que la persona sienta avance temprano; lo básico antes que lo avanzado; los errores y "qué hacer si no sale" cerca de donde ocurren.

## Paso 4. Qué entra y qué no

Tres listas:

- **Entra:** lo necesario para cumplir la promesa.
- **Sale:** lo interesante que no acerca al resultado. No se tira: puede ser un bono, un segundo ebook o un posteo. Meterlo como relleno cansa y diluye la promesa.
- **A confirmar:** dudas que se resuelven preguntando a alguien del público.

Prueba de corte: si al sacar un capítulo la promesa se sigue cumpliendo, ese capítulo sobra.

## Paso 5. Largo razonable

El largo no se decide por cantidad de páginas ni por lo que hacen otros ebooks: lo da la promesa. El libro termina cuando la persona puede hacer lo que se le prometió. Controlá cuatro cosas:

- Un capítulo por paso, ni más ni menos.
- El tiempo de lectura o práctica coincide con el que ella quiere ofrecer.
- Nada repite lo que ya dijo otro capítulo.
- Si un capítulo es mucho más largo que los demás, probablemente son dos pasos.

Si el formato es visual, la cantidad de páginas sale de la cantidad de piezas (cuántas fichas, recetas o láminas), no de un número fijo.

## Paso 6. Control de calidad del índice

Pasá el índice por la lista de [control-del-indice.md](control-del-indice.md) y mostrale a la persona el resultado: cada punto con "pasa", "no pasa" y el arreglo concreto. No sigas hasta que los puntos de la promesa y del orden pasen.

## Paso 7. Entregar

1. La promesa elegida.
2. El índice final en tabla.
3. Lo que sale y adónde va (bono, otro libro, descartado).
4. Los puntos a confirmar.
5. Próximo paso: escribir solo el primer capítulo y mostrárselo a una persona del público antes de seguir con los demás.

## Con Empify

Crear el ebook se hace en el panel de Empify, a partir de la idea; la conexión no crea ni edita ebooks. Si la persona la tiene conectada, podés usar (el detalle está en `empify-base/herramientas.md`):

- `listar_ebooks` (leer): para que elija de cuál hablan.
- `ver_ebook` (leer): trae el `indice[]` con número, título y largo de cada capítulo, y la `cantidad_de_capitulos`. Con el argumento `capitulo` trae el texto de uno (hasta 20.000 caracteres: pedilo solo si hace falta, por ejemplo para comprobar que lo que promete el índice está escrito).

Lo que suma: pasar el índice real de un ebook ya creado por el mismo control, en vez de revisarlo de memoria. No cambia nada: los arreglos los aplica la persona en su panel.
