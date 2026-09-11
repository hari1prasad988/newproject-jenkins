<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Atelier — Curated Goods</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght@0,9..144,300;0,9..144,400;0,9..144,500;0,9..144,600;0,9..144,700;0,9..144,800;0,9..144,900;1,9..144,400&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    /* ============ RESET & VARS ============ */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f6f4ef;
      --bg-soft: #efece4;
      --ink: #14110f;
      --ink-soft: #4a463f;
      --ink-mute: #8b857a;
      --line: #e2ddd1;
      --line-strong: #d4cec0;
      --accent: #c8553d;
      --accent-dark: #a8442f;
      --gold: #b8956a;
      --white: #ffffff;
      --radius-sm: 4px;
      --radius: 8px;
      --radius-lg: 16px;
      --serif: 'Fraunces', 'Times New Roman', serif;
      --sans: 'Inter', system-ui, sans-serif;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      background: var(--bg);
      color: var(--ink);
      font-family: var(--sans);
      font-size: 15px;
      line-height: 1.55;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
    }

    /* ============ UTILITY ============ */
    .container {
      max-width: 1400px;
      margin: 0 auto;
      padding: 0 2rem;
    }

    @media (max-width: 640px) {
      .container { padding: 0 1.25rem; }
    }

    /* ============ TOP ANNOUNCEMENT ============ */
    .announce {
      background: var(--ink);
      color: var(--bg);
      text-align: center;
      padding: 0.7rem 1rem;
      font-size: 0.72rem;
      letter-spacing: 0.15em;
      text-transform: uppercase;
      font-weight: 500;
    }

    .announce i {
      color: var(--gold);
      margin-right: 0.5rem;
    }

    /* ============ HEADER ============ */
    .header {
      background: var(--bg);
      border-bottom: 1px solid var(--line);
      position: sticky;
      top: 0;
      z-index: 100;
      backdrop-filter: blur(12px);
      background: rgba(246, 244, 239, 0.92);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 1.5rem 0;
      gap: 2rem;
    }

    .logo {
      font-family: var(--serif);
      font-size: 1.9rem;
      font-weight: 500;
      letter-spacing: -0.02em;
      color: var(--ink);
      text-decoration: none;
      white-space: nowrap;
      font-variation-settings: "opsz" 144;
    }

    .logo em {
      font-style: italic;
      font-weight: 300;
      color: var(--accent);
    }

    .logo .dot {
      color: var(--accent);
    }

    .nav {
      display: flex;
      align-items: center;
      gap: 2.5rem;
      flex: 1;
      justify-content: center;
    }

    .nav a {
      color: var(--ink-soft);
      text-decoration: none;
      font-size: 0.82rem;
      font-weight: 500;
      letter-spacing: 0.08em;
      text-transform: uppercase;
      position: relative;
      padding: 0.3rem 0;
      transition: color 0.2s;
    }

    .nav a::after {
      content: '';
      position: absolute;
      bottom: 0;
      left: 0;
      right: 0;
      height: 1px;
      background: var(--ink);
      transform: scaleX(0);
      transition: transform 0.3s ease;
      transform-origin: left;
    }

    .nav a:hover {
      color: var(--ink);
    }

    .nav a:hover::after {
      transform: scaleX(1);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 0.4rem;
    }

    .icon-btn {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: transparent;
      border: none;
      color: var(--ink);
      font-size: 0.95rem;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      transition: all 0.2s;
    }

    .icon-btn:hover {
      background: var(--bg-soft);
      transform: translateY(-1px);
    }

    .icon-btn .badge {
      position: absolute;
      top: 4px;
      right: 4px;
      background: var(--accent);
      color: white;
      font-size: 0.6rem;
      font-weight: 600;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid var(--bg);
    }

    .menu-toggle {
      display: none;
    }

    /* ============ HERO ============ */
    .hero {
      padding: 4rem 0 5rem;
      position: relative;
    }

    .hero-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 4rem;
      align-items: center;
    }

    .hero-eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 0.7rem;
      font-size: 0.72rem;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      color: var(--ink-mute);
      font-weight: 500;
      margin-bottom: 1.5rem;
    }

    .hero-eyebrow::before {
      content: '';
      width: 32px;
      height: 1px;
      background: var(--ink-mute);
    }

    .hero-title {
      font-family: var(--serif);
      font-size: clamp(2.8rem, 5.5vw, 4.5rem);
      font-weight: 400;
      line-height: 1.02;
      letter-spacing: -0.03em;
      margin-bottom: 1.8rem;
      color: var(--ink);
      font-variation-settings: "opsz" 144;
    }

    .hero-title em {
      font-style: italic;
      font-weight: 300;
      color: var(--accent);
    }

    .hero-desc {
      font-size: 1.05rem;
      color: var(--ink-soft);
      max-width: 480px;
      margin-bottom: 2.5rem;
      line-height: 1.7;
    }

    .hero-cta {
      display: flex;
      align-items: center;
      gap: 1.5rem;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 0.7rem;
      padding: 1rem 2rem;
      font-size: 0.82rem;
      font-weight: 600;
      letter-spacing: 0.12em;
      text-transform: uppercase;
      text-decoration: none;
      border: 1px solid transparent;
      cursor: pointer;
      transition: all 0.25s ease;
      font-family: var(--sans);
      border-radius: 0;
    }

    .btn-dark {
      background: var(--ink);
      color: var(--bg);
      border-color: var(--ink);
    }

    .btn-dark:hover {
      background: var(--accent);
      border-color: var(--accent);
      transform: translateY(-2px);
      box-shadow: 0 12px 24px -8px rgba(200, 85, 61, 0.4);
    }

    .btn-link {
      background: transparent;
      color: var(--ink);
      padding: 1rem 0;
      border: none;
      border-bottom: 1px solid var(--ink);
      letter-spacing: 0.12em;
      font-size: 0.82rem;
      font-weight: 600;
      text-transform: uppercase;
      cursor: pointer;
      transition: all 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 0.6rem;
      text-decoration: none;
    }

    .btn-link:hover {
      color: var(--accent);
      border-color: var(--accent);
      gap: 1rem;
    }

    .hero-visual {
      position: relative;
      aspect-ratio: 4/5;
      background: var(--bg-soft);
      border-radius: var(--radius-lg);
      overflow: hidden;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .hero-visual::before {
      content: '';
      position: absolute;
      inset: 0;
      background: 
        radial-gradient(circle at 30% 20%, rgba(200, 85, 61, 0.08), transparent 60%),
        radial-gradient(circle at 70% 80%, rgba(184, 149, 106, 0.12), transparent 60%);
    }

    .hero-object {
      position: relative;
      z-index: 2;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 2rem;
    }

    .hero-object .circle-deco {
      width: 260px;
      height: 260px;
      border-radius: 50%;
      background: var(--white);
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 40px 80px -20px rgba(20, 17, 15, 0.15);
      position: relative;
    }

    .hero-object .circle-deco::before {
      content: '';
      position: absolute;
      inset: -20px;
      border-radius: 50%;
      border: 1px solid var(--line-strong);
    }

    .hero-object i {
      font-size: 5.5rem;
      color: var(--ink);
    }

    .hero-caption {
      font-family: var(--serif);
      font-style: italic;
      font-size: 1.1rem;
      color: var(--ink-soft);
      text-align: center;
    }

    .hero-caption strong {
      font-style: normal;
      font-weight: 500;
      color: var(--ink);
      font-size: 0.75rem;
      letter-spacing: 0.15em;
      text-transform: uppercase;
      display: block;
      margin-top: 0.4rem;
      color: var(--ink-mute);
    }

    .hero-badge {
      position: absolute;
      top: 1.5rem;
      right: 1.5rem;
      background: var(--white);
      padding: 0.7rem 1.2rem;
      border-radius: 50px;
      font-size: 0.7rem;
      font-weight: 600;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      color: var(--ink);
      box-shadow: 0 8px 20px -6px rgba(20, 17, 15, 0.12);
      z-index: 3;
    }

    .hero-badge span {
      color: var(--accent);
    }

    /* ============ MARQUEE STRIP ============ */
    .marquee-strip {
      background: var(--ink);
      color: var(--bg);
      padding: 1.2rem 0;
      overflow: hidden;
      border-top: 1px solid var(--ink);
      border-bottom: 1px solid var(--ink);
    }

    .marquee-track {
      display: flex;
      gap: 4rem;
      animation: marquee 40s linear infinite;
      white-space: nowrap;
    }

    .marquee-track span {
      font-family: var(--serif);
      font-size: 1rem;
      font-style: italic;
      font-weight: 300;
      letter-spacing: 0.02em;
      display: inline-flex;
      align-items: center;
      gap: 4rem;
    }

    .marquee-track span::after {
      content: '✦';
      color: var(--gold);
      font-style: normal;
    }

    @keyframes marquee {
      0% { transform: translateX(0); }
      100% { transform: translateX(-50%); }
    }

    /* ============ SECTION HEADER ============ */
    .section {
      padding: 5rem 0;
    }

    .section-head {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      margin-bottom: 3rem;
      gap: 2rem;
      flex-wrap: wrap;
      padding-bottom: 1.5rem;
      border-bottom: 1px solid var(--line);
    }

    .section-head-left {
      display: flex;
      flex-direction: column;
      gap: 0.5rem;
    }

    .section-eyebrow {
      font-size: 0.72rem;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      color: var(--ink-mute);
      font-weight: 500;
    }

    .section-title {
      font-family: var(--serif);
      font-size: clamp(1.8rem, 3vw, 2.6rem);
      font-weight: 400;
      letter-spacing: -0.025em;
      color: var(--ink);
      line-height: 1.1;
      font-variation-settings: "opsz" 144;
    }

    .section-title em {
      font-style: italic;
      font-weight: 300;
      color: var(--accent);
    }

    .section-link {
      color: var(--ink);
      text-decoration: none;
      font-size: 0.78rem;
      font-weight: 600;
      letter-spacing: 0.12em;
      text-transform: uppercase;
      display: inline-flex;
      align-items: center;
      gap: 0.6rem;
      padding-bottom: 0.3rem;
      border-bottom: 1px solid var(--ink);
      transition: all 0.2s;
    }

    .section-link:hover {
      color: var(--accent);
      border-color: var(--accent);
      gap: 1rem;
    }

    /* ============ CATEGORY TABS ============ */
    .cat-tabs {
      display: flex;
      gap: 0.5rem;
      flex-wrap: wrap;
      margin-bottom: 3rem;
      padding-bottom: 1.5rem;
      border-bottom: 1px solid var(--line);
    }

    .cat-tab {
      background: transparent;
      border: 1px solid var(--line-strong);
      padding: 0.65rem 1.4rem;
      font-size: 0.78rem;
      font-weight: 500;
      letter-spacing: 0.08em;
      text-transform: uppercase;
      color: var(--ink-soft);
      cursor: pointer;
      border-radius: 50px;
      transition: all 0.2s;
      font-family: var(--sans);
      white-space: nowrap;
    }

    .cat-tab:hover {
      border-color: var(--ink);
      color: var(--ink);
    }

    .cat-tab.active {
      background: var(--ink);
      color: var(--bg);
      border-color: var(--ink);
    }

    /* ============ PRODUCT GRID ============ */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 2rem 1.5rem;
    }

    .product-card {
      display: flex;
      flex-direction: column;
      cursor: pointer;
      position: relative;
    }

    .product-media {
      position: relative;
      aspect-ratio: 3/4;
      background: var(--bg-soft);
      border-radius: var(--radius);
      overflow: hidden;
      margin-bottom: 1.2rem;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: all 0.3s ease;
    }

    .product-media::before {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at 50% 40%, rgba(255,255,255,0.5), transparent 60%);
      opacity: 0;
      transition: opacity 0.3s;
    }

    .product-card:hover .product-media::before {
      opacity: 1;
    }

    .product-media i {
      font-size: 4rem;
      color: var(--ink);
      transition: all 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
      position: relative;
      z-index: 2;
    }

    .product-card:hover .product-media i {
      transform: scale(1.08) rotate(-3deg);
      color: var(--accent);
    }

    .product-tag {
      position: absolute;
      top: 1rem;
      left: 1rem;
      background: var(--white);
      color: var(--ink);
      font-size: 0.65rem;
      font-weight: 600;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      padding: 0.4rem 0.8rem;
      border-radius: 3px;
      z-index: 3;
    }

    .product-tag.sale {
      background: var(--accent);
      color: var(--white);
    }

    .product-tag.new {
      background: var(--ink);
      color: var(--bg);
    }

    .product-wishlist {
      position: absolute;
      top: 1rem;
      right: 1rem;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: var(--white);
      border: none;
      color: var(--ink);
      font-size: 0.85rem;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      opacity: 0;
      transform: translateY(-6px);
      transition: all 0.25s;
      z-index: 3;
      box-shadow: 0 4px 12px -3px rgba(20,17,15,0.15);
    }

    .product-card:hover .product-wishlist {
      opacity: 1;
      transform: translateY(0);
    }

    .product-wishlist:hover {
      background: var(--accent);
      color: var(--white);
    }

    .product-quick-add {
      position: absolute;
      bottom: 0;
      left: 0;
      right: 0;
      background: var(--ink);
      color: var(--bg);
      border: none;
      padding: 1rem;
      font-size: 0.75rem;
      font-weight: 600;
      letter-spacing: 0.15em;
      text-transform: uppercase;
      cursor: pointer;
      transform: translateY(100%);
      transition: transform 0.3s ease;
      font-family: var(--sans);
      z-index: 3;
    }

    .product-card:hover .product-quick-add {
      transform: translateY(0);
    }

    .product-quick-add:hover {
      background: var(--accent);
    }

    .product-info {
      display: flex;
      flex-direction: column;
      gap: 0.3rem;
    }

    .product-cat {
      font-size: 0.68rem;
      letter-spacing: 0.15em;
      text-transform: uppercase;
      color: var(--ink-mute);
      font-weight: 500;
    }

    .product-name {
      font-family: var(--serif);
      font-size: 1.15rem;
      font-weight: 400;
      color: var(--ink);
      letter-spacing: -0.01em;
      line-height: 1.3;
      transition: color 0.2s;
    }

    .product-card:hover .product-name {
      color: var(--accent);
    }

    .product-price {
      display: flex;
      align-items: baseline;
      gap: 0.6rem;
      margin-top: 0.3rem;
    }

    .product-price .current {
      font-size: 0.95rem;
      font-weight: 500;
      color: var(--ink);
    }

    .product-price .old {
      font-size: 0.82rem;
      color: var(--ink-mute);
      text-decoration: line-through;
    }

    /* ============ EDITORIAL SPLIT ============ */
    .editorial {
      padding: 5rem 0;
      background: var(--bg-soft);
      border-top: 1px solid var(--line);
      border-bottom: 1px solid var(--line);
    }

    .editorial-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 0;
      align-items: stretch;
      background: var(--white);
      border: 1px solid var(--line);
      overflow: hidden;
    }

    .editorial-content {
      padding: 4rem 3.5rem;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .editorial-eyebrow {
      font-size: 0.72rem;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      color: var(--ink-mute);
      margin-bottom: 1.2rem;
      font-weight: 500;
    }

    .editorial-title {
      font-family: var(--serif);
      font-size: clamp(1.8rem, 3vw, 2.5rem);
      font-weight: 400;
      line-height: 1.15;
      letter-spacing: -0.02em;
      margin-bottom: 1.2rem;
    }

    .editorial-title em {
      font-style: italic;
      font-weight: 300;
      color: var(--accent);
    }

    .editorial-text {
      color: var(--ink-soft);
      font-size: 1rem;
      line-height: 1.7;
      margin-bottom: 2rem;
      max-width: 420px;
    }

    .editorial-visual {
      background: var(--ink);
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 400px;
      position: relative;
      overflow: hidden;
    }

    .editorial-visual::before {
      content: '';
      position: absolute;
      inset: 0;
      background: 
        radial-gradient(circle at 30% 30%, rgba(200, 85, 61, 0.25), transparent 60%),
        radial-gradient(circle at 80% 70%, rgba(184, 149, 106, 0.2), transparent 60%);
    }

    .editorial-visual-content {
      position: relative;
      z-index: 2;
      text-align: center;
      color: var(--bg);
    }

    .editorial-visual-content i {
      font-size: 6rem;
      color: var(--gold);
      margin-bottom: 1.5rem;
      display: block;
    }

    .editorial-visual-content p {
      font-family: var(--serif);
      font-style: italic;
      font-size: 1.3rem;
      color: var(--bg);
      opacity: 0.9;
    }

    .editorial-visual-content small {
      font-family: var(--sans);
      font-style: normal;
      font-size: 0.72rem;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      color: var(--ink-mute);
      display: block;
      margin-top: 0.5rem;
    }

    /* ============ FEATURES ============ */
    .features-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 0;
      border-top: 1px solid var(--line);
      border-left: 1px solid var(--line);
    }

    .feature {
      padding: 2.5rem 2rem;
      border-right: 1px solid var(--line);
      border-bottom: 1px solid var(--line);
      display: flex;
      flex-direction: column;
      gap: 0.8rem;
      background: var(--bg);
      transition: background 0.25s;
    }

    .feature:hover {
      background: var(--white);
    }

    .feature i {
      font-size: 1.4rem;
      color: var(--accent);
      margin-bottom: 0.5rem;
    }

    .feature h4 {
      font-family: var(--serif);
      font-size: 1.1rem;
      font-weight: 500;
      letter-spacing: -0.01em;
      color: var(--ink);
    }

    .feature p {
      font-size: 0.85rem;
      color: var(--ink-mute);
      line-height: 1.6;
    }

    /* ============ NEWSLETTER ============ */
    .newsletter {
      padding: 5rem 0;
      text-align: center;
      background: var(--ink);
      color: var(--bg);
      position: relative;
      overflow: hidden;
    }

    .newsletter::before {
      content: '';
      position: absolute;
      top: -100px;
      left: 50%;
      transform: translateX(-50%);
      width: 600px;
      height: 600px;
      background: radial-gradient(circle, rgba(200, 85, 61, 0.15), transparent 70%);
      border-radius: 50%;
    }

    .newsletter-inner {
      position: relative;
      z-index: 2;
      max-width: 600px;
      margin: 0 auto;
    }

    .newsletter h2 {
      font-family: var(--serif);
      font-size: clamp(1.8rem, 3vw, 2.5rem);
      font-weight: 400;
      letter-spacing: -0.02em;
      margin-bottom: 1rem;
      color: var(--bg);
    }

    .newsletter h2 em {
      font-style: italic;
      color: var(--gold);
    }

    .newsletter p {
      color: var(--ink-mute);
      margin-bottom: 2rem;
      font-size: 0.95rem;
    }

    .newsletter-form {
      display: flex;
      gap: 0;
      border: 1px solid rgba(246, 244, 239, 0.2);
      border-radius: 50px;
      overflow: hidden;
      padding: 0.35rem 0.35rem 0.35rem 1.5rem;
      background: rgba(246, 244, 239, 0.05);
    }

    .newsletter-form input {
      flex: 1;
      background: transparent;
      border: none;
      outline: none;
      color: var(--bg);
      font-family: var(--sans);
      font-size: 0.9rem;
    }

    .newsletter-form input::placeholder {
      color: var(--ink-mute);
    }

    .newsletter-form button {
      background: var(--accent);
      color: var(--white);
      border: none;
      padding: 0.85rem 2rem;
      border-radius: 50px;
      font-size: 0.78rem;
      font-weight: 600;
      letter-spacing: 0.12em;
      text-transform: uppercase;
      cursor: pointer;
      font-family: var(--sans);
      transition: all 0.2s;
      white-space: nowrap;
    }

    .newsletter-form button:hover {
      background: var(--accent-dark);
      transform: scale(1.02);
    }

    /* ============ FOOTER ============ */
    .footer {
      padding: 4rem 0 2rem;
      background: var(--bg);
      border-top: 1px solid var(--line);
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 3rem;
      margin-bottom: 3rem;
    }

    .footer-brand .logo {
      font-size: 1.6rem;
      margin-bottom: 1rem;
      display: inline-block;
    }

    .footer-brand p {
      color: var(--ink-mute);
      font-size: 0.88rem;
      line-height: 1.7;
      max-width: 320px;
      margin-bottom: 1.5rem;
    }

    .footer-social {
      display: flex;
      gap: 0.6rem;
    }

    .footer-social a {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      border: 1px solid var(--line-strong);
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--ink-soft);
      font-size: 0.85rem;
      text-decoration: none;
      transition: all 0.2s;
    }

    .footer-social a:hover {
      background: var(--ink);
      color: var(--bg);
      border-color: var(--ink);
      transform: translateY(-2px);
    }

    .footer-col h5 {
      font-size: 0.72rem;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      color: var(--ink);
      margin-bottom: 1.3rem;
      font-weight: 600;
    }

    .footer-col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 0.7rem;
    }

    .footer-col ul a {
      color: var(--ink-mute);
      text-decoration: none;
      font-size: 0.88rem;
      transition: color 0.2s;
    }

    .footer-col ul a:hover {
      color: var(--accent);
    }

    .footer-bottom {
      padding-top: 2rem;
      border-top: 1px solid var(--line);
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 1rem;
      font-size: 0.8rem;
      color: var(--ink-mute);
    }

    .footer-bottom .payments {
      display: flex;
      gap: 1.2rem;
      font-size: 1.3rem;
      color: var(--ink-soft);
    }

    /* ============ RESPONSIVE ============ */
    @media (max-width: 1100px) {
      .product-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1.5fr 1fr 1fr; }
      .footer-grid .footer-col:last-child { grid-column: span 3; }
    }

    @media (max-width: 900px) {
      .nav { display: none; }
      .menu-toggle { display: flex; }
      .hero-grid { grid-template-columns: 1fr; gap: 3rem; }
      .hero-visual { max-width: 480px; margin: 0 auto; width: 100%; }
      .editorial-grid { grid-template-columns: 1fr; }
      .editorial-visual { min-height: 300px; order: -1; }
      .features-grid { grid-template-columns: repeat(2, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 2rem; }
      .footer-grid .footer-col:last-child { grid-column: span 2; }
    }

    @media (max-width: 640px) {
      .container { padding: 0 1.25rem; }
      .hero { padding: 2.5rem 0 3rem; }
      .hero-title { font-size: 2.4rem; }
      .hero-cta { flex-direction: column; align-items: stretch; }
      .hero-cta .btn-dark { justify-content: center; }
      .section { padding: 3rem 0; }
      .product-grid { grid-template-columns: repeat(2, 1fr); gap: 1.5rem 1rem; }
      .product-media i { font-size: 3rem; }
      .product-name { font-size: 1rem; }
      .cat-tabs { overflow-x: auto; flex-wrap: nowrap; padding-bottom: 1rem; }
      .cat-tabs::-webkit-scrollbar { display: none; }
      .features-grid { grid-template-columns: 1fr; }
      .editorial-content { padding: 2.5rem 1.8rem; }
      .newsletter-form { flex-direction: column; border-radius: 16px; padding: 1rem; gap: 0.8rem; }
      .newsletter-form input { padding: 0.5rem 0.5rem; }
      .newsletter-form button { width: 100%; }
      .footer-grid { grid-template-columns: 1fr; }
      .footer-grid .footer-col:last-child { grid-column: span 1; }
      .footer-bottom { flex-direction: column; text-align: center; }
      .header-inner { padding: 1rem 0; gap: 1rem; }
      .logo { font-size: 1.5rem; }
    }

    @media (max-width: 400px) {
      .product-grid { grid-template-columns: 1fr; }
    }
  </style>
</head>
<body>

  <!-- ANNOUNCEMENT -->
  <div class="announce">
    <i class="fas fa-star"></i> Complimentary shipping on all orders over $150 — Worldwide
  </div>

  <!-- HEADER -->
  <header class="header">
    <div class="container">
      <div class="header-inner">
        <a href="#" class="logo">Atelier<em>.</em></a>

        <nav class="nav">
          <a href="#">New In</a>
          <a href="#">Women</a>
          <a href="#">Men</a>
          <a href="#">Objects</a>
          <a href="#">Journal</a>
        </nav>

        <div class="header-actions">
          <button class="icon-btn" aria-label="Search"><i class="fas fa-search"></i></button>
          <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <button class="icon-btn" aria-label="Cart">
            <i class="fas fa-shopping
