<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lumina · E‑Commerce</title>
  <!-- Google Fonts + Font Awesome -->
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ========== RESET & GLOBAL ========== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg-deep: #0a0a1a;
      --bg-card: #13132b;
      --bg-elevated: #1c1c3a;
      --accent: #b8ff3c;
      --accent-glow: #b8ff3c44;
      --text-primary: #ffffff;
      --text-secondary: #a0a0c0;
      --text-muted: #6b6b8a;
      --border-subtle: #2a2a4a;
      --gradient-hot: linear-gradient(135deg, #ff6b9d, #c44dff);
      --gradient-cool: linear-gradient(135deg, #b8ff3c, #4dffb8);
    }

    body {
      background: var(--bg-deep);
      color: var(--text-primary);
      font-family: 'Inter', sans-serif;
      min-height: 100vh;
      padding: 1.5rem;
      background-image: 
        radial-gradient(circle at 20% 10%, #1a1a4a 0%, transparent 50%),
        radial-gradient(circle at 80% 90%, #2a0a3a 0%, transparent 50%);
    }

    /* ========== APP SHELL ========== */
    .app {
      max-width: 1360px;
      margin: 0 auto;
      background: rgba(19, 19, 43, 0.7);
      border-radius: 2.5rem;
      border: 1px solid var(--border-subtle);
      padding: 1.8rem 2rem 2rem;
      backdrop-filter: blur(20px);
      box-shadow: 0 40px 80px -30px rgba(0, 0, 0, 0.8);
      position: relative;
      overflow: hidden;
    }

    /* Decorative glow orbs */
    .app::before {
      content: '';
      position: absolute;
      top: -120px;
      right: -120px;
      width: 380px;
      height: 380px;
      background: radial-gradient(circle, #b8ff3c15, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    .app::after {
      content: '';
      position: absolute;
      bottom: -150px;
      left: -100px;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, #c44dff12, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    /* ========== HEADER ========== */
    .header {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 1.2rem 2rem;
      margin-bottom: 2.4rem;
      position: relative;
      z-index: 2;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 0.7rem;
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.9rem;
      font-weight: 700;
      letter-spacing: -1px;
      color: var(--text-primary);
    }

    .logo-mark {
      width: 44px;
      height: 44px;
      background: var(--accent);
      border-radius: 14px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--bg-deep);
      font-size: 1.3rem;
      box-shadow: 0 0 30px var(--accent-glow);
    }

    .logo span {
      color: var(--accent);
    }

    /* Search */
    .search-wrapper {
      flex: 1 1 280px;
      display: flex;
      align-items: center;
      background: var(--bg-elevated);
      border-radius: 16px;
      padding: 0.2rem 0.3rem 0.2rem 1.2rem;
      border: 1.5px solid transparent;
      transition: 0.2s;
      max-width: 480px;
    }

    .search-wrapper:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px var(--accent-glow);
    }

    .search-wrapper i {
      color: var(--text-muted);
      font-size: 0.95rem;
      margin-right: 0.7rem;
    }

    .search-wrapper input {
      flex: 1;
      background: transparent;
      border: none;
      outline: none;
      color: var(--text-primary);
      font-size: 0.9rem;
      padding: 0.7rem 0;
      font-family: inherit;
    }

    .search-wrapper input::placeholder {
      color: var(--text-muted);
    }

    .search-wrapper .search-btn {
      background: var(--accent);
      color: var(--bg-deep);
      border: none;
      padding: 0.55rem 1.3rem;
      border-radius: 12px;
      font-weight: 700;
      font-size: 0.8rem;
      cursor: pointer;
      font-family: 'Space Grotesk', sans-serif;
      transition: 0.15s;
    }

    .search-wrapper .search-btn:hover {
      background: #d4ff66;
      transform: scale(1.02);
    }

    /* Nav Actions */
    .nav-actions {
      display: flex;
      align-items: center;
      gap: 0.6rem;
    }

    .icon-btn {
      width: 46px;
      height: 46px;
      border-radius: 14px;
      background: var(--bg-elevated);
      border: 1.5px solid var(--border-subtle);
      color: var(--text-secondary);
      font-size: 1.1rem;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: 0.2s;
      position: relative;
    }

    .icon-btn:hover {
      background: var(--accent);
      color: var(--bg-deep);
      border-color: var(--accent);
      transform: translateY(-2px);
      box-shadow: 0 8px 20px -6px var(--accent-glow);
    }

    .icon-btn .badge {
      position: absolute;
      top: -6px;
      right: -6px;
      background: var(--gradient-hot);
      color: white;
      font-size: 0.65rem;
      font-weight: 800;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid var(--bg-deep);
    }

    .avatar {
      width: 46px;
      height: 46px;
      border-radius: 14px;
      background: var(--gradient-hot);
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 800;
      font-size: 0.95rem;
      cursor: pointer;
      transition: 0.2s;
      font-family: 'Space Grotesk', sans-serif;
      border: 2px solid transparent;
    }

    .avatar:hover {
      border-color: var(--accent);
      transform: translateY(-2px);
    }

    /* ========== CATEGORY PILLS ========== */
    .categories {
      display: flex;
      flex-wrap: wrap;
      gap: 0.6rem;
      margin-bottom: 2.4rem;
      position: relative;
      z-index: 2;
    }

    .cat {
      padding: 0.5rem 1.4rem;
      border-radius: 12px;
      background: var(--bg-elevated);
      border: 1.5px solid var(--border-subtle);
      font-size: 0.82rem;
      font-weight: 600;
      color: var(--text-secondary);
      cursor: pointer;
      transition: 0.2s;
      white-space: nowrap;
      font-family: 'Space Grotesk', sans-serif;
      letter-spacing: 0.2px;
    }

    .cat:hover {
      color: var(--text-primary);
      border-color: var(--accent);
    }

    .cat.active {
      background: var(--accent);
      color: var(--bg-deep);
      border-color: var(--accent);
      box-shadow: 0 6px 20px -6px var(--accent-glow);
    }

    /* ========== HERO BANNER ========== */
    .hero {
      border-radius: 2rem;
      padding: 2.5rem 3rem;
      margin-bottom: 3rem;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 2rem;
      position: relative;
      overflow: hidden;
      background: linear-gradient(135deg, #1a1a4a 0%, #2a0a4a 100%);
      border: 1.5px solid var(--border-subtle);
      z-index: 2;
    }

    .hero::before {
      content: '';
      position: absolute;
      top: -80px;
      right: 60px;
      width: 300px;
      height: 300px;
      background: radial-gradient(circle, #b8ff3c22, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    .hero::after {
      content: '';
      position: absolute;
      bottom: -100px;
      left: 30%;
      width: 350px;
      height: 350px;
      background: radial-gradient(circle, #ff6b9d18, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    .hero-text {
      max-width: 540px;
      position: relative;
      z-index: 2;
    }

    .hero-tag {
      display: inline-flex;
      align-items: center;
      gap: 0.5rem;
      background: var(--accent);
      color: var(--bg-deep);
      padding: 0.35rem 1.1rem;
      border-radius: 50px;
      font-size: 0.72rem;
      font-weight: 800;
      letter-spacing: 1px;
      text-transform: uppercase;
      margin-bottom: 1.2rem;
      font-family: 'Space Grotesk', sans-serif;
    }

    .hero h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 2.8rem;
      font-weight: 700;
      letter-spacing: -1.5px;
      line-height: 1.1;
      margin-bottom: 0.8rem;
    }

    .hero h1 em {
      font-style: normal;
      background: var(--gradient-cool);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .hero p {
      color: var(--text-secondary);
      font-size: 1rem;
      line-height: 1.6;
      margin-bottom: 1.8rem;
      max-width: 400px;
    }

    .btn-primary {
      background: var(--accent);
      border: none;
      padding: 0.9rem 2.2rem;
      border-radius: 14px;
      font-weight: 800;
      font-size: 0.9rem;
      color: var(--bg-deep);
      display: inline-flex;
      align-items: center;
      gap: 0.7rem;
      cursor: pointer;
      transition: 0.2s;
      font-family: 'Space Grotesk', sans-serif;
      letter-spacing: 0.3px;
      box-shadow: 0 10px 30px -10px var(--accent-glow);
    }

    .btn-primary:hover {
      transform: translateY(-3px);
      box-shadow: 0 18px 40px -10px var(--accent-glow);
      background: #d4ff66;
    }

    .hero-visual {
      display: flex;
      flex-direction: column;
      gap: 0.8rem;
      position: relative;
      z-index: 2;
    }

    .hero-stat {
      background: rgba(255, 255, 255, 0.04);
      border: 1.5px solid var(--border-subtle);
      border-radius: 16px;
      padding: 0.9rem 1.4rem;
      display: flex;
      align-items: center;
      gap: 0.8rem;
      backdrop-filter: blur(10px);
      min-width: 200px;
    }

    .hero-stat i {
      font-size: 1.3rem;
      color: var(--accent);
      width: 2rem;
      text-align: center;
    }

    .hero-stat .stat-info strong {
      display: block;
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.1rem;
      font-weight: 700;
      color: var(--text-primary);
    }

    .hero-stat .stat-info small {
      font-size: 0.72rem;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.5px;
      font-weight: 600;
    }

    /* ========== SECTION TITLE ========== */
    .section-head {
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 0.8rem;
      margin-bottom: 1.8rem;
      position: relative;
      z-index: 2;
    }

    .section-head h2 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.8px;
      display: flex;
      align-items: center;
      gap: 0.7rem;
    }

    .section-head h2::before {
      content: '';
      width: 6px;
      height: 28px;
      background: var(--accent);
      border-radius: 3px;
      box-shadow: 0 0 16px var(--accent-glow);
    }

    .section-head a {
      text-decoration: none;
      color: var(--text-secondary);
      font-weight: 600;
      font-size: 0.85rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
      transition: 0.2s;
      font-family: 'Space Grotesk', sans-serif;
      padding: 0.5rem 1rem;
      border-radius: 10px;
      border: 1.5px solid var(--border-subtle);
    }

    .section-head a:hover {
      color: var(--accent);
      border-color: var(--accent);
      gap: 0.8rem;
    }

    /* ========== PRODUCT GRID ========== */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 1.5rem;
      margin-bottom: 3rem;
      position: relative;
      z-index: 2;
    }

    .product-card {
      background: var(--bg-card);
      border-radius: 1.6rem;
      border: 1.5px solid var(--border-subtle);
      padding: 1.2rem;
      transition: 0.25s ease;
      display: flex;
      flex-direction: column;
      position: relative;
      overflow: hidden;
    }

    .product-card:hover {
      transform: translateY(-8px);
      border-color: var(--accent);
      box-shadow: 0 30px 50px -20px rgba(184, 255, 60, 0.15);
    }

    .product-card::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      height: 3px;
      background: var(--accent);
      opacity: 0;
      transition: 0.25s;
    }

    .product-card:hover::before {
      opacity: 1;
    }

    .badge-sale {
      position: absolute;
      top: 1rem;
      right: 1rem;
      background: var(--gradient-hot);
      color: white;
      font-size: 0.68rem;
      font-weight: 800;
      padding: 0.28rem 0.8rem;
      border-radius: 8px;
      letter-spacing: 0.5px;
      font-family: 'Space Grotesk', sans-serif;
      z-index: 2;
    }

    .product-img {
      background: var(--bg-elevated);
      border-radius: 1.2rem;
      height: 160px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 3.8rem;
      color: var(--accent);
      margin-bottom: 1rem;
      transition: 0.25s;
      position: relative;
      overflow: hidden;
    }

    .product-img::after {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at center, var(--accent-glow), transparent 70%);
      opacity: 0;
      transition: 0.25s;
    }

    .product-card:hover .product-img::after {
      opacity: 1;
    }

    .product-img i {
      position: relative;
      z-index: 2;
      transition: 0.25s;
    }

    .product-card:hover .product-img i {
      transform: scale(1.1) rotate(-5deg);
    }

    .product-name {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 1rem;
      color: var(--text-primary);
      margin-bottom: 0.2rem;
      letter-spacing: -0.2px;
    }

    .product-desc {
      font-size: 0.78rem;
      color: var(--text-muted);
      margin-bottom: 0.9rem;
      flex: 1;
    }

    .price-row {
      display: flex;
      align-items: baseline;
      gap: 0.7rem;
      margin-bottom: 1rem;
    }

    .price-current {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 1.3rem;
      color: var(--accent);
      letter-spacing: -0.5px;
    }

    .price-old {
      font-size: 0.8rem;
      color: var(--text-muted);
      text-decoration: line-through;
    }

    .add-btn {
      background: var(--bg-elevated);
      border: 1.5px solid var(--border-subtle);
      color: var(--text-primary);
      font-weight: 700;
      padding: 0.7rem 0;
      border-radius: 12px;
      font-size: 0.85rem;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 0.5rem;
      cursor: pointer;
      transition: 0.2s;
      width: 100%;
      font-family: 'Space Grotesk', sans-serif;
      letter-spacing: 0.3px;
    }

    .add-btn:hover {
      background: var(--accent);
      color: var(--bg-deep);
      border-color: var(--accent);
      box-shadow: 0 8px 20px -6px var(--accent-glow);
    }

    .add-btn i {
      font-size: 0.85rem;
    }

    /* ========== FEATURES ========== */
    .features {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 1.2rem;
      margin-top: 2rem;
      padding-top: 2.5rem;
      border-top: 1.5px solid var(--border-subtle);
      position: relative;
      z-index: 2;
    }

    .feature {
      display: flex;
      align-items: center;
      gap: 1rem;
      padding: 1.2rem;
      background: var(--bg-elevated);
      border-radius: 1.4rem;
      border: 1.5px solid var(--border-subtle);
      transition: 0.2s;
    }

    .feature:hover {
      border-color: var(--accent);
      transform: translateY(-4px);
      box-shadow: 0 16px 30px -14px var(--accent-glow);
    }

    .feature i {
      font-size: 1.6rem;
      color: var(--accent);
      width: 2.8rem;
      height: 2.8rem;
      display: flex;
      align-items: center;
      justify-content: center;
      background: rgba(184, 255, 60, 0.08);
      border-radius: 12px;
      flex-shrink: 0;
    }

    .feature span {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 0.9rem;
      color: var(--text-primary);
      display: block;
      margin-bottom: 0.15rem;
    }

    .feature small {
      font-size: 0.75rem;
      color: var(--text-muted);
    }

    /* ========== FOOTER NOTE ========== */
    .footer-note {
      margin-top: 2.5rem;
      font-size: 0.78rem;
      color: var(--text-muted);
      text-align: center;
      padding-top: 1.8rem;
      border-top: 1.5px solid var(--border-subtle);
      position: relative;
      z-index: 2;
      font-family: 'Space Grotesk', sans-serif;
      letter-spacing: 0.3px;
    }

    .footer-note i {
      color: var(--accent);
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 900px) {
      .hero h1 { font-size: 2.2rem; }
      .hero { padding: 2rem; }
    }

    @media (max-width: 700px) {
      body { padding: 0.8rem; }
      .app { padding: 1.3rem; border-radius: 1.8rem; }
      .header { flex-direction: column; align-items: stretch; }
      .search-wrapper { max-width: 100%; }
      .nav-actions { justify-content: flex-end; }
      .categories { flex-wrap: nowrap; overflow-x: auto; padding-bottom: 0.8rem; }
      .categories::-webkit-scrollbar { height: 4px; }
      .categories::-webkit-scrollbar-thumb { background: var(--border-subtle); border-radius: 4px; }
      .hero { flex-direction: column; align-items: flex-start; }
      .hero-visual { flex-direction: row; flex-wrap: wrap; }
      .section-head h2 { font-size: 1.5rem; }
    }

    @media (max-width: 500px) {
      .product-grid { grid-template-columns: 1fr 1fr; gap: 1rem; }
      .product-img { height: 120px; font-size: 2.8rem; }
      .product-card { padding: 1rem; border-radius: 1.3rem; }
      .price-current { font-size: 1.1rem; }
      .hero h1 { font-size: 1.8rem; }
      .hero { padding: 1.6rem; }
      .hero-stat { min-width: 100%; }
    }

    @media (max-width: 380px) {
      .product-grid { grid-template-columns: 1fr; }
    }
  </style>
</head>
<body>
  <div class="app">

    <!-- ========== HEADER ========== -->
    <header class="header">
      <div class="logo">
        <div class="logo-mark"><i class="fas fa-bolt"></i></div>
        Lumina<span>.</span>
      </div>

      <div class="search-wrapper">
        <i class="fas fa-magnifying-glass"></i>
        <input type="text" placeholder="Search the future of shopping...">
        <button class="search-btn">Search</button>
      </div>

      <div class="nav-actions">
        <button class="icon-btn" aria-label="Wishlist">
          <i class="far fa-heart"></i>
        </button>
        <button class="icon-btn" aria-label="Cart">
          <i class="fas fa-cart-shopping"></i>
          <span class="badge">5</span>
        </button>
        <div class="avatar">AK</div>
      </div>
    </header>

    <!-- ========== CATEGORY PILLS ========== -->
    <div class="categories">
      <span class="cat active">All Products</span>
      <span class="cat">Apparel</span>
      <span class="cat">Footwear</span>
      <span class="cat">Watches</span>
      <span class="cat">Audio</span>
      <span class="cat">Eyewear</span>
      <span class="cat">Furniture</span>
    </div>

    <!-- ========== HERO BANNER ========== -->
    <div class="hero">
      <div class="hero-text">
        <div class="hero-tag"><i class="fas fa-fire"></i> Limited Drop</div>
        <h1>Step Into The <em>Future</em> of Style</h1>
        <p>Discover our newest collection with bold designs and premium materials. Up to 60% off for the next 48 hours.</p>
        <button class="btn-primary">
          Explore Collection <i class="fas fa-arrow-right"></i>
        </button>
      </div>
      <div class="hero-visual">
        <div class="hero-stat">
          <i class="fas fa-truck-fast"></i>
          <div class="stat-info">
            <strong>Free Shipping</strong>
            <small>Orders over $75</small>
          </div>
        </div>
        <div class="hero-stat">
          <i class="fas fa-shield-halved"></i>
          <div class="stat-info">
            <strong>2-Year Warranty</strong>
            <small>On all electronics</small>
          </div>
        </div>
      </div>
    </div>

    <!-- ========== PRODUCTS SECTION ========== -->
    <div class="section-head">
      <h2>Fresh Arrivals</h2>
      <a href="#">Browse All <i class="fas fa-arrow-right"></i></a>
    </div>

    <div class="product-grid">
      <!-- Card 1 -->
      <div class="product-card">
        <span class="badge-sale">-30%</span>
        <div class="product-img"><i class="fas fa-tshirt"></i></div>
        <div class="product-name">Oversized Hoodie</div>
        <div class="product-desc">Heavyweight cotton blend</div>
        <div class="price-row">
          <span class="price-current">$49.99</span>
          <span class="price-old">$71.99</span>
        </div>
        <button class="add-btn"><i class="fas fa-bag-shopping"></i> Add to Cart</button>
      </div>

      <!-- Card 2 -->
      <div class="product-card">
        <div class="product-img"><i class="fas fa-shoe-prints"></i></div>
        <div class="product-name">Cloud Runners</div>
        <div class="product-desc">Ultra-light foam sole</div>
        <div class="price-row">
          <span class="price-current">$119.00</span>
        </div>
        <button class="add-btn"><i class="fas fa-bag-shopping"></i> Add to Cart</button>
      </div>

      <!-- Card 3 -->
      <div class="product-card">
        <span class="badge-sale">-20%</span>
        <div class="product-img"><i class="fas fa-glasses"></i></div>
        <div class="product-name">Neo Frames</div>
        <div class="product-desc">Polarized titanium</div>
        <div class="price-row">
          <span class="price-current">$79.20</span>
          <span class="price-old">$99.00</span>
        </div>
        <button class="add-btn"><i class="fas fa-bag-shopping"></i> Add to Cart</button>
      </div>

      <!-- Card 4 -->
      <div class="product-card">
        <span class="badge-sale">-45%</span>
        <div class="product-img"><i class="fas fa-headphones"></i></div>
        <div class="product-name">Pulse Pro</div>
        <div class="product-desc">Active noise cancellation</div>
        <div class="price-row">
          <span class="price-current">$164.99</span>
          <span class="price-old">$299.99</span>
        </div>
        <button class="add-btn"><i class="fas fa-bag-shopping"></i> Add to Cart</button>
      </div>

      <!-- Card 5 -->
      <div class="product-card">
        <div class="product-img"><i class="fas fa-watch"></i></div>
        <div class="product-name">Nova Smartwatch</div>
        <div class="product-desc">AMOLED, GPS, 7-day battery</div>
        <div class="price-row">
          <span class="price-current">$249.00</span>
        </div>
        <button class="add-btn"><i class="fas fa-bag-shopping"></i> Add to Cart</button>
      </div>

      <!-- Card 6 -->
      <div class="product-card">
        <span class="badge-sale">-25%</span>
        <div class="product-img"><i class="fas fa-couch"></i></div>
        <div class="product-name">Luna Lounge Chair</div>
        <div class="product-desc">Scandinavian velvet</div>
        <div class="price-row">
          <span class="price-current">$449.00</span>
          <span class="price-old">$599.00</span>
        </div>
        <button class="add-btn"><i class="fas fa-bag-shopping"></i> Add to Cart</button>
      </div>
    </div>

    <!-- ========== FEATURES ========== -->
    <div class="features">
      <div class="feature">
        <i class="fas fa-truck-fast"></i>
        <div><span>Express Delivery</span><small>2-3 business days</small></div>
      </div>
      <div class="feature">
        <i class="fas fa-rotate-left"></i>
        <div><span>Easy Returns</span><small>45-day window</small></div>
      </div>
      <div class="feature">
        <i class="fas fa-shield-halved"></i>
        <div><span>Secure Checkout</span><small>256-bit encryption</small></div>
      </div>
      <div class="feature">
        <i class="fas fa-headset"></i>
        <div><span>24/7 Support</span><small>Chat, email, phone</small></div>
      </div>
    </div>

    <!-- ========== FOOTER NOTE ========== -->
    <div class="footer-note">
      <i class="far fa-copyright"></i> 2026 Lumina — Designed with <i class="fas fa-heart"></i> for the bold
    </div>
  </div>
</body>
</html>
