<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Aurelia — Modern Essentials</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght@0,9..144,300..900;1,9..144,300..900&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    /* ============ RESET & TOKENS ============ */
    *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

    :root {
      /* Palette */
      --bg:          #f7f4ee;
      --paper:       #ffffff;
      --sand:        #ede7db;
      --sand-deep:   #e3dccd;
      --ink:         #171410;
      --charcoal:    #2f2b26;
      --stone:       #6f6659;
      --mist:        #a39a8b;
      --line:        #e4ddcf;
      --line-soft:   #efe9dd;
      --terracotta:  #b8543a;
      --terracotta-2:#93412b;
      --olive:       #6d7458;
      --gold:        #b08a4f;

      /* Type */
      --serif: 'Fraunces', 'Times New Roman', serif;
      --sans:  'Inter', system-ui, -apple-system, sans-serif;

      /* Motion */
      --ease: cubic-bezier(0.22, 1, 0.36, 1);
    }

    html { scroll-behavior: smooth; -webkit-text-size-adjust: 100%; }

    body {
      background: var(--bg);
      color: var(--ink);
      font-family: var(--sans);
      font-size: 15px;
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      overflow-x: hidden;
    }

    img, svg { display: block; max-width: 100%; }
    a { color: inherit; text-decoration: none; }
    button { font-family: inherit; cursor: pointer; border: none; background: none; }
    ul { list-style: none; }

    ::selection { background: var(--terracotta); color: var(--paper); }

    /* Custom scrollbar */
    ::-webkit-scrollbar { width: 10px; height: 10px; }
    ::-webkit-scrollbar-track { background: var(--bg); }
    ::-webkit-scrollbar-thumb { background: var(--sand-deep); border-radius: 10px; border: 2px solid var(--bg); }
    ::-webkit-scrollbar-thumb:hover { background: var(--mist); }

    /* ============ LAYOUT HELPERS ============ */
    .wrap {
      width: 100%;
      max-width: 1480px;
      margin: 0 auto;
      padding: 0 clamp(1.25rem, 4vw, 3rem);
    }

    /* ============ ANNOUNCEMENT ============ */
    .announce {
      background: var(--ink);
      color: var(--sand);
      text-align: center;
      padding: 0.7rem 1rem;
      font-size: 0.68rem;
      letter-spacing: 0.24em;
      text-transform: uppercase;
      font-weight: 500;
      overflow: hidden;
      position: relative;
    }
    .announce span { color: var(--gold); margin: 0 0.5rem; }

    /* ============ HEADER ============ */
    .header {
      position: sticky;
      top: 0;
      z-index: 500;
      background: rgba(247, 244, 238, 0.88);
      backdrop-filter: saturate(180%) blur(20px);
      -webkit-backdrop-filter: saturate(180%) blur(20px);
      border-bottom: 1px solid var(--line);
      transition: background 0.3s var(--ease);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 2rem;
      padding: 1.15rem 0;
    }

    /* Logo */
    .logo {
      font-family: var(--serif);
      font-size: clamp(1.4rem, 2.5vw, 1.7rem);
      font-weight: 500;
      letter-spacing: -0.01em;
      display: inline-flex;
      align-items: baseline;
      gap: 0.1rem;
      white-space: nowrap;
      font-variation-settings: "opsz" 144;
    }
    .logo em { font-style: italic; font-weight: 400; color: var(--terracotta); }

    /* Nav */
    .nav {
      display: flex;
      align-items: center;
      gap: 2.4rem;
      flex: 1;
      justify-content: center;
    }
    .nav a {
      font-size: 0.74rem;
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
    .nav a:hover { color: var(--terracotta); }
    .nav a:hover::after { transform: scaleX(1); transform-origin: left center; }

    /* Header tools */
    .tools { display: flex; align-items: center; gap: 0.15rem; }
    .tool {
      width: 42px; height: 42px;
      display: grid; place-items: center;
      border-radius: 50%;
      color: var(--charcoal);
      font-size: 1rem;
      position: relative;
      transition: background 0.3s var(--ease), color 0.3s var(--ease), transform 0.3s var(--ease);
    }
    .tool:hover { background: var(--sand); color: var(--terracotta); transform: translateY(-1px); }
    .tool .dot {
      position: absolute;
      top: 6px; right: 6px;
      min-width: 15px; height: 15px;
      padding: 0 4px;
      background: var(--terracotta);
      color: var(--paper);
      font-size: 0.55rem;
      font-weight: 700;
      border-radius: 999px;
      display: grid; place-items: center;
      border: 2px solid var(--bg);
      letter-spacing: 0;
    }
    .divider {
      width: 1px; height: 22px;
      background: var(--line);
      margin: 0 0.5rem;
    }

    /* Hamburger */
    .hamburger { display: none; }

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
      width: 42px; height: 1px;
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
    .hero h1 em {
      font-style: italic;
      font-weight: 300;
      color: var(--terracotta);
    }

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
      color: var(--sand);
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
    .btn-primary:hover { border-color: var(--terracotta); transform: translateY(-2px); box-shadow: 0 16px 34px -16px rgba(184, 84, 58, 0.55); }
    .btn-primary > * { position: relative; z-index: 1; }

    .btn-ghost {
      background: transparent;
      color: var(--ink);
      border-color: var(--charcoal);
    }
    .btn-ghost:hover {
      background: var(--ink);
      color: var(--sand);
      transform: translateY(-2px);
    }

    /* Hero stats */
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
      color: var(--ink);
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

    /* Hero visual */
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
        0 40px 80px -30px rgba(23, 20, 16, 0.25),
        inset 0 0 0 1px rgba(23, 20, 16, 0.04);
    }
    .hero-icon-wrap i {
      font-size: clamp(4rem, 9vw, 6.5rem);
      color: var(--charcoal);
      filter: drop-shadow(0 20px 30px rgba(23, 20, 16, 0.18));
    }

    .hero-chip {
      position: absolute;
      background: var(--paper);
      border-radius: 60px;
      padding: 0.8rem 1.35rem;
      display: flex;
      align-items: center;
      gap: 0.7rem;
      box-shadow: 0 24px 44px -20px rgba(23, 20, 16, 0.28);
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
      width: 34px; height: 34px;
      display: grid; place-items: center;
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
      color: var(--ink);
      line-height: 1.1;
      letter-spacing: 0.01em;
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
      font-weight: 400;
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

    .section-head .eyebrow { margin-bottom: 0.8rem; }

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
    .see-all:hover {
      color: var(--terracotta);
      border-color: var(--terracotta);
      gap: 1.2rem;
    }
    .see-all i { transition: transform 0.35s var(--ease); }
    .see-all:hover i { transform: translateX(2px); }

    /* ============ FILTERS ============ */
    .filters {
      display: flex;
      gap: 0.55rem;
      flex-wrap: wrap;
      margin-bottom: 3rem;
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
      background: transparent;
      transition: all 0.35s var(--ease);
      white-space: nowrap;
    }
    .chip:hover { border-color: var(--ink); color: var(--ink); }
    .chip.active {
      background: var(--ink);
      border-color: var(--ink);
      color: var(--sand);
    }

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
      box-shadow: 0 30px 50px -30px rgba(23, 20, 16, 0.3);
    }

    .card-media::before {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at 50% 30%, rgba(255, 255, 255, 0.75), transparent 65%);
      opacity: 0;
      transition: opacity 0.6s var(--ease);
      z-index: 1;
    }
    .card:hover .card-media::before { opacity: 1; }

    .card-media i {
      font-size: clamp(3rem, 5vw, 4.6rem);
      color: var(--charcoal);
      position: relative;
      z-index: 2;
      transition: transform 0.7s var(--ease), color 0.4s var(--ease);
    }
    .card:hover .card-media i {
      transform: scale(1.1) rotate(-4deg);
      color: var(--terracotta);
    }

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
      width: 38px; height: 38px;
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
      box-shadow: 0 10px 22px -10px rgba(23, 20, 16, 0.25);
    }
    .card:hover .fav { opacity: 1; transform: translateY(0); }
    .fav:hover { background: var(--terracotta); color: var(--paper); }

    .quick-add {
      position: absolute;
      inset: auto 0 0 0;
      background: var(--ink);
      color: var(--sand);
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
      color: var(--ink);
      transition: color 0.3s var(--ease);
    }
    .card:hover .card-name { color: var(--terracotta); }

    .card-price {
      display: flex;
      align-items: baseline;
      gap: 0.65rem;
      margin-top: 0.4rem;
    }
    .price-now {
      font-size: 0.95rem;
      font-weight: 600;
      letter-spacing: 0.01em;
      color: var(--ink);
    }
    .price-was {
      font-size: 0.82rem;
      color: var(--mist);
      text-decoration: line-through;
    }

    /* ============ EDITORIAL SPLIT ============ */
    .editorial {
      background: var(--ink);
      color: var(--sand);
      display: grid;
      grid-template-columns: 1.05fr 1fr;
      max-width: 1480px;
      margin: 0 auto;
      overflow: hidden;
    }

    .editorial-content {
      padding: clamp(3rem, 6vw, 5.5rem) clamp(2rem, 5vw, 4.5rem);
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .editorial-content .eyebrow { color: var(--gold); }

    .editorial-content h2 {
      font-family: var(--serif);
      font-weight: 400;
      font-size: clamp(2rem, 3.8vw, 3.2rem);
      line-height: 1.05;
      letter-spacing: -0.025em;
      margin-bottom: 1.5rem;
      color: var(--sand);
      font-variation-settings: "opsz" 144;
    }
    .editorial-content h2 em { font-style: italic; color: var(--gold); font-weight: 300; }

    .editorial-content p {
      color: #b8b0a1;
      font-size: 1rem;
      line-height: 1.8;
      font-weight: 300;
      max-width: 460px;
      margin-bottom: 2.5rem;
    }

    .editorial-content .btn-ghost {
      color: var(--sand);
      border-color: var(--sand);
      align-self: flex-start;
    }
    .editorial-content .btn-ghost:hover {
      background: var(--gold);
      border-color: var(--gold);
      color: var(--ink);
    }

    .editorial-visual {
      position: relative;
      background: var(--charcoal);
      min-height: 420px;
      display: grid;
      place-items: center;
      padding: 3rem;
      overflow: hidden;
    }
    .editorial-visual::before {
      content: '';
      position: absolute;
      inset: 0;
      background:
        radial-gradient(circle at 28% 30%, rgba(184, 84, 58, 0.28), transparent 55%),
        radial-gradient(circle at 75% 72%, rgba(176, 138, 79, 0.22), transparent 55%);
    }

    .editorial-mark {
      position: relative;
      z-index: 2;
      text-align: center;
    }
    .editorial-mark i {
      font-size: clamp(4rem, 8vw, 6.5rem);
      color: var(--gold);
      margin-bottom: 1.6rem;
      display: block;
      filter: drop-shadow(0 24px 40px rgba(0, 0, 0, 0.45));
    }
    .editorial-mark p {
      font-family: var(--serif);
      font-style: italic;
      font-size: clamp(1.1rem, 1.6vw, 1.4rem);
      color: var(--sand);
      opacity: 0.92;
    }
    .editorial-mark small {
      font-size: 0.66rem;
      letter-spacing: 0.3em;
      text-transform: uppercase;
      color: var(--gold);
      display: block;
      margin-top: 0.9rem;
      font-weight: 600;
    }

    /* ============ FEATURES ============ */
    .features {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      padding: clamp(2.5rem, 5vw, 4.5rem) 0;
      border-top: 1px solid var(--line);
    }

    .feature {
      padding: 0.5rem clamp(1rem, 2.5vw, 2.2rem);
      display: flex;
      flex-direction: column;
      gap: 0.9rem;
      border-right: 1px solid var(--line);
    }
    .feature:last-child { border-right: none; }
    .feature:first-child { padding-left: 0; }

    .feature i {
      width: 2.9rem; height: 2.9rem;
      display: grid;
      place-items: center;
      background: var(--sand);
      border-radius: 50%;
      color: var(--terracotta);
      font-size: 1.15rem;
    }
    .feature h4 {
      font-family: var(--serif);
      font-size: 1.15rem;
      font-weight: 500;
      letter-spacing: -0.01em;
      color: var(--ink);
    }
    .feature p {
      font-size: 0.85rem;
      color: var(--stone);
      line-height: 1.65;
      font-weight: 300;
    }

    /* ============ NEWSLETTER ============ */
    .newsletter {
      background: var(--sand);
      border-top: 1px solid var(--line);
      border-bottom: 1px solid var(--line);
      padding: clamp(3.5rem, 7vw, 6rem) 0;
      text-align: center;
    }

    .newsletter-inner { max-width: 640px; margin: 0 auto; }

    .newsletter .eyebrow { justify-content: center; margin-bottom: 1.2rem; }

    .newsletter h2 {
      font-family: var(--serif);
      font-weight: 400;
      font-size: clamp(1.9rem, 3.6vw, 2.8rem);
      letter-spacing: -0.025em;
      line-height: 1.08;
      margin-bottom: 1rem;
      font-variation-settings: "opsz" 144;
    }
    .newsletter h2 em { font-style: italic; color: var(--terracotta); font-weight: 300; }

    .newsletter p {
      color: var(--stone);
      font-size: 0.95rem;
      line-height: 1.75;
      font-weight: 300;
      margin-bottom: 2.2rem;
    }

    .newsletter-form {
      display: flex;
      align-items: center;
      background: var(--paper);
      border: 1px solid var(--line);
      padding: 0.45rem 0.45rem 0.45rem 1.5rem;
      max-width: 500px;
      margin: 0 auto;
      transition: border-color 0.3s var(--ease), box-shadow 0.3s var(--ease);
    }
    .newsletter-form:focus-within {
      border-color: var(--terracotta);
      box-shadow: 0 0 0 4px rgba(184, 84, 58, 0.1);
    }
    .newsletter-form input {
      flex: 1;
      border: none;
      outline: none;
      background: transparent;
      font-family: var(--sans);
      font-size: 0.9rem;
      color: var(--ink);
      padding: 0.75rem 0;
      min-width: 0;
    }
    .newsletter-form input::placeholder { color: var(--mist); }
    .newsletter-form button {
      background: var(--ink);
      color: var(--sand);
      padding: 0.85rem 1.75rem;
      font-size: 0.68rem;
      font-weight: 600;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      transition: background 0.3s var(--ease), transform 0.3s var(--ease);
      white-space: nowrap;
    }
    .newsletter-form button:hover { background: var(--terracotta); transform: translateX(2px); }

    /* ============ FOOTER ============ */
    .footer {
      background: var(--ink);
      color: var(--sand);
      padding: clamp(3rem, 6vw, 4.5rem) 0 1.5rem;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: clamp(2rem, 4vw, 4rem);
      margin-bottom: 3.5rem;
    }

    .footer-brand .logo {
      color: var(--sand);
      font-size: 1.6rem;
      display: inline-block;
      margin-bottom: 1.2rem;
    }
    .footer-brand p {
      color: #8f887a;
      font-size: 0.87rem;
      line-height: 1.8;
      font-weight: 300;
      max-width: 320px;
      margin-bottom: 1.8rem;
    }

    .socials { display: flex; gap: 0.6rem; }
    .socials a {
      width: 40px; height: 40px;
      border: 1px solid #35322c;
      border-radius: 50%;
      display: grid;
      place-items: center;
      color: #8f887a;
      font-size: 0.85rem;
      transition: all 0.35s var(--ease);
    }
    .socials a:hover {
      background: var(--terracotta);
      border-color: var(--terracotta);
      color: var(--sand);
      transform: translateY(-3px);
    }

    .footer-col h5 {
      font-size: 0.66rem;
      letter-spacing: 0.26em;
      text-transform: uppercase;
      color: var(--gold);
      margin-bottom: 1.5rem;
      font-weight: 600;
    }
    .footer-col ul { display: flex; flex-direction: column; gap: 0.85rem; }
    .footer-col ul a {
      color: #8f887a;
      font-size: 0.87rem;
      font-weight: 300;
      transition: color 0.25s var(--ease), padding-left 0.35s var(--ease);
    }
    .footer-col ul a:hover { color: var(--sand); padding-left: 4px; }

    .footer-bottom {
      padding-top: 2rem;
      border-top: 1px solid #2a2823;
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 1.2rem;
      flex-wrap: wrap;
      font-size: 0.78rem;
      color: #6f6a5f;
      font-weight: 300;
    }
    .payments { display: flex; gap: 1.2rem; font-size: 1.4rem; color: #6f6a5f; }
    .payments i { transition: color 0.3s var(--ease); }
    .payments i:hover { color: var(--gold); }

    /* ============ RESPONSIVE ============ */
    @media (max-width: 1100px) {
      .grid { grid-template-columns: repeat(3, 1
