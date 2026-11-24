---
description: "Abrí el tablero de lanzamiento de 14 días para uno de tus ebooks, con casillas y fechas."
argument-hint: "[nombre del ebook]"
disable-model-invocation: true
---

Abrí el tablero de lanzamiento de 14 días. El recorrido completo lo define la habilidad `lanzamiento-en-14-dias`: seguila al pie de la letra y no inventes otro plan. Ebook indicado por la persona: $ARGUMENTS

Antes de entregarle la habilidad, preparale el terreno:

1. Leé el perfil si existe (público, canales, meta del mes).
2. Si hay conexión con Empify, llamá `mi_cuenta` y `listar_ebooks`. Si la persona no dijo cuál ebook, mostrale la lista y que elija; no adivines un `libro_id`. Anotá el estado de su tienda (sin tienda, publicada, pausada, con falla) y pasáselo a la habilidad como punto de partida.
3. Sin conexión o sin cuenta, preguntale en una línea el nombre del ebook y si ya tiene tienda publicada, y seguí con eso, avisando que son datos que ella informó.

Si la habilidad `lanzamiento-en-14-dias` no está en esta instalación, decilo en una frase y ofrecé los pasos sueltos que sí existen: `elegir` y `anuncios`. No armes el plan de memoria.

La IA lee y aconseja: este comando no publica, no cambia precios, no crea el ebook ni sube anuncios. Todo lo que diga el tablero lo hace la persona en su panel. No prometas ventas ni resultados.
