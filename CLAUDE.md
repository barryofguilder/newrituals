# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
pnpm start          # Dev server at localhost:4200
pnpm build          # Production build
pnpm test           # Run all linters and tests concurrently
pnpm test:ember     # Run Ember/QUnit tests only
pnpm lint           # Run all linters
pnpm lint:fix       # Auto-fix all lint issues
pnpm lint:types     # TypeScript type check
pnpm format         # Prettier auto-format
```

To run tests in watch mode: `pnpm test:ember --server`

## Architecture

This is an Ember.js 6 (Octane) single-page app for the band New Rituals. All components use the GTS (Glimmer Template Syntax with TypeScript) format — `.gts` files mix TypeScript and template in a single file.

**Data flow**: `app/routes/application.ts` fetches `/public/shows.json` on load and passes the result as `@model` to `app/templates/application.gts`. That's the only route and the only data source. Shows are filtered in `shows.gts` to exclude anything more than 2 weeks in the past.

**Adding a show**: Edit `public/shows.json`. Each entry has `date` (yyyy-MM-dd), `city`, `venue`, and optional `with` (supporting acts) and `ticketLink`.

**Styling**: Tailwind CSS only — no custom CSS beyond the entry file. The site background color is `#0e1c29` and text is `#f2f2f2`; use these when Tailwind's named colors aren't precise enough.

**Static generation**: Prember prerenders the `/` route at build time for fast initial load.
