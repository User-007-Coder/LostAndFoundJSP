@WebServlet("/index.jsp")

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Lost & Found Portal</title>
    <link rel="shortcut icon" href="fav.ico" type="image/x-icon" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .icon{
            width: 50px;
            height: 50px;

        }
        .brd{
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 5px;
        }

        section {
            padding: 80px 20px;
        }

        .btn-primary {
            background-color: #3999ff;
            border-color: #3999ff;
        }

        .btn-secondary {
            background-color: #efefef;
            border-color: #efefef;
            color: #000;
            font-weight: 600;
        }

        .navbar-brand {
            font-weight: 600;
        }

        footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            text-align: center;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white border-bottom">
        <div class="container">
            <a class="navbar-brand brd"  href="#"> <img src="fav.ico" class="icon" alt="ico"> Campus Connect</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                    <li class="nav-item"><a class="btn btn-primary me-2" href="login.jsp">Login</a></li>
                    <li class="nav-item"><a class="btn btn-light border" href="register.jsp">Register</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Section -->
    <section class="text-center bg-light">
        <div class="container">
            <h2 class="fw-bold mb-3">Welcome to Campus Connect</h2>
            <p class="mb-4">Report lost items or post about found items within our campus community. Let's help each
                other reconnect with our belongings.</p>
            <div class="d-grid gap-3 col-6 col-md-4 mx-auto">
                <a href="login.jsp" class="btn btn-primary btn-lg">Login</a>
                <a href="register.jsp" class="btn btn-secondary btn-lg">Register</a>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="text-center">
        <div class="container">
            <h2 class="fw-bold mb-3">About Us</h2>
            <p class="mb-4">Campus Connect is a platform designed to bring together students and staff who have lost or
                found items on campus. Our goal is to create a supportive and helpful community environment.</p>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="bg-light text-center">
        <div class="container">
            <h2 class="fw-bold mb-3">Contact Us</h2>
            <p class="mb-4">Have questions, suggestions, or need help? Reach out to us.</p>
            <div class="row justify-content-center">
                <div class="col-md-6 text-start">
                    <form>
                        <div class="mb-3">
                            <label for="name" class="form-label">Your Name</label>
                            <input type="text" class="form-control" id="name" placeholder="John Doe">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Your Email</label>
                            <input type="email" class="form-control" id="email" placeholder="john@example.com">
                        </div>
                        <div class="mb-3">
                            <label for="message" class="form-label">Message</label>
                            <textarea class="form-control" id="message" rows="4"
                                placeholder="Write your message..."></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <p class="mb-0">&copy; 2025 Campus Connect. All rights reserved.</p>
        </div>
    </footer>
</body>

</html>
