<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FuelUp — Student Health & Nutrition Lab</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;600;700&family=Inter:wght@400;500;600;700&family=IBM+Plex+Mono:wght@500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="{{ url_for('static', filename='style.css') }}">
</head>
<body>

<div class="grain"></div>

<header class="topbar">
  <div class="topbar-inner">
    <div class="brand">
      <span class="brand-mark">⛽</span>
      <span class="brand-name">FuelUp</span>
    </div>
    <p class="brand-tag">Fuel your body. Fund your focus.</p>
  </div>
</header>

<main>

  <!-- ============ HERO / INTAKE FORM ============ -->
  <section class="hero" id="intake">
    <div class="hero-copy">
      <span class="eyebrow">01 — Tell us about you</span>
      <h1>Know your numbers.<br>Build your plate.</h1>
      <p class="lede">A quick, science-based calorie &amp; nutrition planner made for students —
      figure out what your body actually needs, then build a real meal from foods you already eat.</p>
    </div>

    <form id="profile-form" class="card form-card" autocomplete="off">
      <div class="field-row">
        <div class="field">
          <label for="name">Name</label>
          <input type="text" id="name" name="name" placeholder="e.g. Aarav" required>
        </div>
        <div class="field">
          <label for="age">Age</label>
          <input type="number" id="age" name="age" min="10" max="90" placeholder="20" required>
        </div>
      </div>

      <div class="field-row">
        <div class="field">
          <label for="sex">Biological sex</label>
          <select id="sex" name="sex">
            <option value="male">Male</option>
            <option value="female">Female</option>
          </select>
        </div>
        <div class="field">
          <label for="height">Height (cm)</label>
          <input type="number" id="height" name="height" min="100" max="230" placeholder="170" required>
        </div>
        <div class="field">
          <label for="weight">Weight (kg)</label>
          <input type="number" id="weight" name="weight" min="30" max="200" placeholder="65" required>
        </div>
      </div>

      <div class="field">
        <label for="activity">Activity level</label>
        <select id="activity" name="activity">
          <option value="sedentary">Sedentary — little/no exercise, mostly studying</option>
          <option value="light">Lightly active — 1-3 light workouts/week</option>
          <option value="moderate" selected>Moderately active — 3-5 workouts or sports/week</option>
          <option value="active">Very active — 6-7 workouts/week</option>
          <option value="very_active">Extremely active — athlete / daily training</option>
        </select>
      </div>

      <div class="field-row">
        <div class="field">
          <label for="goal">Goal</label>
          <select id="goal" name="goal">
            <option value="lose">Lose weight</option>
            <option value="maintain" selected>Maintain weight</option>
            <option value="gain">Gain muscle</option>
          </select>
        </div>
        <div class="field">
          <label for="diet_type">Diet preference</label>
          <select id="diet_type" name="diet_type">
            <option value="veg">Vegetarian</option>
            <option value="nonveg" selected>Non-vegetarian</option>
          </select>
        </div>
      </div>

      <button type="submit" class="btn-primary">Calculate my numbers →</button>
      <p class="form-note" id="form-error"></p>
    </form>
  </section>

  <!-- ============ RESULTS DASHBOARD ============ -->
  <section class="dashboard hidden" id="dashboard">
    <span class="eyebrow">02 — Your daily targets</span>
    <h2 id="dash-heading">Here's your fuel plan</h2>

    <div class="dash-grid">

      <!-- Gauge -->
      <div class="card gauge-card">
        <div class="gauge-wrap">
          <svg viewBox="0 0 240 150" class="gauge-svg" id="gauge-svg">
            <path id="gauge-track" d="M 20 130 A 100 100 0 0 1 220 130" />
            <path id="gauge-fill" d="M 20 130 A 100 100 0 0 1 220 130" />
            <g id="gauge-needle" style="transform-origin: 120px 130px;">
              <line x1="120" y1="130" x2="120" y2="45" />
              <circle cx="120" cy="130" r="7" />
            </g>
          </svg>
          <div class="gauge-readout">
            <span class="gauge-value mono" id="gauge-consumed">0</span>
            <span class="gauge-sep">/</span>
            <span class="gauge-target mono" id="gauge-target-num">0</span>
            <span class="gauge-unit">kcal today</span>
          </div>
        </div>
        <p class="gauge-caption">Fuel gauge — fills as you add food to your plate below.</p>
      </div>

      <!-- Stat cards -->
      <div class="stat-stack">
        <div class="card stat-card">
          <span class="stat-label">BMR</span>
          <span class="stat-value mono" id="stat-bmr">—</span>
          <span class="stat-hint">calories your body burns at rest</span>
        </div>
        <div class="card stat-card accent-coral">
          <span class="stat-label">Daily target</span>
          <span class="stat-value mono" id="stat-target">—</span>
          <span class="stat-hint" id="stat-goal-label">calories to reach your goal</span>
        </div>
        <div class="card stat-card">
          <span class="stat-label">TDEE (maintenance)</span>
          <span class="stat-value mono" id="stat-tdee">—</span>
          <span class="stat-hint" id="stat-activity-label">total energy expenditure</span>
        </div>
        <div class="card stat-card accent-amber">
          <span class="stat-label">Active burn (est.)</span>
          <span class="stat-value mono" id="stat-burned">—</span>
          <span class="stat-hint">extra kcal from today's activity</span>
        </div>
      </div>

      <!-- Secondary stats -->
      <div class="card mini-stats">
        <div class="mini-stat">
          <span class="mini-label">BMI</span>
          <span class="mini-value mono" id="stat-bmi">—</span>
          <span class="mini-tag" id="stat-bmi-cat">—</span>
        </div>
        <div class="mini-stat">
          <span class="mini-label">Water target</span>
          <span class="mini-value mono" id="stat-water">—</span>
          <span class="mini-tag">stay hydrated</span>
        </div>
      </div>

      <!-- Macro donut -->
      <div class="card macro-card">
        <span class="stat-label">Macro split</span>
        <div class="macro-body">
          <canvas id="macro-chart" width="150" height="150"></canvas>
          <ul class="macro-legend" id="macro-legend"></ul>
        </div>
      </div>

    </div>
  </section>

  <!-- ============ PLATE BUILDER ============ -->
  <section class="plate-builder hidden" id="plate-builder">
    <span class="eyebrow">03 — Build your plate</span>
    <h2>Pick what you're actually eating today</h2>
    <p class="lede">Choose items from each group, set the amount, and add them to your plate.
    We'll total the calories and macros live against your target.</p>

    <div class="builder-grid">
      <div class="card food-group" data-group="protein">
        <h3><span class="dot dot-protein"></span> Protein</h3>
        <div class="food-controls">
          <select class="food-select"></select>
          <input type="number" class="food-qty" min="0.25" step="0.25" value="1">
          <button type="button" class="btn-add">Add</button>
        </div>
      </div>

      <div class="card food-group" data-group="fiber">
        <h3><span class="dot dot-fiber"></span> Veggies &amp; Fibre</h3>
        <div class="food-controls">
          <select class="food-select"></select>
          <input type="number" class="food-qty" min="0.25" step="0.25" value="1">
          <button type="button" class="btn-add">Add</button>
        </div>
      </div>

      <div class="card food-group" data-group="carbs">
        <h3><span class="dot dot-carbs"></span> Carbs</h3>
        <div class="food-controls">
          <select class="food-select"></select>
          <input type="number" class="food-qty" min="0.25" step="0.25" value="1">
          <button type="button" class="btn-add">Add</button>
        </div>
      </div>
    </div>

    <div class="card plate-summary">
      <div class="plate-table-wrap">
        <table class="plate-table">
          <thead>
            <tr><th>Item</th><th>Qty</th><th>kcal</th><th>Protein</th><th>Carbs</th><th>Fat</th><th></th></tr>
          </thead>
          <tbody id="plate-body">
            <tr class="plate-empty"><td colspan="7">Your plate is empty — add items above.</td></tr>
          </tbody>
        </table>
      </div>

      <div class="plate-progress">
        <div class="progress-row">
          <div class="progress-label"><span>Calories</span><span class="mono" id="prog-cal-text">0 / 0 kcal</span></div>
          <div class="progress-track"><div class="progress-fill fill-coral" id="prog-cal"></div></div>
        </div>
        <div class="progress-row">
          <div class="progress-label"><span>Protein</span><span class="mono" id="prog-protein-text">0 / 0 g</span></div>
          <div class="progress-track"><div class="progress-fill fill-protein" id="prog-protein"></div></div>
        </div>
        <div class="progress-row">
          <div class="progress-label"><span>Carbs</span><span class="mono" id="prog-carbs-text">0 / 0 g</span></div>
          <div class="progress-track"><div class="progress-fill fill-carbs" id="prog-carbs"></div></div>
        </div>
        <div class="progress-row">
          <div class="progress-label"><span>Fat</span><span class="mono" id="prog-fat-text">0 / 0 g</span></div>
          <div class="progress-track"><div class="progress-fill fill-fat" id="prog-fat"></div></div>
        </div>
      </div>

      <p class="plate-verdict" id="plate-verdict"></p>
    </div>
  </section>

</main>

<footer class="site-footer">
  <p>FuelUp is an educational planning tool built for classroom use. Estimates use the Mifflin-St Jeor
  equation and general nutrition averages — they're a starting point for learning, not medical advice.
  Check with a doctor or dietitian for personal medical guidance.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.4/dist/chart.umd.min.js"></script>
<script src="{{ url_for('static', filename='script.js') }}"></script>
</body>
</html>
