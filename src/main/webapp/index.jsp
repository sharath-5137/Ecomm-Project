<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>LearnHub — Modern Education Platform</title>

    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap)" rel="stylesheet">
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">

    <style>
        :root {
            --primary: #2563eb; /* Professional blue */
            --secondary: #4f46e5; /* Indigo accent */
            --accent: #0ea5e9; /* Bright blue for highlights */
            --text: #1f2937;
            --text-light: #6b7280;
            --bg: #f9fafb;
            --card: #ffffff;
            --border: #e5e7eb;
            --success: #10b981;
            --radius: 12px;
            --shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
        }

        * { box-sizing: border-box; }

        body {
            margin: 0;
            font-family: 'Inter', system-ui, sans-serif;
            color: var(--text);
            background: var(--bg);
            line-height: 1.6;
        }

        a { color: inherit; text-decoration: none; transition: 0.2s; }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* --- Header --- */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.95);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(8px);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 16px 0;
        }

        .brand {
            font-weight: 700;
            font-size: 24px;
            color: var(--primary);
        }

        nav.main-nav ul {
            display: flex;
            gap: 20px;
            list-style: none;
            padding: 0;
        }

        nav.main-nav li a {
            font-weight: 500;
            color: var(--text-light);
            padding: 8px 0;
            border-bottom: 2px solid transparent;
        }

        nav.main-nav li a:hover {
            color: var(--primary);
            border-bottom-color: var(--primary);
        }

        .auth-buttons {
            display: flex;
            gap: 12px;
        }

        .btn {
            padding: 10px 20px;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            border: 0;
            transition: 0.2s;
        }

        .btn-outline {
            background: transparent;
            border: 1px solid var(--border);
            color: var(--text);
        }

        .btn-primary {
            background: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            background: var(--secondary);
        }

        /* --- Hero Section --- */
        .hero {
            padding: 80px 0;
            text-align: center;
            background: linear-gradient(to bottom, #ffffff, #f0f9ff);
        }

        .hero h1 {
            font-size: clamp(32px, 5vw, 48px);
            font-weight: 700;
            margin: 0 0 20px;
            line-height: 1.1;
            color: var(--text);
        }

        .hero p {
            color: var(--text-light);
            max-width: 600px;
            margin: 0 auto 30px;
            font-size: 18px;
        }

        /* --- Courses Section --- */
        .section {
            padding: 80px 0;
        }

        .section-header {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-header h2 {
            font-size: 32px;
            font-weight: 700;
            margin: 0 0 16px;
            color: var(--text);
        }

        .section-header p {
            color: var(--text-light);
            max-width: 600px;
            margin: 0 auto;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        .course-card {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .course-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.08);
        }

        .course-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .course-body {
            padding: 24px;
        }

        .course-title {
            font-size: 18px;
            font-weight: 600;
            margin: 0 0 12px;
            color: var(--text);
        }

        .course-meta {
            display: flex;
            justify-content: space-between;
            color: var(--text-light);
            font-size: 14px;
            margin-bottom: 16px;
        }

        .course-price {
            font-size: 20px;
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 16px;
        }

        /* --- Features Section --- */
        .feature-grid {
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        }

        .feature-card {
            background: var(--card);
            padding: 32px;
            border-radius: var(--radius);
            text-align: center;
            box-shadow: var(--shadow);
        }

        .feature-icon {
            font-size: 40px;
            color: var(--primary);
            margin-bottom: 20px;
        }

        .feature-title {
            font-size: 20px;
            font-weight: 600;
            margin: 0 0 12px;
        }

        .feature-desc {
            color: var(--text-light);
            margin: 0;
        }

        /* --- Footer --- */
        footer {
            background: var(--card);
            border-top: 1px solid var(--border);
            padding: 60px 0;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 40px;
        }

        .footer-col h3 {
            font-size: 18px;
            font-weight: 600;
            margin: 0 0 20px;
        }

        .footer-col ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .footer-col li {
            margin-bottom: 12px;
        }

        .footer-col a {
            color: var(--text-light);
        }

        .footer-col a:hover {
            color: var(--primary);
        }

        .copyright {
            text-align: center;
            color: var(--text-light);
            margin-top: 40px;
            padding-top: 20px;
            border-top: 1px solid var(--border);
        }

        /* Responsive */
        @media (max-width: 768px) {
            nav.main-nav {
                display: none;
            }
            
            .auth-buttons {
                display: none;
            }
            
            .courses-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner">
            <a class="brand" href="#">LearnHub</a>

            <nav class="main-nav">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#courses">Courses</a></li>
                    <li><a href="#features">Features</a></li>
                    <li><a href="#about">About</a></li>
                </ul>
            </nav>

            <div class="auth-buttons">
                <button class="btn btn-outline">Log in</button>
                <button class="btn btn-primary">Sign up</button>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <h1>Learn Without Limits</h1>
                <p>Advance your career with expert-led courses in tech, business, and creative skills. Start learning today.</p>
                <div style="display:flex; gap:16px; justify-content:center;">
                    <button class="btn btn-primary">Explore Courses</button>
                    <button class="btn btn-outline">How It Works</button>
                </div>
            </div>
        </section>

        <section id="courses" class="section">
            <div class="container">
                <div class="section-header">
                    <h2>Popular Courses</h2>
                    <p>Discover our most enrolled courses across various disciplines</p>
                </div>
                <div class="grid courses-grid" style="grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));">
                    <!-- Courses will be inserted here by JavaScript -->
                </div>
            </div>
        </section>

        <section id="features" class="section" style="background: #f8fafc;">
            <div class="container">
                <div class="section-header">
                    <h2>Why Learn With Us</h2>
                    <p>Our platform is designed to help you succeed in your learning journey</p>
                </div>
                <div class="grid feature-grid">
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-graduation-cap"></i>
                        </div>
                        <h3 class="feature-title">Expert Instructors</h3>
                        <p class="feature-desc">Learn from industry professionals with real-world experience</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-laptop-code"></i>
                        </div>
                        <h3 class="feature-title">Hands-On Projects</h3>
                        <p class="feature-desc">Apply what you learn with practical, portfolio-ready projects</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-users"></i>
                        </div>
                        <h3 class="feature-title">Community Support</h3>
                        <p class="feature-desc">Join a community of learners and get help when you need it</p>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col">
                    <h3>LearnHub</h3>
                    <p style="color: var(--text-light);">Advancing education through innovative technology and expert instruction.</p>
                </div>
                <div class="footer-col">
                    <h3>Explore</h3>
                    <ul>
                        <li><a href="#">Courses</a></li>
                        <li><a href="#">Pricing</a></li>
                        <li><a href="#">Success Stories</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h3>Company</h3>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                © <span id="year"></span> LearnHub. All rights reserved.
            </div>
        </div>
    </footer>

    <script>
        const COURSES = [
            { 
                id: 1, 
                title: 'Web Development Bootcamp', 
                price: 99, 
                duration: '12 weeks', 
                lessons: 48, 
                instructor: 'Sarah Johnson',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1555066931-4365d14bab8c?auto=format&fit=crop&w=600&q=80)' 
            },
            { 
                id: 2, 
                title: 'Data Science Fundamentals', 
                price: 129, 
                duration: '10 weeks', 
                lessons: 40, 
                instructor: 'Michael Chen',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&w=600&q=80)' 
            },
            { 
                id: 3, 
                title: 'UX/UI Design Masterclass', 
                price: 89, 
                duration: '8 weeks', 
                lessons: 32, 
                instructor: 'Emma Rodriguez',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1545235617-9465d2a55698?auto=format&fit=crop&w=600&q=80)' 
            }
        ];

        function renderCourses() {
            const grid = document.querySelector('.courses-grid');
            if(!grid) return;
            
            COURSES.forEach(course => {
                const el = document.createElement('div');
                el.className = 'course-card';
                el.innerHTML = `
                    <img src="${course.img}" alt="${course.title}">
                    <div class="course-body">
                        <h3 class="course-title">${course.title}</h3>
                        <div class="course-meta">
                            <span>${course.duration}</span>
                            <span>${course.lessons} lessons</span>
                        </div>
                        <div class="course-meta">
                            <span>By ${course.instructor}</span>
                        </div>
                        <div class="course-price">$${course.price}</div>
                        <button class="btn btn-primary" style="width: 100%;">Enroll Now</button>
                    </div>`;
                grid.appendChild(el);
            });
        }

        document.getElementById('year').innerText = new Date().getFullYear();
        renderCourses();
    </script>
</body>
</html>
