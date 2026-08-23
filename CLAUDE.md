# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

Personal resume/CV sources written in [Typst](https://typst.app). Three .typ variants share the same layout and mostly the same content:

- `cv.typ` — the full master record (education, work, research, publications, awards) kept for the author's own recall. May lag behind the actively maintained work variants.
- `cv__work.typ` — one-page work resume for international companies (tighter: skills, experience, activities, awards only).
- `cv__work__long.typ` — longer work resume for domestic (China) positions: adds full research experience with project titles, publications, awards, and working-language skills.

Content updates usually land in `cv__work.typ` first, then are mirrored ("bumped") into `cv__work__long.typ`. Deliberate differences exist — e.g. the vLLM/LMCache bullet is active in the long version but commented out in the short one. Keep facts consistent across files when mirroring.

## Commands

All tooling (typst, typstyle, nixfmt, just) comes from `shell.nix`:

```sh
nix-shell --run 'just build'                    # compile every .typ to PDF
nix-shell --run 'just fmt'                      # typstyle + nixfmt; run after editing .typ files
nix-shell --run 'typst c cv__work.typ'          # compile a single file
nix-shell --run 'just clean'                    # remove generated PDFs
```

Notes:

- `nix develop` does not work here (no `flake.nix`) — use `nix-shell`. The first run downloads packages, which can be slow.
- Compiling requires the `Linux Biolinum O` font (used for headings).
- PDFs are gitignored; only .typ sources are committed.

## Conventions

- Commented-out (`//`) lines and sections are intentionally retained content (hidden items, older bullets, alternate phrasing), not dead code — keep them.
- The "Last Updated" footer renders `datetime.today()` at compile time; never hand-edit dates.
- Spell checking is configured in `cspell.json` (enabled for typst). Add new proper nouns and tech terms to its `words` list when they trip it.
- Commit style: conventional commits with lowercase prefix (`feat:`, `fix:`, `refactor:`) — see `git log` for examples.
