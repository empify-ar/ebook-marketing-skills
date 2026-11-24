# 12 Claude skills to sell your ebook. They work with no account.

![12 habilidades de Claude para vender tu ebook](assets/portada.png)

From idea to launch: pick the idea, outline the book, write the sales page, set the price, plan the ads and the 14 launch days. If you also connect your [Empify](https://empify.com.ar) account, an Argentine platform for creating and selling ebooks, your AI reads your sales and visits and writes you the week's decision. You make the changes.

Open source (MIT) · in Spanish (Argentina) · no account needed to start · tested with Claude · [Español](README.md)

## Install

**Claude Code (terminal):**

```bash
claude plugin marketplace add empify-ar/ebook-marketing-skills && claude plugin install empify@empify
```

Then, inside Claude Code, type `/empify:empezar` (or `/empify:empezar sin cuenta` to start with no account).

**claude.ai (web and desktop):**

1. In Settings, Capabilities, turn on code execution and file creation (on newer screens: **Create and edit files**).
2. Download a `.zip` from the [latest release](https://github.com/empify-ar/ebook-marketing-skills/releases/latest). Start with [`idea-de-ebook.zip`](https://github.com/empify-ar/ebook-marketing-skills/releases/latest/download/idea-de-ebook.zip).
3. In **Customize**, open **Skills**, tap **+**, **+ Create skill** and **Upload a skill**.
4. Upload one `.zip` at a time.

More in [Install details](#install-details).

## What you want, what you type, what you get

| What you want | What you type | What you get | Needs an account? |
|---|---|---|---|
| Start and know where to go next | `/empify:empezar` ("start") | Your seller profile saved, the connection status in one line, and one recommended command | Not required (`/empify:empezar sin cuenta`) |
| Plan a launch | `/empify:lanzar` ("launch") | A 14-day board with dates and a keep, adjust or stop criterion | Not required |
| See how the week is going | `/empify:semana` ("week") | A one-screen report: five numbers against last week, one decision, a row for your spreadsheet | Yes |
| Find out if something broke | `/empify:guardia` ("watch") | A short check: store paused or failing, Mercado Pago not connected, low quota | Yes |
| Pick which ebook to advertise | `/empify:elegir` ("choose") | A table of up to five ebooks and one recommendation | Yes |
| Ad copy | `/empify:anuncios` ("ads") | At least three variants of hook, body and call to action | Yes; the tool starts at the Entrepreneur plan |
| Fix the connection | `/empify:doctor` | A one-line verdict and the steps to reconnect | Yes |

## How it looks

This is what the `/empify:semana` command ("week") returns:

```text
EXAMPLE WITH MADE-UP DATA, NOT A REAL ACCOUNT

Data read on Monday, November 23, 2026 from mi_cuenta, listar_ebooks, ventas and visitas_tienda.
Period: November 16 to 22, 2026.

Status: Entrepreneur plan, Mercado Pago connected, 2 stores published, none failing.

                        This week                Last week
Visitors                64                       51
Sales in pesos          2                        1
Sales in dollars        0                        0
Conversion (pesos)      no data (small sample)   no data
Main channel            Instagram (38 of 64)     Instagram (30 of 51)

Observation: visits and sales went up, but the numbers are small. Going from 1 to 2 sales is not
enough to say anything improved. What is visible: Instagram brings more than half the visits.

Decision for the week: post three times on Instagram with the store link and do not touch the
page. Check again on Monday the 30th, same period.

What I could not see: ad spend and results on Meta; this connection cannot see them.
```

More examples, one made-up case from idea to launch (idea, outline, price, sales page, ads and the 14-day plan), in Spanish: [`ejemplos/`](ejemplos/).

## What this is

[Empify](https://empify.com.ar) is an Argentine platform for creating ebooks with AI and selling them from your own store. The skills are written in Spanish, for sellers in Argentina and Latin America. If you read Spanish you can use them as they are; they are plain text files.

## Install details

**Claude Code.** The command above installs the skills, the seven commands and the declared connection. Inside Claude Code the same two steps are `/plugin marketplace add empify-ar/ebook-marketing-skills`, then `/plugin install empify@empify`.

**claude.ai.** [`descargas/`](descargas/) has one `.zip` per skill, plus `empify-habilidades-todas.zip` with all of them, which is for unzipping into a folder, not for uploading at once. On Team and Enterprise, an admin may have turned custom skills off. More detail, in Spanish: [docs/instalacion.md](docs/instalacion.md).

## The two parts

**Part 1: twelve skills that work with no account** (idea, structure, visual ebooks, sales page, price and offer, offer ladder, sales images, ad angles by date, 14-day launch, posts for social media, seller profile, next step). Plain text; nothing runs and nothing is sent anywhere. None promises sales or results.

**Part 2: what your Empify account adds.** Eight more skills (context, choosing an idea with the Radar, an idea check with simulated buyers, ad copy, reading sales and visits, sales page review, weekly routine, connection doctor), seven commands and four routines. Connecting is done at `https://empify.com.ar/api/mcp` ([steps, in Spanish](docs/conectar-tu-cuenta.md)); the free plan is enough to start, and some features need a paid plan ([limits by plan, in Spanish](docs/limites-por-plan.md)). The AI can read your ebooks, sales and visits and write text. It cannot publish, edit your store, touch prices or payments, delete anything, upload ads or see your buyers' data. Other AIs: we only tested with Claude; each vendor's steps are at https://empify.com.ar/conectar-ia.

`elegir-idea-con-el-radar` (choose an idea with the Radar) counts as an account skill even though it does not use the connection: the Radar of ideas lives inside your Empify account (free to create), and the AI cannot see it. You paste what you see and the skill helps you read it. The Radar counts ads, not sales.

**Routines** (scheduled tasks, need a paid Claude plan): `informe-semanal` ("Monday's Decision", weekly), `guardia-diaria` ("The Night Watch", daily), `tanda-de-anuncios` ("The Batch", every 28 days, Entrepreneur plan or above) and `mantener-la-conexion` (keeps the connection alive). The connection is cut after 30 days without use, which is why 28 days.

## Templates

They live inside each skill and are used from there, so they do not go out of date (all in Spanish): [five conversations](skills/idea-de-ebook/cinco-conversaciones.md), [outline check](skills/estructura-de-ebook/control-del-indice.md), [visual ebook template sheet](skills/ebook-visual/plantilla-de-pagina.md), [sales page checklist](skills/pagina-de-venta/lista-de-control.md), [per-sale math](skills/precio-y-oferta/cuenta-por-venta.md), [offer ladder copy](skills/escalera-de-ofertas/textos-modelo.md), [image prompts](skills/imagenes-de-venta/prompts-por-imagen.md), [dates calendar](skills/angulos-de-anuncio-por-fecha/calendario-de-fechas.md), [14-day sheet](skills/lanzamiento-en-14-dias/planilla-de-14-dias.md), [social post templates](skills/piezas-para-redes/plantillas.md), [seller profile](skills/perfil-del-vendedor/plantilla-del-perfil.md), [Radar comparison sheet](skills/elegir-idea-con-el-radar/planilla-del-radar.md), [weekly sheet](skills/rutina-semanal-del-vendedor/planilla-semanal.md), [sales and visits diagnosis](skills/lectura-de-ventas-y-visitas/diagnostico.md) and [store page checklist](skills/revision-de-pagina-de-venta/lista-de-chequeo.md).

## What was tested

Tested: the connection with Claude, in Spanish; the plugin passes the validator and installs together with the four recommended plugins. Not yet: the routines running on their own with the Empify connection, and uploading the `.zip` files to claude.ai.

## Recommended plugins by other authors

The catalog lists four plugins by other authors, pinned to an exact commit, each from its own repository and under its own license (all MIT). They are not by Empify and their authors do not endorse this repository: `marketing-skills` (coreyhaines31), `claude-seo` and `claude-ads` (AgriciDaniel) and `resend` (resend). See [`RECOMENDADOS.md`](RECOMENDADOS.md) (in Spanish) for the full table, how to install each one, what could not go in the catalog and why.

## More documentation (in Spanish)

[Install details](docs/instalacion.md) · [Connect your account](docs/conectar-tu-cuenta.md) · [Limits by plan](docs/limites-por-plan.md) · [Privacy and security](docs/privacidad-y-seguridad.md) · [FAQ](docs/preguntas-frecuentes.md) · [Repository contents](docs/contenido-del-repositorio.md) · [Routines guide](rutinas/LEEME.md) · [Changelog](CHANGELOG.md)

## License

MIT, see [LICENSE](LICENSE). The Empify name and logo are not covered by the license. Contact: hola@empify.com.ar.
