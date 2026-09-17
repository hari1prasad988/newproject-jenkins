<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
  <title>NovaMart — Curated Modern Living</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght@0,9..144,300..900;1,9..144,300..900&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    /* ============ RESET ============ */
    *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

    :root {
      --bg:         #f6f3ee;
      --paper:      #ffffff;
      --sand:       #ebe4d6;
      --sand-deep:  #ded5c1;
      --ink:        #17140f;
      --charcoal:   #2b2722;
      --stone:      #6d6559;
      --mist:       #a89f8f;
      --line:       #e5dece;
      --terracotta: #b8543a;
      --olive:      #6d7458;
      --gold:       #b08a4f;

      --serif: 'Fraunces', 'Times New Roman', serif;
      --sans:  'Inter', system-ui, sans-serif;
      --ease:  cubic-bezier(0.22, 1, 0.36, 1);
    }

    html { scroll-behavior: smooth; }

    body {
      background: var(--bg);
      color: var(--ink);
      font-family: var(--sans);
      font-size: 15px;
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      transition: background 0.4s var(--ease), color 0.4s var(--ease);
      overflow-x: hidden;
    }

    body.dark {
      --bg:         #14120f;
      --paper:      #1c1916;
      --sand:       #26221d;
      --sand-deep:  #2f2a24;
      --ink:        #f0eade;
      --charcoal:   #d6cfc0;
      --stone:      #a89f8f;
      --mist:       #7a7266;
      --line:       #2e2a24;
    }

    a { color: inherit; text-decoration: none; }
    button { font-family: inherit; cursor: pointer; border: none; background: none; color: inherit; }
    img { display: block; max-width: 100%; }

    ::selection { background: var(--terracotta); color: var(--paper); }

    ::-webkit-scrollbar { width: 10px; }
    ::-webkit-scrollbar-track { background: var(--bg); }
    ::-webkit-scrollbar-thumb { background: var(--sand-deep); border-radius: 10px; border: 2px solid var(--bg); }
    ::-webkit-scrollbar-thumb:hover { background: var(--mist); }

    /* ============ LAYOUT ============ */
    .wrap {
      width: 100%;
      max-width: 1400px;
      margin: 0 auto;
      padding: 0 clamp(1.25rem, 4vw, 3rem);
    }

    /* ============ ANNOUNCEMENT ============ */
    .announce {
      background: var(--ink);
      color: var(--bg);
      text-align: center;
      padding: 0.75rem 1rem;
      font-size: 0.68rem;
      letter-spacing: 0.24em;
      text-transform: uppercase;
      font-weight: 500;
    }
    .announce span { color: var(--gold); margin: 0 0.5rem; }

    /* ============ HEADER ============ */
    .header {
      position: sticky;
      top: 0;
      z-index: 500;
      background: color-mix(in srgb, var(--bg) 88%, transparent);
      backdrop-filter: saturate(180%) blur(20px);
      -webkit-backdrop-filter: saturate(180%) blur(20px);
      border-bottom: 1px solid var(--line);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 2rem;
      padding: 1.15rem 0;
    }

    .logo {
      font-family: var(--serif);
      font-size: clamp(1.4rem, 2.5vw, 1.7rem);
      font-weight: 500;
      letter-spacing: -0.01em;
      display: inline-flex;
      align-items: baseline;
      gap: 0.15rem;
      white-space: nowrap;
      font-variation-settings: "opsz" 144;
    }
    .logo em { font-style: italic; font-weight: 400; color: var(--terracotta); }

    .nav {
      display: flex;
      align-items: center;
      gap: 2.4rem;
      flex: 1;
      justify-content: center;
    }
    .nav a {
      font-size: 0.72rem;
      font-weight: 500;
      letter-spacing: 0.16em;
      text-transform: uppercase;
      color: var(--charcoal);
      position: relative;
      padding: 0.4rem 0;
      transition: color 0.3s var(--ease);
    }
    .nav a::after {
      content: '';
      position: absolute;
      inset: auto 0 0 0;
      height: 1px;
      background: var(--terracotta);
      transform: scaleX(0);
      transform-origin: right center;
      transition: transform 0.5s var(--ease);
    }
    .nav a:hover, .nav a.active { color: var(--terracotta); }
    .nav a:hover::after, .nav a.active::after { transform: scaleX(1); transform-origin: left center; }

    .search {
      flex: 1 1 240px;
      max-width: 340px;
      display: flex;
      align-items: center;
      gap: 0.7rem;
      background: var(--sand);
      border: 1px solid transparent;
      border-radius: 999px;
      padding: 0.35rem 0.4rem 0.35rem 1.2rem;
      transition: all 0.3s var(--ease);
    }
    .search:focus-within {
      background: var(--paper);
      border-color: var(--terracotta);
      box-shadow: 0 0 0 4px color-mix(in srgb, var(--terracotta) 12%, transparent);
    }
    .search i { color: var(--mist); font-size: 0.88rem; }
    .search input {
      flex: 1;
      border: none;
      outline: none;
      background: transparent;
      font-family: inherit;
      font-size: 0.88rem;
      color: var(--ink);
      padding: 0.55rem 0;
      min-width: 0;
    }
    .search input::placeholder { color: var(--mist); }
    .search .go {
      width: 34px;
      height: 34px;
      border-radius: 50%;
      background: var(--ink);
      color: var(--bg);
      display: grid;
      place-items: center;
      font-size: 0.78rem;
      transition: all 0.3s var(--ease);
      flex-shrink: 0;
    }
    .search .go:hover { background: var(--terracotta); transform: rotate(-8deg); }

    .tools { display: flex; align-items: center; gap: 0.15rem; }

    .tool {
      width: 42px;
      height: 42px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      color: var(--charcoal);
      font-size: 1rem;
      position: relative;
      transition: all 0.3s var(--ease);
    }
    .tool:hover { background: var(--sand); color: var(--terracotta); transform: translateY(-1px); }
    .tool .dot {
      position: absolute;
      top: 5px;
      right: 5px;
      min-width: 16px;
      height: 16px;
      padding: 0 4px;
      background: var(--terracotta);
      color: var(--paper);
      font-size: 0.58rem;
      font-weight: 700;
      border-radius: 999px;
      display: grid;
      place-items: center;
      border: 2px solid var(--bg);
    }
    .divider-v {
      width: 1px;
      height: 22px;
      background: var(--line);
      margin: 0 0.5rem;
    }

    /* ============ HERO ============ */
    .hero {
      padding: clamp(2.5rem, 6vw, 5rem) 0 clamp(3rem, 6vw, 5rem);
      display: grid;
      grid-template-columns: 1.05fr 1fr;
      gap: clamp(2rem, 5vw, 5rem);
      align-items: center;
    }

    .hero-content { max-width: 560px; }

    .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 0.85rem;
      font-size: 0.68rem;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      color: var(--terracotta);
      font-weight: 600;
      margin-bottom: 1.6rem;
    }
    .eyebrow::before {
      content: '';
      width: 42px;
      height: 1px;
      background: currentColor;
      opacity: 0.6;
    }

    .hero h1 {
      font-family: var(--serif);
      font-weight: 400;
      font-size: clamp(2.6rem, 6.2vw, 5rem);
      line-height: 0.98;
      letter-spacing: -0.03em;
      margin-bottom: 1.5rem;
      font-variation-settings: "opsz" 144;
    }
    .hero h1 em { font-style: italic; font-weight: 300; color: var(--terracotta); }

    .hero p {
      font-size: clamp(0.95rem, 1.2vw, 1.05rem);
      color: var(--stone);
      line-height: 1.75;
      font-weight: 300;
      max-width: 460px;
      margin-bottom: 2.4rem;
    }

    .hero-actions {
      display: flex;
      align-items: center;
      gap: 1.2rem;
      flex-wrap: wrap;
      margin-bottom: 3rem;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 0.85rem;
      padding: 1.05rem 2.1rem;
      font-size: 0.72rem;
      font-weight: 600;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      border: 1px solid transparent;
      transition: all 0.4s var(--ease);
      position: relative;
      overflow: hidden;
    }

    .btn-primary {
      background: var(--ink);
      color: var(--bg);
      border-color: var(--ink);
    }
    .btn-primary::after {
      content: '';
      position: absolute;
      inset: 0;
      background: var(--terracotta);
      transform: translateY(101%);
      transition: transform 0.45s var(--ease);
      z-index: 0;
    }
    .btn-primary:hover::after { transform: translateY(0); }
    .btn-primary:hover {
      border-color: var(--terracotta);
      transform: translateY(-2px);
      box-shadow: 0 16px 34px -16px color-mix(in srgb, var(--terracotta) 55%, transparent);
    }
    .btn-primary > * { position: relative; z-index: 1; }

    .btn-ghost {
      background: transparent;
      color: var(--ink);
      border-color: var(--charcoal);
    }
    .btn-ghost:hover {
      background: var(--ink);
      color: var(--bg);
      transform: translateY(-2px);
    }

    .hero-stats {
      display: flex;
      gap: 2.5rem;
      padding-top: 2rem;
      border-top: 1px solid var(--line);
      flex-wrap: wrap;
    }
    .stat strong {
      display: block;
      font-family: var(--serif);
      font-size: 1.65rem;
      font-weight: 500;
      letter-spacing: -0.02em;
      line-height: 1;
      margin-bottom: 0.35rem;
    }
    .stat span {
      font-size: 0.68rem;
      letter-spacing: 0.16em;
      text-transform: uppercase;
      color: var(--mist);
      font-weight: 500;
    }

    .hero-visual {
      position: relative;
      aspect-ratio: 5 / 6;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .hero-blob {
      position: absolute;
      inset: 0;
      background: linear-gradient(145deg, var(--sand) 0%, var(--sand-deep) 100%);
      border-radius: 62% 38% 46% 54% / 54% 46% 54% 46%;
      animation: morph 18s ease-in-out infinite;
    }
    @keyframes morph {
      0%, 100% { border-radius: 62% 38% 46% 54% / 54% 46% 54% 46%; }
      33%      { border-radius: 42% 58% 62% 38% / 46% 62% 38% 54%; }
      66%      { border-radius: 54% 46% 38% 62% / 38% 54% 62% 46%; }
    }

    .hero-icon-wrap {
      position: relative;
      z-index: 2;
      display: grid;
      place-items: center;
      width: 68%;
      aspect-ratio: 1;
      background: var(--paper);
      border-radius: 50%;
      box-shadow:
        0 40px 80px -30px color-mix(in srgb, var(--ink) 25%, transparent),
        inset 0 0 0 1px color-mix(in srgb, var(--ink) 4%, transparent);
    }
    .hero-icon-wrap i {
      font-size: clamp(4rem, 9vw, 6.5rem);
      color: var(--charcoal);
      filter: drop-shadow(0 20px 30px color-mix(in srgb, var(--ink) 18%, transparent));
    }

    .hero-chip {
      position: absolute;
      background: var(--paper);
      border-radius: 60px;
      padding: 0.8rem 1.35rem;
      display: flex;
      align-items: center;
      gap: 0.7rem;
      box-shadow: 0 24px 44px -20px color-mix(in srgb, var(--ink) 28%, transparent);
      z-index: 3;
      animation: float 6s ease-in-out infinite;
    }
    .hero-chip.top { top: 8%; left: -4%; }
    .hero-chip.bottom { bottom: 10%; right: -4%; animation-delay: -3s; }

    @keyframes float {
      0%, 100% { transform: translateY(0); }
      50%      { transform: translateY(-10px); }
    }

    .hero-chip i {
      width: 34px;
      height: 34px;
      display: grid;
      place-items: center;
      background: var(--sand);
      border-radius: 50%;
      color: var(--terracotta);
      font-size: 0.85rem;
      flex-shrink: 0;
    }
    .hero-chip strong {
      display: block;
      font-size: 0.72rem;
      font-weight: 600;
      line-height: 1.1;
    }
    .hero-chip small {
      font-size: 0.6rem;
      letter-spacing: 0.14em;
      text-transform: uppercase;
      color: var(--mist);
      font-weight: 500;
    }

    /* ============ LOGO STRIP ============ */
    .logostrip {
      background: var(--sand);
      border-top: 1px solid var(--line);
      border-bottom: 1px solid var(--line);
      padding: 1.5rem 0;
      overflow: hidden;
    }
    .logostrip-track {
      display: flex;
      gap: 4.5rem;
      width: max-content;
      animation: scroll 50s linear infinite;
    }
    .logostrip-track span {
      font-family: var(--serif);
      font-style: italic;
      font-size: 1.15rem;
      color: var(--charcoal);
      display: inline-flex;
      align-items: center;
      gap: 4.5rem;
      white-space: nowrap;
      opacity: 0.85;
    }
    .logostrip-track span::after {
      content: '◆';
      font-style: normal;
      font-size: 0.55rem;
      color: var(--terracotta);
      opacity: 0.7;
    }
    @keyframes scroll {
      from { transform: translateX(0); }
      to   { transform: translateX(-50%); }
    }

    /* ============ SECTION ============ */
    .section { padding: clamp(3.5rem, 8vw, 6rem) 0; }

    .section-head {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 2rem;
      flex-wrap: wrap;
      padding-bottom: 1.5rem;
      margin-bottom: 3rem;
      border-bottom: 1px solid var(--line);
    }
    .section-head h2 {
      font-family: var(--serif);
      font-weight: 400;
      font-size: clamp(1.9rem, 3.6vw, 2.9rem);
      letter-spacing: -0.025em;
      line-height: 1.05;
      font-variation-settings: "opsz" 144;
    }
    .section-head h2 em { font-style: italic; color: var(--terracotta); font-weight: 300; }

    .see-all {
      display: inline-flex;
      align-items: center;
      gap: 0.7rem;
      font-size: 0.7rem;
      font-weight: 600;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      padding-bottom: 0.35rem;
      border-bottom: 1px solid var(--ink);
      transition: all 0.35s var(--ease);
      white-space: nowrap;
    }
    .see-all:hover { color: var(--terracotta); border-color: var(--terracotta); gap: 1.2rem; }

    /* ============ CATEGORY GRID ============ */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 1rem;
    }

    .cat-card {
      position: relative;
      aspect-ratio: 1;
      background: var(--sand);
      border: 1px solid var(--line);
      border-radius: 3px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      gap: 0.8rem;
      padding: 1rem;
      cursor: pointer;
      transition: all 0.4s var(--ease);
      overflow: hidden;
    }
    .cat-card::before {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(180deg, transparent 40%, color-mix(in srgb, var(--terracotta) 10%, transparent) 100%);
      opacity: 0;
      transition: opacity 0.4s var(--ease);
    }
    .cat-card:hover {
      background: var(--paper);
      border-color: var(--terracotta);
      transform: translateY(-6px);
      box-shadow: 0 20px 40px -20px color-mix(in srgb, var(--ink) 20%, transparent);
    }
    .cat-card:hover::before { opacity: 1; }

    .cat-card i {
      font-size: 1.7rem;
      color: var(--terracotta);
      position: relative;
      z-index: 2;
      transition: transform 0.5s var(--ease);
    }
    .cat-card:hover i { transform: scale(1.15) rotate(-6deg); }
    .cat-card span {
      font-size: 0.66rem;
      font-weight: 600;
      letter-spacing: 0.12em;
      text-transform: uppercase;
      color: var(--charcoal);
      text-align: center;
      position: relative;
      z-index: 2;
      line-height: 1.3;
    }

    /* ============ FILTERS ============ */
    .filters {
      display: flex;
      gap: 0.55rem;
      flex-wrap: wrap;
      margin-bottom: 2.5rem;
    }
    .chip {
      padding: 0.6rem 1.35rem;
      border: 1px solid var(--line);
      border-radius: 999px;
      font-size: 0.7rem;
      font-weight: 500;
      letter-spacing: 0.14em;
      text-transform: uppercase;
      color: var(--stone);
      transition: all 0.35s var(--ease);
      white-space: nowrap;
    }
    .chip:hover { border-color: var(--ink); color: var(--ink); }
    .chip.active { background: var(--ink); border-color: var(--ink); color: var(--bg); }

    /* ============ PRODUCT GRID ============ */
    .grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: clamp(1.5rem, 2.5vw, 2.5rem) clamp(1rem, 1.8vw, 1.75rem);
    }

    .card {
      display: flex;
      flex-direction: column;
      position: relative;
      cursor: pointer;
    }

    .card-media {
      position: relative;
      aspect-ratio: 4 / 5;
      background: var(--sand);
      border-radius: 3px;
      overflow: hidden;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 1.35rem;
      transition: transform 0.6s var(--ease), box-shadow 0.6s var(--ease);
    }
    .card:hover .card-media {
      transform: translateY(-6px);
      box-shadow: 0 30px 50px -30px color-mix(in srgb, var(--ink) 30%, transparent);
    }
    .card-media::before {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at 50% 30%, rgba(255,255,255,0.7), transparent 65%);
      opacity: 0;
      transition: opacity 0.6s var(--ease);
      z-index: 1;
    }
    .card:hover .card-media::before { opacity: 1; }

    .card-media img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.7s var(--ease);
    }
    .card:hover .card-media img { transform: scale(1.06); }

    .tag {
      position: absolute;
      top: 0.9rem;
      left: 0.9rem;
      font-size: 0.6rem;
      font-weight: 700;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      padding: 0.4rem 0.8rem;
      background: var(--paper);
      color: var(--ink);
      z-index: 3;
      border-radius: 2px;
    }
    .tag.sale { background: var(--terracotta); color: var(--paper); }
    .tag.new  { background: var(--olive); color: var(--paper); }

    .fav {
      position: absolute;
      top: 0.9rem;
      right: 0.9rem;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: var(--paper);
      color: var(--ink);
      display: grid;
      place-items: center;
      font-size: 0.85rem;
      z-index: 3;
      opacity: 0;
      transform: translateY(-8px);
      transition: all 0.4s var(--ease);
      box-shadow: 0 10px 22px -10px color-mix(in srgb, var(--ink) 25%, transparent);
    }
    .card:hover .fav { opacity: 1; transform: translateY(0); }
    .fav:hover, .fav.active { background: var(--terracotta); color: var(--paper); }

    .quick-add {
      position: absolute;
      inset: auto 0 0 0;
      background: var(--ink);
      color: var(--bg);
      padding: 1rem;
      font-size: 0.68rem;
      font-weight: 600;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      z-index: 3;
      transform: translateY(101%);
      transition: transform 0.5s var(--ease), background 0.3s var(--ease);
    }
    .card:hover .quick-add { transform: translateY(0); }
    .quick-add:hover { background: var(--terracotta); }
    .quick-add.added { background: var(--olive); }

    .card-info { display: flex; flex-direction: column; gap: 0.25rem; }

    .card-cat {
      font-size: 0.62rem;
      letter-spacing: 0.22em;
      text-transform: uppercase;
      color: var(--mist);
      font-weight: 600;
    }

    .card-name {
      font-family: var(--serif);
      font-size: clamp(1.05rem, 1.4vw, 1.25rem);
      font-weight: 500;
      letter-spacing: -0.01em;
      line-height: 1.25;
      transition: color 0.3s var(--ease);
    }
    .card:hover .card-name { color: var(--terracotta); }

    .card-price {
      display: flex;
      align-items: baseline;
      gap: 0.65rem;
      margin-top: 0.4rem;
    }
    .price-now { font-size: 0.95rem; font-weight: 600; }
    .price-was { font-size: 0.82rem; color: var(--mist); text-decoration: line-through; }

    /* ============ DEAL ============ */
    .deal {
      background: var(--ink);
      color: var(--bg);
      display: grid;
      grid-template-columns: 1fr 1.05fr;
      overflow: hidden;
      border-radius: 3px;
      margin: clamp(2rem, 5vw, 4rem) 0;
    }

    .deal-visual {
      position: relative;
      min-height: 460px;
      overflow: hidden;
    }
    .deal-visual img {
      position: absolute;
      inset: 0;
      width: 100%;
      height: 100%;
      object-fit: cover;
      opacity: 0.85;
    }
    .deal-visual::after {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(135deg, color-mix(in srgb, var(--ink) 40%, transparent), transparent 60%);
    }

    .deal-badge {
      position: absolute;
      top: 1.5rem;
      left: 1.5rem;
      background: var(--terracotta);
      color: var(--paper);
      padding: 0.55rem 1.1rem;
      font-size: 0.65rem;
      font-weight: 700;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      z-index: 3;
      border-radius: 2px;
    }

    .deal-content {
      padding: clamp(2.5rem, 5vw, 4rem);
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content .eyebrow { color: var(--gold); }

    .deal-content h2 {
      font-family: var(--serif);
      font-weight: 400;
      font-size: clamp(1.9rem, 3.5vw, 2.7rem);
      line-height: 1.06;
      letter-spacing: -0.025em;
      margin-bottom: 1rem;
      color: var(--bg);
      font-variation-settings: "opsz" 144;
    }
    .deal-content h2 em { font-style: italic; color: var(--gold); font-weight: 300; }

    .deal-content p {
      color: #b8b0a1;
      line-height: 1.75;
      font-weight: 300;
      margin-bottom: 1.8rem;
      max-width: 420px;
    }

    .deal-price {
      display: flex;
      align-items: baseline;
      gap: 0.9rem;
      margin-bottom: 1.8rem;
    }
    .deal-price .now {
      font-family: var(--serif);
      font-size: 2.1rem;
      font-weight: 500;
      letter-spacing: -0.02em;
      color: var(--bg);
    }
    .deal-price .was {
      font-size: 1rem;
      color: var(--mist);
      text-decoration: line-through;
    }

    .timer {
      display: flex;
      gap: 0.7rem;
      margin-bottom: 2rem;
    }
    .timer-cell {
      background: color-mix(in srgb, var(--bg) 8%, transparent);
      border: 1px solid color-mix(in srgb, var(--bg) 15%, transparent);
      padding: 0.7rem 0.9rem;
      min-width: 62px;
      text-align: center;
      border-radius: 3px;
    }
    .timer-cell .n {
      display: block;
      font-family: var(--serif);
      font-size: 1.5rem;
      font-weight: 500;
      line-height: 1;
      color: var(--bg);
      margin-bottom: 0.25rem;
    }
    .timer-cell .l {
      font-size: 0.58rem;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      color: var(--mist);
      font-weight: 600;
    }

    .deal-content .btn-primary {
      background: var(--terracotta);
      border-color: var(--terracotta);
      color: var(--paper);
      align-self: flex-start;
    }
    .deal-content .btn-primary::after { background: var(--paper); }
    .deal-content .btn-primary:hover { color: var(--ink); border-color: var(--paper); }

    /* ============ TESTIMONIALS ============ */
    .testimonials-scroll {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 1.5rem;
    }

    .testimonial {
      background: var(--paper);
      border: 1px solid var(--line);
      border-radius: 3px;
      padding: 2rem;
      display: flex;
      flex-direction: column;
      gap: 1.2rem;
      position: relative;
      transition: all 0.4s var(--ease);
    }
    .testimonial:hover {
      border-color: var(--terracotta);
      transform: translateY(-4px);
      box-shadow: 0 20px 40px -20px color-mix(in srgb, var(--ink) 15%, transparent);
    }

    .testimonial .quote {
      font-family: var(--serif);
      font-style: italic;
      font-size: 1.05rem;
      line-height: 1.6;
      color: var(--charcoal);
      font-weight: 400;
      flex: 1;
    }

    .testimonial .stars {
      color: var(--gold);
      font-size: 0.85rem;
      letter-spacing: 0.15em;
    }

    .testimonial .author {
      display: flex;
      align-items: center;
      gap: 0.85rem;
      padding-top: 1.2rem;
      border-top: 1px solid var(--line);
    }
    .testimonial .author img {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
    }
    .testimonial .author strong {
      display: block;
      font-size: 0.85rem;
      font-weight: 600;
      color: var(--ink);
    }
    .testimonial .author small {
      font-size: 0.7rem;
      letter-spacing: 0.12em;
      text-transform: uppercase;
      color: var(--mist);
      font-weight: 500;
    }

    /* ============ NEWSLETTER ============ */
    .newsletter {
      background: var(--sand);
      border: 1px solid var(--line);
      padding: clamp(3rem, 6vw, 5rem) clamp(1.5rem, 5vw, 4rem);
      text-align: center;
      margin: clamp(3rem, 7vw, 5rem) 0;
      position: relative;
      overflow: hidden;
    }
    .newsletter::before {
      content: '◆';
      position: absolute;
      top: 2rem;
      left: 3rem;
      color: var(--terracotta);
      opacity: 0.15;
      font-size: 4rem;
    }
    .newsletter::after {
      content: '◆';
      position: absolute;
      bottom: 2rem;
      right: 3rem;
      color: var(--terracotta);
      opacity: 0.15;
      font-size: 4rem;
    }

    .newsletter-inner { max-width: 620px; margin: 0 auto; position: relative; z-index: 2; }

    .newsletter .eyebrow { justify-content: center; margin-bottom: 1rem; }

    .newsletter h2 {
      font-family: var(--serif);
      font-weight: 400;
      font-size: clamp(1.9rem, 3.6vw, 2.7rem);
      letter-spacing: -0.
