# Countryside Auto Detailing — Website

## Overview
Single-page mobile-responsive HTML website for a luxury mobile auto detailing business serving Alpharetta, Buckhead, Johns Creek, Sandy Springs, Milton, Roswell, and all of Metro Atlanta.

## Domain
- **Live URL:** https://countrysidedetail.com
- **Phone:** (770) 286-6659
- **Email:** clean@countrysidedetail.com
- **Google Business Profile:** https://share.google/pKRyIuTthyEMsRUlI

## Tech Stack
- Pure HTML / CSS / JS — zero dependencies, no build step
- Inline CSS (single file, no external stylesheets except Google Fonts)
- Dark theme with red (#c41e2a) accent
- Fonts: Oswald (headings), Inter (body) — loaded from Google Fonts with `display=swap` + system-ui fallback
- Hosted as a static site

## Performance Optimizations
- **Fonts:** Preconnect to both `fonts.googleapis.com` and `fonts.gstatic.com`; `display=swap` + fallback stack (`system-ui, -apple-system`) for instant text rendering
- **CSS/JS:** All CSS inline (zero render-blocking external stylesheets); JS deferred to bottom of `<body>`
- **Images:** Every `<img>` has explicit `width`/`height` attributes to prevent Cumulative Layout Shift (CLS); below-fold images use `loading="lazy"`
- **Hero SVG:** Inline data URI (no extra HTTP request)
- **CLS:** `aspect-ratio` on gallery items and about image maintain space during load

## File Structure
```
/websiteCSAD/
  index.html              # Main site (single-page)
  images/
    logo.svg              # Logo (add when ready)
    gallery/              # Detail work photos (WebP + JPEG)
      full-detail-exterior.webp
      interior-shampoo.webp
      clay-bar-treatment.webp
      wheel-detailing.webp
      leather-conditioning.webp
      engine-bay.webp
    about/                # Team / about photos
      team-at-work.webp
  sitemap.xml             # SEO — search engine indexing
  robots.txt              # SEO — crawler rules
  CLAUDE.md               # This file
```

## Image Naming Convention
- Use hyphens, no underscores or spaces
- Descriptive + keyword where natural: `full-detail-porsche-911-alpharetta.webp`
- Format: WebP primary, JPEG fallback
- Store in `images/gallery/` for detail photos, `images/about/` for team photos
- Always fill `alt` attributes with keyword-rich descriptions

## SEO Strategy
- **Primary target:** "mobile auto detailing Alpharetta", "car detailing Atlanta"
- **Schema.org:** LocalBusiness JSON-LD in <head> covering all service areas, phone, email, rating
- **Gallery:** Each photo has descriptive alt text with keywords
- **Open Graph:** Twitter/Facebook preview configured
- **Canonical URL:** https://countrysidedetail.com/
- **Next priority:** Add real gallery photos with alt text, link Google Business Profile

## Git & Publishing Workflow
- **GitHub:** https://github.com/cptlolburgers/countrysideautodetailing
- **Branch:** `main` (primary branch)
- **Hosting:** Cloudflare Pages (auto-deploys from GitHub on every push to `main`)
- **Publish changes:** `git add -A && git commit -m "message" && git push`
- **Excluded from git:** `startclaudedeepseek.ps1` (local dev script, has API key via env var)
- **Secret safety:** Never hardcode API keys in committed files — GitHub push protection will reject it

## Brand Details
- **Business name:** Countryside Auto Detailing
- **Tagline:** "Atlanta's Premium Mobile Detail"
- **Founders:** Zane & Dustin
- **Colors:** Background #0a0a0a, Accent #c41e2a, Text #f0ede8
- **Prices:** Full Detail $250–300, Quick Wash & Vac $45–60, Vacuum or Wash $25–40
