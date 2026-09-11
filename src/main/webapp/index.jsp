<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Méridien · Curated Essentials</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400&family=Manrope:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    /* ============ RESET ============ */
    * { margin: 0; padding: 0; box-sizing: border-box; }

    :root {
      --cream: #faf7f2;
      --paper: #ffffff;
      --sand: #f0e9dd;
      --ink: #1a1a1a;
      --charcoal: #2d2d2d;
      --stone: #6b6b6b;
      --mist: #a8a8a8;
      --line: #e8e2d6;
      --line-soft: #f2ede3;
      --terracotta: #c65f3f;
      --terracotta-dark: #a84a2e;
      --sage: #7a8b6f;
      --gold: #b8935a;

      --serif: 'Cormorant Garamond', 'Times New Roman', serif;
      --sans: 'Manrope', system-ui, sans-serif;
    }

    html { scroll-behavior: smooth; }

    body {
      background: var(--cream);
      color: var(--ink);
      font-family: var(--sans);
      font-size: 15px;
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
    }

    a { color: inherit; }
    button { font-family: inherit; }

    /* ============ ANNOUNCEMENT BAR ============ */
    .announce {
      background: var(--ink);
      color: var(--cream);
      text-align: center;
      padding: 0.75rem 1rem;
      font-size: 0.7rem;
      letter-spacing: 0.22em;
      text-transform: uppercase;
      font-weight: 500;
    }

    .announce span { color: var(--gold); margin: 0 0.4rem; }

    /* ============ HEADER ============ */
    .header {
      background: var(--paper);
      border-bottom: 1px solid var(--line);
      position: sticky;
      top: 0;
      z-index: 200;
    }

    .header-inner {
      max-width: 1440px;
      margin: 0 auto;
      padding: 1.4rem 2.5rem;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 2rem;
    }

    .logo {
      font-family: var(--serif);
      font-size: 1.75rem;
      font-weight: 500;
      letter-spacing: 0.02em;
      text-decoration: none;
      color: var(--ink);
      display: flex;
      align-items: baseline;
      gap: 0.15rem;
      white-space: nowrap;
    }

    .logo em {
      font-style: italic;
      font-weight: 400;
      color: var(--terracotta);
    }

    .nav-main {
      display: flex;
      align-items: center;
      gap: 2.4rem;
      flex: 1;
      justify-content: center;
    }

    .nav-main a {
      text-decoration: none;
      font-size: 0.78rem;
      font-weight: 500;
      letter-spacing: 0.14em;
      text-transform: uppercase;
      color: var(--charcoal);
      position: relative;
      padding: 0.35rem 0;
      transition: color 0.25s;
    }

    .nav-main a::after {
      content: '';
      position: absolute;
      left: 0;
      bottom: 0;
      width: 100%;
      height: 1px;
      background: var(--terracotta);
      transform: scaleX(0);
      transform-origin: right;
      transition: transform 0.35s cubic-bezier(0.4, 0, 0.2, 1);
    }

    .nav-main a:hover { color: var(--terracotta); }
    .nav-main a:hover::after { transform: scaleX(1); transform-origin: left; }

    .header-tools {
      display: flex;
      align-items: center;
      gap: 0.2rem;
    }

    .tool-btn {
      width: 42px;
      height: 42px;
      display: flex;
      align-items: center;
      justify-content: center;
      background: transparent;
      border: none;
      cursor: pointer;
      font-size: 1rem;
      color: var(--charcoal);
      position: relative;
      border-radius: 50%;
      transition: all 0.2s;
    }

    .tool-btn:hover {
      background: var(--sand);
      color: var(--terracotta);
    }

    .tool-btn .count {
      position: absolute;
      top: 4px;
      right: 4px;
      background: var(--terracotta);
      color: var(--paper);
      font-size: 0.58rem;
      font-weight: 700;
      min-width: 16px;
      height: 16px;
      border-radius: 8px;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 0 4px;
      font-family: var(--sans);
      letter-spacing: 0;
    }

    .divider-v {
      width: 1px;
      height: 22px;
      background: var(--line);
      margin: 0 0.6rem;
    }

    /* ============ HERO ============ */
    .hero {
      max-width: 1440px;
      margin: 0 auto;
      padding: 3.5rem 2.5rem 5rem;
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 5rem;
      align-items: center;
    }

    .hero-eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 0.8rem;
      font-size: 0.7rem;
      letter-spacing: 0.25em;
      text-transform: uppercase;
      color: var(--terracotta);
      font-weight: 600;
      margin-bottom: 1.8rem;
    }

    .hero-eyebrow::before {
      content: '';
      width: 40px;
      height: 1px;
      background: var(--terracotta);
    }

    .hero h1 {
      font-family: var(--serif);
      font-weight: 400;
      font-size: clamp(3rem, 6vw, 5rem);
      line-height: 0.98;
      letter-spacing: -0.025em;
      color: var(--ink);
      margin-bottom: 1.6rem;
    }

    .hero h1 em {
      font-style: italic;
      color: var(--terracotta);
    }

    .hero-desc {
      font-size: 1.02rem;
      color: var(--stone);
      line-height: 1.75;
      max-width: 460px;
      margin-bottom: 2.5rem;
      font-weight: 300;
    }

    .hero-actions {
      display: flex;
      align-items: center;
      gap: 1.5rem;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 0.8rem;
      padding: 1.05rem 2.2rem;
      font-size: 0.75rem;
      font-weight: 600;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      text-decoration: none;
      border: 1px solid transparent;
      cursor: pointer;
      transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
      font-family: var(--sans);
    }

    .btn-fill {
      background: var(--ink);
      color: var(--cream);
      border-color: var(--ink);
    }

    .btn-fill:hover {
      background: var(--terracotta);
      border-color: var(--terracotta);
      transform: translateY(-2px);
      box-shadow: 0 14px 30px -12px rgba(198, 95, 63, 0.5);
    }

    .btn-ghost {
      background: transparent;
      color: var(--ink);
      border-color: var(--ink);
    }

    .btn-ghost:hover {
      background: var(--ink);
      color: var(--cream);
      transform: translateY(-2px);
    }

    .hero-visual {
      position: relative;
      aspect-ratio: 1 / 1.15;
      background: var(--sand);
      border-radius: 240px 240px 24px 24px;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
    }

    .hero-visual::before {
      content: '';
      position: absolute;
      inset: 0;
      background:
        radial-gradient(circle at 25% 25%, rgba(184, 147, 90, 0.18), transparent 55%),
        radial-gradient(circle at 75% 80%, rgba(122, 139, 111, 0.15), transparent 55%);
    }

    .hero-visual i.hero-icon {
      position: relative;
      z-index: 2;
      font-size: 8rem;
      color: var(--charcoal);
      filter: drop-shadow(0 30px 40px rgba(26, 26, 26, 0.15));
    }

    .hero-badge {
      position: absolute;
      bottom: 2rem;
      right: 2rem;
      background: var(--paper);
      padding: 0.85rem 1.4rem;
      border-radius: 60px;
      display: flex;
      align-items: center;
      gap: 0.7rem;
      box-shadow: 0 20px 40px -16px rgba(26, 26, 26, 0.22);
      z-index: 3;
    }

    .hero-badge i {
      color: var(--terracotta);
      font-size: 1rem;
    }

    .hero-badge div { line-height: 1.2; }

    .hero-badge strong {
      display: block;
      font-size: 0.72rem;
      font-weight: 700;
      letter-spacing: 0.05em;
      color: var(--ink);
    }

    .hero-badge small {
      font-size: 0.62rem;
      color: var(--mist);
      letter-spacing: 0.08em;
      text-transform: uppercase;
    }

    /* ============ MARQUEE ============ */
    .marquee {
      background: var(--sand);
      border-top: 1px solid var(--line);
      border-bottom: 1px solid var(--line);
      padding: 1.4rem 0;
      overflow: hidden;
    }

    .marquee-track {
      display: flex;
      gap: 4rem;
      width: max-content;
      animation: slide 45s linear infinite;
    }

    .marquee-track span {
      font-family: var(--serif);
      font-size: 1.15rem;
      font-style: italic;
      color: var(--charcoal);
      display: inline-flex;
      align-items: center;
      gap: 4rem;
      letter-spacing: 0.02em;
      white-space: nowrap;
    }

    .marquee-track span::after {
      content: '◆';
      font-style: normal;
      font-size: 0.6rem;
      color: var(--terracotta);
    }

    @keyframes slide {
      from { transform: translateX(0); }
      to { transform: translateX(-50%); }
    }

    /* ============ SECTION ============ */
    .section {
      max-width: 1440px;
      margin: 0 auto;
      padding: 5rem 2.5rem;
    }

    .section-head {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 2rem;
      flex-wrap: wrap;
      margin-bottom: 3rem;
      padding-bottom: 1.6rem;
      border-bottom: 1px solid var(--line);
    }

    .section-head-left { display: flex; flex-direction: column; gap: 0.4rem; }

    .section-eyebrow {
      font-size: 0.68rem;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      color: var(--terracotta);
      font-weight: 600;
    }

    .section-title {
      font-family: var(--serif);
      font-weight: 400;
      font-size: clamp(2rem, 3.5vw, 3rem);
      letter-spacing: -0.02em;
      line-height: 1.05;
      color: var(--ink);
    }

    .section-title em { font-style: italic; color: var(--terracotta); }

    .section-link {
      font-size: 0.72rem;
      font-weight: 600;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      color: var(--ink);
      text-decoration: none;
      display: inline-flex;
      align-items: center;
      gap: 0.7rem;
      padding-bottom: 0.3rem;
      border-bottom: 1px solid var(--ink);
      transition: all 0.25s;
    }

    .section-link:hover {
      color: var(--terracotta);
      border-color: var(--terracotta);
      gap: 1.1rem;
    }

    /* ============ FILTERS ============ */
    .filters {
      display: flex;
      gap: 0.6rem;
      flex-wrap: wrap;
      margin-bottom: 3rem;
    }

    .chip {
      padding: 0.6rem 1.4rem;
      background: transparent;
      border: 1px solid var(--line);
      border-radius: 60px;
      font-size: 0.72rem;
      font-weight: 500;
      letter-spacing: 0.14em;
      text-transform: uppercase;
      color: var(--stone);
      cursor: pointer;
      transition: all 0.25s;
      white-space: nowrap;
    }

    .chip:hover { border-color: var(--ink); color: var(--ink); }
    .chip.active {
      background: var(--ink);
      border-color: var(--ink);
      color: var(--cream);
    }

    /* ============ PRODUCT GRID ============ */
    .grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 2.5rem 1.8rem;
    }

    .card {
      display: flex;
      flex-direction: column;
      cursor: pointer;
      position: relative;
    }

    .card-media {
      position: relative;
      aspect-ratio: 4 / 5;
      background: var(--sand);
      border-radius: 4px;
      overflow: hidden;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 1.4rem;
      transition: transform 0.4s cubic-bezier(0.4, 0, 0.2, 1);
    }

    .card:hover .card-media { transform: translateY(-6px); }

    .card-media::before {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at 50% 35%, rgba(255,255,255,0.7), transparent 65%);
      opacity: 0;
      transition: opacity 0.4s;
    }

    .card:hover .card-media::before { opacity: 1; }

    .card-media i {
      font-size: 4.5rem;
      color: var(--charcoal);
      transition: all 0.5s cubic-bezier(0.34, 1.56, 0.64, 1);
      position: relative;
      z-index: 2;
    }

    .card:hover .card-media i {
      transform: scale(1.12) rotate(-4deg);
      color: var(--terracotta);
    }

    .tag {
      position: absolute;
      top: 1rem;
      left: 1rem;
      font-size: 0.62rem;
      font-weight: 700;
      letter-spacing: 0.16em;
      text-transform: uppercase;
      padding: 0.42rem 0.85rem;
      background: var(--paper);
      color: var(--ink);
      z-index: 3;
    }

    .tag.sale { background: var(--terracotta); color: var(--paper); }
    .tag.new { background: var(--sage); color: var(--paper); }

    .card-fav {
      position: absolute;
      top: 1rem;
      right: 1rem;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: var(--paper);
      border: none;
      color: var(--ink);
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 0.85rem;
      opacity: 0;
      transform: translateY(-8px);
      transition: all 0.3s;
      z-index: 3;
      box-shadow: 0 6px 16px -6px rgba(26, 26, 26, 0.2);
    }

    .card:hover .card-fav { opacity: 1; transform: translateY(0); }
    .card-fav:hover { background: var(--terracotta); color: var(--paper); }

    .card-cta {
      position: absolute;
      bottom: 0;
      left: 0;
      right: 0;
      background: var(--ink);
      color: var(--cream);
      border: none;
      padding: 1.05rem;
      font-size: 0.7rem;
      font-weight: 600;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      cursor: pointer;
      transform: translateY(100%);
      transition: transform 0.35s cubic-bezier(0.4, 0, 0.2, 1);
      z-index: 3;
    }

    .card:hover .card-cta { transform: translateY(0); }
    .card-cta:hover { background: var(--terracotta); }

    .card-info { display: flex; flex-direction: column; gap: 0.25rem; }

    .card-cat {
      font-size: 0.64rem;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      color: var(--mist);
      font-weight: 600;
    }

    .card-name {
      font-family: var(--serif);
      font-size: 1.25rem;
      font-weight: 500;
      letter-spacing: -0.01em;
      line-height: 1.25;
      color: var(--ink);
      transition: color 0.25s;
    }

    .card:hover .card-name { color: var(--terracotta); }

    .card-price {
      display: flex;
      align-items: baseline;
      gap: 0.6rem;
      margin-top: 0.35rem;
    }

    .price-now {
      font-size: 0.95rem;
      font-weight: 600;
      color: var(--ink);
      letter-spacing: 0.01em;
    }

    .price-was {
      font-size: 0.82rem;
      color: var(--mist);
      text-decoration: line-through;
    }

    /* ============ EDITORIAL SPLIT ============ */
    .editorial {
      background: var(--ink);
      color: var(--cream);
      display: grid;
      grid-template-columns: 1fr 1fr;
      max-width: 1440px;
      margin: 0 auto;
      overflow: hidden;
    }

    .editorial-content {
      padding: 5rem 4rem;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .editorial-content .section-eyebrow { color: var(--gold); }

    .editorial-content h2 {
      font-family: var(--serif);
      font-weight: 400;
      font-size: clamp(2rem, 3.5vw, 3rem);
      line-height: 1.08;
      letter-spacing: -0.02em;
      margin-bottom: 1.5rem;
      color: var(--cream);
    }

    .editorial-content h2 em { font-style: italic; color: var(--gold); }

    .editorial-content p {
      color: #b0aaa0;
      line-height: 1.8;
      font-weight: 300;
      font-size: 1rem;
      margin-bottom: 2.4rem;
      max-width: 440px;
    }

    .editorial-content .btn-ghost {
      color: var(--cream);
      border-color: var(--cream);
      align-self: flex-start;
    }

    .editorial-content .btn-ghost:hover {
      background: var(--gold);
      border-color: var(--gold);
      color: var(--ink);
    }

    .editorial-visual {
      background: var(--charcoal);
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 4rem;
      position: relative;
      overflow: hidden;
    }

    .editorial-visual::before {
      content: '';
      position: absolute;
      inset: 0;
      background:
        radial-gradient(circle at 30% 30%, rgba(198, 95, 63, 0.25), transparent 55%),
        radial-gradient(circle at 75% 70%, rgba(184, 147, 90, 0.2), transparent 55%);
    }

    .editorial-mark {
      position: relative;
      z-index: 2;
      text-align: center;
    }

    .editorial-mark i {
      font-size: 6.5rem;
      color: var(--gold);
      margin-bottom: 1.5rem;
      display: block;
      filter: drop-shadow(0 20px 40px rgba(0,0,0,0.4));
    }

    .editorial-mark p {
      font-family: var(--serif);
      font-style: italic;
      font-size: 1.35rem;
      color: var(--cream);
      opacity: 0.9;
    }

    .editorial-mark small {
      font-family: var(--sans);
      font-style: normal;
      font-size: 0.68rem;
      letter-spacing: 0.28em;
      text-transform: uppercase;
      color: var(--gold);
      display: block;
      margin-top: 0.8rem;
    }

    /* ============ FEATURES ============ */
    .features {
      max-width: 1440px;
      margin: 0 auto;
      padding: 4rem 2.5rem;
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 0;
      border-top: 1px solid var(--line);
    }

    .feature {
      padding: 1rem 2rem;
      display: flex;
      flex-direction: column;
      gap: 0.9rem;
      border-right: 1px solid var(--line);
    }

    .feature:last-child { border-right: none; }
    .feature:first-child { padding-left: 0; }

    .feature i {
      font-size: 1.4rem;
      color: var(--terracotta);
      width: 2.8rem;
      height: 2.8rem;
      display: flex;
      align-items: center;
      justify-content: center;
      background: var(--sand);
      border-radius: 50%;
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
      padding: 5rem 2.5rem;
      text-align: center;
      border-top: 1px solid var(--line);
    }

    .newsletter-inner {
      max-width: 620px;
      margin: 0 auto;
    }

    .newsletter h2 {
      font-family: var(--serif);
      font-weight: 400;
      font-size: clamp(2rem, 3.5vw, 2.8rem);
      letter-spacing: -0.02em;
      line-height: 1.1;
      margin-bottom: 1rem;
      color: var(--ink);
    }

    .newsletter h2 em { font-style: italic; color: var(--terracotta); }

    .newsletter p {
      color: var(--stone);
      font-size: 0.95rem;
      line-height: 1.7;
      margin-bottom: 2.2rem;
      font-weight: 300;
    }

    .newsletter-form {
      display: flex;
      background: var(--paper);
      border: 1px solid var(--line);
      padding: 0.5rem 0.5rem 0.5rem 1.6rem;
      align-items: center;
      max-width: 480px;
      margin: 0 auto;
    }

    .newsletter-form input {
      flex: 1;
      border: none;
      outline: none;
      background: transparent;
      font-family: var(--sans);
      font-size: 0.9rem;
      color: var(--ink);
      padding: 0.7rem 0;
    }

    .newsletter-form input::placeholder { color: var(--mist); }

    .newsletter-form button {
      background: var(--ink);
      color: var(--cream);
      border: none;
      padding: 0.85rem 1.8rem;
      font-size: 0.7rem;
      font-weight: 600;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      cursor: pointer;
      transition: all 0.25s;
      white-space: nowrap;
    }

    .newsletter-form button:hover {
      background: var(--terracotta);
      transform: translateX(2px);
    }

    /* ============ FOOTER ============ */
    .footer {
      background: var(--ink);
      color: var(--cream);
      padding: 4rem 2.5rem 2rem;
    }

    .footer-inner { max-width: 1440px; margin: 0 auto; }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 3rem;
      margin-bottom: 3.5rem;
    }

    .footer-brand .logo {
      color: var(--cream);
      font-size: 1.6rem;
      margin-bottom: 1.2rem;
      display: inline-block;
    }

    .footer-brand p {
      color: #8a8579;
      font-size: 0.87rem;
      line-height: 1.75;
      max-width: 320px;
      margin-bottom: 1.8rem;
      font-weight: 300;
    }

    .socials { display: flex; gap: 0.6rem; }

    .socials a {
      width: 40px;
      height: 40px;
      border: 1px solid #3a3833;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #8a8579;
      font-size: 0.85rem;
      text-decoration: none;
      transition: all 0.25s;
    }

    .socials a:hover {
      background: var(--terracotta);
      border-color: var(--terracotta);
      color: var(--cream);
      transform: translateY(-3px);
    }

    .footer-col h5 {
      font-size: 0.68rem;
      letter-spacing: 0.24em;
      text-transform: uppercase;
      color: var(--gold);
      margin-bottom: 1.5rem;
      font-weight: 600;
    }

    .footer-col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 0.85rem;
    }

    .footer-col ul a {
      color: #8a8579;
      text-decoration: none;
      font-size: 0.87rem;
      font-weight: 300;
      transition: color 0.2s;
    }

    .footer-col ul a:hover { color: var(--cream); }

    .footer-bottom {
      padding-top: 2rem;
      border-top: 1px solid #2a2825;
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 1.2rem;
      font-size: 0.78rem;
      color: #6b6660;
    }

    .payments {
      display: flex;
      gap: 1.2rem;
      font-size: 1.4rem;
      color: #6b6660;
    }

    /* ============ RESPONSIVE ============ */
    @media (max-width: 1100px) {
      .grid { grid-template-columns: repeat(3, 1fr); }
      .features { grid-template-columns: repeat(2, 1fr); }
      .feature:nth-child(2) { border-right: none; }
      .feature:nth-child(3), .feature:nth-child(4) { border-top: 1px solid var(--line); }
      .footer-grid { grid-template-columns: 1.5fr 1fr 1fr; }
    }

    @media (max-width: 900px) {
      .nav-main { display: none; }
      .hero { grid-template-columns: 1fr; gap: 3rem; padding: 3rem 2rem 4rem; }
      .hero-visual { max-width: 480px; margin: 0 auto; width: 100%; }
      .editorial { grid-template-columns: 1fr; }
      .editorial-visual { order: -1; min-height: 320px; padding: 3rem; }
      .editorial-content { padding: 3rem 2rem; }
      .header-inner { padding: 1.2rem 1.5rem; }
    }

    @media (max-width: 640px) {
      .section { padding: 3.5rem 1.5rem; }
      .grid { grid-template-columns: repeat(2, 1fr); gap: 1.8rem 1rem; }
      .card-media i { font-size: 3.2rem; }
      .card-name { font-size: 1.05rem; }
      .hero h1 { font-size: 2.6rem; }
      .hero { padding: 2.5rem 1.5rem 3rem; }
      .hero-actions { flex-direction: column; align-items: stretch; }
      .hero-actions .btn { justify-content: center; }
      .filters { overflow-x: auto; flex-wrap: nowrap; padding-bottom: 1rem; margin-bottom: 2rem; }
      .filters::-webkit-scrollbar { display: none; }
      .features { grid-template-columns: 1fr; padding: 3rem 1.5rem; }
      .feature { border-right: none; border-bottom: 1px solid var(--line); padding: 1.5rem 0; }
      .feature:last-child { border-bottom: none; }
      .feature:first-child { padding-top: 0; }
      .newsletter { padding: 3.5rem 1.5rem; }
      .newsletter-form { flex-direction: column; padding: 1rem; gap: 0.8rem; }
      .newsletter-form input { padding: 0.6rem; text-align: center; }
      .newsletter-form button { width: 100%; }
      .footer { padding: 3rem 1.5rem 1.5rem; }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 2rem; }
      .footer-brand { grid-column: span 2; }
      .footer-bottom { flex-direction: column; text-align: center; }
    }

    @media (max-width: 420px) {
      .grid { grid-template-columns: 1fr; }
      .footer-grid { grid-template-columns: 1fr; }
      .footer-brand { grid-column: span 1; }
      .hero h1 { font-size: 2.2rem; }
    }
  </style>
