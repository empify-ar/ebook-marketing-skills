# Cambios

Formato: una versión por título, la más nueva arriba.

## 2.0.1 (24 de noviembre de 2026)

**Qué cambia**

- El repositorio pasa a llamarse `empify-ar/ebook-marketing-skills`. El comando de instalación es `claude plugin marketplace add empify-ar/ebook-marketing-skills && claude plugin install empify@empify`. El complemento y el catálogo siguen llamándose `empify`, y los comandos siguen siendo `/empify:`.
- Primera pantalla del README y de `README.en.md`: título con "Claude", Empify nombrado una sola vez, el comando de instalación a la vista con el paso siguiente (`/empify:empezar`), los pasos de claude.ai en una lista corta y la tabla de comandos antes del ejemplo. El ejemplo del informe semanal y los detalles de instalación pasan más abajo, sin cambios de contenido.
- `SECURITY.md` usa el nombre nuevo en el asunto del mail.
- Se borra del `.gitignore` una regla de trabajo interno que no hacía falta en el repositorio.

## 2.0.0 (24 de noviembre de 2026)

**Qué entra**

- Doce habilidades que andan sin cuenta de Empify: `idea-de-ebook`, `estructura-de-ebook`, `ebook-visual`, `pagina-de-venta`, `precio-y-oferta`, `escalera-de-ofertas`, `imagenes-de-venta`, `angulos-de-anuncio-por-fecha`, `lanzamiento-en-14-dias`, `piezas-para-redes`, `perfil-del-vendedor` y `proximo-paso`.
- Una habilidad nueva de apoyo que usa la conexión: `doctor-de-conexion`.
- Siete comandos: `empezar`, `semana`, `guardia`, `elegir`, `anuncios`, `lanzar` y `doctor`.
- Cuatro rutinas (tareas programadas de Claude, con una guía): `informe-semanal`, `guardia-diaria`, `tanda-de-anuncios` y `mantener-la-conexion`.
- Un catálogo de recomendados de otros autores, que apunta a sus repositorios en una versión exacta: `marketing-skills`, `claude-seo`, `claude-ads` y `resend`. Lo que no pudo entrar está en `RECOMENDADOS.md`.
- `README.en.md`, `CHANGELOG.md`, `CONTRIBUTING.md`, `SECURITY.md` y plantillas para pedir una habilidad o avisar de un error.
- Las habilidades que usan datos leen primero el perfil del vendedor, si existe.

**Qué sale**

- La habilidad de Meta Ads para ebooks y su `.zip`. Los anuncios de este kit quedan cubiertos por `angulos-de-anuncio-por-fecha`, `imagenes-de-venta` y `textos-de-anuncio-para-ebooks`.

**Qué cambia**

- Licencia: todo el repositorio pasa a MIT, con copyright de Empify, y el campo `license` de las habilidades y de los dos manifiestos dice `MIT`. El nombre y el logo de Empify no quedan cubiertos. La licencia propia de las versiones 1.1.0 a 1.3.0 deja de regir para esta versión; quien se llevó una copia de esas versiones conserva la licencia con la que se la publicó.
- El README se reescribe: doce habilidades que andan sin cuenta y siete que usan tu cuenta, instalación con Claude Code y con claude.ai, tabla de comandos, rutinas y qué se probó y qué no. Las recetas para combinar Empify con otras herramientas pasan a `RECOMENDADOS.md`.
- El perfil del vendedor suma el campo "Cómo firmo" (marca o nombre de autor), que leen `angulos-de-anuncio-por-fecha`, `piezas-para-redes` y `pagina-de-venta` en lugar de preguntarlo de nuevo.
- `escalera-de-ofertas` y `precio-y-oferta` usan una sola definición de "una sola vez": la tienda muestra la oferta una sola vez a cada comprador.
- Los `.zip` de `descargas/` se regeneran, uno por habilidad y uno con todas, cada uno con el `LICENSE` nuevo adentro.
- `ebook-visual` dice qué hace hoy Empify con un libro visual: se arma afuera, se sube como libro propio y se vende en la tienda.

## 1.3.0 (23 de noviembre de 2026)

Una sola licencia propia para todo el repositorio.

## 1.2.0 (15 de noviembre de 2026)

Las habilidades se ponen al día con los campos nuevos de las herramientas (período legible, pistas, estado del ebook, fecha de renovación de cupos y otros).

## 1.1.0 (15 de noviembre de 2026)

Suma una habilidad de Meta Ads para ebooks de Empify, con licencia propia.

## 1.0.0 (15 de noviembre de 2026)

Primera versión: complemento de Claude Code, seis habilidades para trabajar con tu cuenta, guía de conexión y un bloque para pegar en otras IA, con licencia MIT.
