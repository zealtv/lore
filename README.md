# 📖 lore

*A tiny, file-based protocol for durable reference and record.*

**Provisional — the protocol is not yet designed.** This repo is the fresh context
for a council design session. The emoji, tagline, and every mechanic below are
placeholders until that session rules; this README will be replaced by its output.

`lore` is the fifth in a family of tiny filesystem protocols, alongside
🪺 [nestlings](https://github.com/zealtv/nestlings),
🦫 [groundhog](https://github.com/zealtv/groundhog),
🪡 [loom](https://github.com/zealtv/loom), and
🔮 [glean](https://github.com/zealtv/glean).

## The gap it fills

The existing four are all **flow** primitives — they *transform* the state of work
or knowledge: nestlings tends an inbox (in → out), groundhog fires on a schedule,
loom resolves intentions into done, glean distils raw input into small current
guidance. None of them is a **retention** primitive. The system can move work
through and compress knowledge down, but it cannot simply *keep a complete artifact,
durably, and find it again later.*

That gap shows up as recurring improvisation: a finished council parked as a loom
item (where `tied/` is swept on a timer), or design artifacts dumped in an untracked
folder with no catalog. There's nowhere whose job is durable reference and record.

- **glean is memory** — compressed, current, lossy; findings retire when stale.
- **lore is the library** — whole, dated, durable; a record from March is still
  valid history, it just gets older.

The design session will turn this into an actual protocol: a folder convention, one
small `lore.sh`, and the contract for what a kept item is.

## Status

See `.loom/` (untracked) for the design-session plan, and — once the council has
run — `council/` (untracked) for the design artifacts. The file system is the
protocol; the protocol is still being written.