</head>
<body>

  <!-- ANNOUNCEMENT -->
  <div class="announce">
    Complimentary worldwide shipping <span>◆</span> Orders over $200
  </div>

  <!-- HEADER -->
  <header class="header">
    <div class="header-inner">
      <a href="#" class="logo">Méridien<em>.</em></a>

      <nav class="nav-main">
        <a href="#">New Arrivals</a>
        <a href="#">Women</a>
        <a href="#">Men</a>
        <a href="#">Objects</a>
        <a href="#">Editorial</a>
      </nav>

      <div class="header-tools">
        <button class="tool-btn" aria-label="Search"><i class="fas fa-search"></i></button>
        <button class="tool-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="tool-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <button class="tool-btn" aria-label="Cart">
          <i class="fas fa-shopping-bag"></i>
          <span class="count">3</span>
        </button>
      </div>
    </div>
  </header>

  <!-- HERO -->
  <section class="hero">
    <div class="hero-content">
      <div class="hero-eyebrow">Autumn Collection — 2026</div>
      <h1>Timeless pieces for the <em>modern</em> life.</h1>
      <p class="hero-desc">
        Thoughtfully crafted essentials, made to last beyond seasons.
        Discover a curated world where quality meets quiet elegance.
      </p>
      <div class="hero-actions">
        <a href="#collection" class="btn btn-fill">
          Shop Collection <i class="fas fa-arrow-right"></i>
        </a>
        <a href="#editorial" class="btn btn-ghost">Our Story</a>
      </div>
    </div>

    <div class="hero-visual">
      <i class="fas fa-feather-pointed hero-icon"></i>
      <div class="hero-badge">
        <i class="fas fa-award"></
