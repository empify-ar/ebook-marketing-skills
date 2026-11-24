> **Español:** this is the English summary. The full README, in Spanish (Argentina), is [README.md](README.md).

# 12 skills to sell your ebook with AI. They work with no account.

**And if you connect your Empify account, your AI reviews your store every week and writes you the decision. You make the changes.**

Open source (MIT) · in Spanish (Argentina) · no account needed to start · tested with Claude · the routines need your Empify account and a paid Claude plan

[Empify](https://empify.com.ar) is an Argentine platform for creating ebooks with AI and selling them from your own store. The skills are written in Spanish, for sellers in Argentina and Latin America. If you read Spanish you can use them as they are; any AI that reads plain text can load them.

## Demo

**Short video: still to be recorded.** It will show, in about 20 seconds, how to ask for the weekly report and what comes back.

**Example with sample data** (the ebook and the numbers are made up to show the format; this is not a real account). This is what the `/empify:semana` command ("week") returns:

```text
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

## Install (copy and paste)

Items marked "untested" have not been run.

- **Claude Code (terminal):** `claude plugin marketplace add empify-ar/empify-ia && claude plugin install empify@empify`. Inside Claude Code: `/plugin marketplace add empify-ar/empify-ia`, then `/plugin install empify@empify`. Tested on November 24, 2026 against a local copy of the repository; the same command with the GitHub name has not been run yet.
- **claude.ai (web and desktop):** download the `.zip` files from [`descargas/`](descargas/) (one per skill, plus `empify-habilidades-todas.zip` with all of them, which is for unzipping into a folder, not for uploading at once). In Customize, open Skills, tap +, then Create skill, then Upload a skill. Code execution and file creation must be on. Steps follow Claude's help page of November 24, 2026; uploading these particular files is untested.
- **Cursor:** unzip `empify-habilidades-todas.zip` into `~/.cursor/skills/`. Untested.
- **ChatGPT and other AIs:** paste the block in [`otras-ia/instrucciones-empify.md`](otras-ia/instrucciones-empify.md), or the text of a `SKILL.md`. Untested.

## What you want, what you type, what you get

| What you want | What you type | What you get | Empify account |
|---|---|---|---|
| Start and know where to go next | `/empify:empezar` ("start") | Your seller profile saved, the connection status in one line, and one recommended command | Not required (`/empify:empezar sin cuenta`) |
| Plan a launch | `/empify:lanzar` ("launch") | A 14-day board with dates and a keep, adjust or stop criterion | Not required |
| See how the week is going | `/empify:semana` ("week") | A one-screen report: five numbers against last week, one decision, a row for your spreadsheet | Yes |
| Find out if something broke | `/empify:guardia` ("watch") | A short check: store paused or failing, Mercado Pago not connected, low quota | Yes |
| Pick which ebook to advertise | `/empify:elegir` ("choose") | A table of up to five ebooks and one recommendation | Yes |
| Ad copy | `/empify:anuncios` ("ads") | At least three variants of hook, body and call to action | Yes; Empify's tool starts at the Entrepreneur plan |
| Fix the connection | `/empify:doctor` | A one-line verdict and the steps to reconnect | Yes |

## The two parts

**Part 1: twelve skills that work with no account** (idea, structure, visual ebooks, sales page, price and offer, offer ladder, sales images, ad angles by date, 14-day launch, posts for social media, seller profile, next step). Plain text; nothing runs and nothing is sent anywhere. None promises sales or results.

**Part 2: what your Empify account adds.** Seven more skills (context, idea validation with simulated buyers, ad copy, reading sales and visits, sales page review, weekly routine, connection doctor), seven commands and four routines. Connecting is done at `https://empify.com.ar/api/mcp`; the free plan is enough to start, and some features need a paid plan (see the table in the Spanish README). The AI can read your ebooks, sales and visits and write text. It cannot publish, edit your store, touch prices or payments, delete anything, upload ads or see your buyers' data.

**Routines** (scheduled tasks, need a paid Claude plan; untested running unattended): `informe-semanal` ("Monday's Decision", weekly), `guardia-diaria` ("The Night Watch", daily), `tanda-de-anuncios` ("The Batch", every 28 days, Entrepreneur plan or above) and `mantener-la-conexion` (keeps the connection alive). The connection is cut after 30 days without use, which is why 28 days.

## Recommended plugins by other authors

The catalog lists four plugins by other authors, pinned to an exact commit, each from its own repository and under its own license (all MIT). They are not by Empify and their authors do not endorse this repository: `marketing-skills` (coreyhaines31), `claude-seo` and `claude-ads` (AgriciDaniel) and `resend` (resend). See [`RECOMENDADOS.md`](RECOMENDADOS.md) for what could not go in the catalog and why.

## License

MIT, see [LICENSE](LICENSE). The Empify name and logo are not covered by the license. Contact: hola@empify.com.ar.
