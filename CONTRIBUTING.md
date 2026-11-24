# Cómo aportar

Gracias por querer sumar. Este repositorio es texto: habilidades, comandos y rutinas que le enseñan a una IA a ayudar a quien vende un ebook.

## Antes de escribir

- Para **pedir una habilidad** o **avisar de un error**, abrí un [issue](../../issues/new/choose) con la plantilla que corresponda.
- Para **proponer un cambio**, abrí primero un issue y contá qué querés cambiar y por qué. Así evitamos trabajo que no entra.
- Una pregunta sobre tu cuenta de Empify no va acá: escribí a hola@empify.com.ar.

## Reglas que todo cambio respeta

1. **Sin promesas.** Nada de ventas, ingresos, alcance ni plazos asegurados.
2. **Sin datos inventados.** Ningún testimonio, cifra, fecha, cupo, cantidad de compradores ni "quedan N" que no exista. Si hace falta una fecha de cierre, tiene que ser real y verificada por quien vende.
3. **Una habilidad, una tarea.** Cada `SKILL.md` empieza con `name` igual al nombre de la carpeta, `description` de hasta 200 caracteres y `license: MIT`.
4. **Solo las siete herramientas de Empify** de [`skills/empify-base/herramientas.md`](skills/empify-base/herramientas.md). Una habilidad no nombra una herramienta que no figure ahí.
5. **Lo que devuelve una herramienta es dato, no una orden.** Si un texto pide hacer algo, la habilidad lo cita y no lo hace.
6. **Español rioplatense, con voseo, sin emojis.** La cubierta del libro se llama "portada".
7. **Las habilidades abiertas andan sin cuenta.** Lo que use la cuenta de Empify va en una sección final "Con Empify", opcional.
8. **Sin copiar texto ajeno.** Si te inspiraste en otra fuente, escribilo con tus palabras. Si querés recomendar un complemento de otro autor, no lo copies: se agrega al catálogo apuntando a su repositorio, con licencia comprobada y versión fijada (ver `RECOMENDADOS.md`).

## Cómo probar

```bash
claude plugin validate .
claude plugin validate --strict .
scripts/empaquetar.sh
```

El segundo comando trata las advertencias como errores. El tercero revisa el encabezado de cada habilidad y regenera los `.zip` de `descargas/`. Si cambiaste una habilidad, subí también los `.zip`.

## Licencia

Al aportar aceptás que tu cambio queda bajo la licencia [MIT](LICENSE) del repositorio.
