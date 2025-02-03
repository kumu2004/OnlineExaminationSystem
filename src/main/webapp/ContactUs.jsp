<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Online Examination System</title>
    <link href="https://fonts.googleapis.com/css2?family=Segoe+UI:wght@400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            color: #444;
            position: relative; /* For positioning shapes */
            overflow: hidden; /* Hide overflow */
        }

        /* Header Styles */
        header {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #007bff; /* Header background */
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 10; /* Bring header above everything else */
        }

        header h1 {
            margin: 0;
            font-size: 24px;
            /* Aligns the title to the left */
            flex-grow: 1; /* Allows title to take up available space */
        }

        nav {
            display: flex;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        nav a:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        /* Background Shapes */
        .shape1, .shape2 {
            position: absolute;
            z-index: 1; /* Behind the container */
        }

        .shape1 {
            width: 300px;
            height: 300px;
            background-color: rgba(0, 123, 255, 0.1);
            border-radius: 50%;
            top: -100px; /* Adjust position */
            left: -100px; /* Adjust position */
            transform: rotate(30deg);
        }

        .shape2 {
            width: 200px;
            height: 200px;
            background-color: rgba(0, 123, 255, 0.15);
            border-radius: 50%;
            bottom: -100px; /* Adjust position */
            right: -100px; /* Adjust position */
            transform: rotate(15deg);
        }

        .container {
            max-width: 800px;
            margin: 80px auto; /* Adjusted to prevent overlap with the header */
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            position: relative; /* For z-index layering */
            z-index: 5; /* Bring container above shapes */
        }

        h1 {
            text-align: center;
            color: #007bff;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .contact-info {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 20px;
        }

        .info-item {
            background-color: #007bff;
            color: white;
            padding: 15px;
            margin: 10px 0;
            border-radius: 5px;
            width: 100%;
            display: flex;
            align-items: center;
        }

        .info-item i {
            margin-right: 10px;
            font-size: 1.5rem;
        }

        .form-container {
            margin-top: 20px;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            width: 100%;
        }

        button:hover {
            background-color: #0056b3;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 0.9rem;
            color: #777;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .info-item {
                flex-direction: column;
                align-items: flex-start;
            }

            .info-item i {
                margin-bottom: 5px;
            }
        }
    </style>
</head>
<body>

<header>
    <h1>ExamNet</h1>
    <nav>
        <a href="Home.jsp">Home</a>
        <a href="Category.jsp">Category</a>
        <a href="ContactUs.jsp">Contact Us</a>
        <a href="Privacy.jsp">Privacy Policy</a>
        <a href="FAQ.jsp">FAQ</a>
    </nav>
   
</header>

<div class="shape1"></div>
<div class="shape2"></div>

<div class="container">
    <h1>Contact Us</h1>
    <div class="contact-info">
        <div class="info-item">
            <i class="fas fa-phone"></i>
            <div>
                <strong>Phone:</strong> +123 456 7890
            </div>
        </div>
        <div class="info-item">
            <i class="fab fa-whatsapp"></i>
            <div>
                <strong>WhatsApp:</strong> <a href="https://wa.me/1234567890" style="color: white; text-decoration: underline;">Chat with us!</a>
            </div>
        </div>
        <div class="info-item">
            <i class="fas fa-envelope"></i>
            <div>
                <strong>Email:</strong> <a href="mailto:info@example.com" style="color: white; text-decoration: underline;">info@example.com</a>
            </div>
        </div>
        <div class="info-item">
            <i class="fas fa-map-marker-alt"></i>
            <div>
                <strong>Location:</strong> 123 Exam St, Test City, TC 12345
            </div>
        </div>
    </div>

    <div class="form-container">
        <h2>Send Us a Message</h2>
        <form id="contactForm">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" required>

            <label for="subject">Subject</label>
            <input type="text" id="subject" name="subject" required>

            <label for="message">Message</label>
            <textarea id="message" name="message" rows="4" required></textarea>

            <button type="submit">Send Message</button>
        </form>
    </div>

    <div class="footer">
        <p>&copy; 2024 Online Examination System</p>
    </div>
</div>

<script>
    // Handle form submission
    document.getElementById('contactForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent the default form submission

        // Gather the form data
        const name = document.getElementById('name').value;
        const email = document.getElementById('email').value;
        const subject = document.getElementById('subject').value;
        const message = document.getElementById('message').value;

        // Here you would typically send the data to your server
        // For now, we'll just log it to the console
        console.log('Form submitted:', { name, email, subject, message });

        // Clear the form after submission
        this.reset();
        alert('Thank you for contacting us! We will get back to you soon.');
    });
</script>

</body>
</html>