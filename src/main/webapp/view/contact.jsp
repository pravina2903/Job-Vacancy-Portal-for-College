<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Contact Us - S.I.E.T.(poly), Paniv</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
  <style>
    :root {
      --color-primary: #0073ff;
      --color-white: #e9e9e9;
      --color-black: #141d28;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background-image: url('123.jfif');
      background-size: cover;
      background-position: center;
      font-family: Arial, sans-serif;
      color: white;
    }

    .menu-bar {
      background-color: var(--color-black);
      height: 80px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 0 5%;
    }

    .logo {
      font-size: 30px;
      color: var(--color-white);
    }

    .menu-bar ul {
      list-style: none;
      display: flex;
    }

    .menu-bar ul li {
      padding: 10px 30px;
    }

    .menu-bar ul li a {
      font-size: 20px;
      color: var(--color-white);
      text-decoration: none;
      transition: all 0.3s;
    }

    .menu-bar ul li a:hover {
      color: var(--color-primary);
    }

    .content {
      padding: 40px;
      text-align: center;
    }

    .content h1 span {
      display: block;
      font-size: 22px;
      margin: 5px 0;
    }

    .contact-info ul {
      list-style: none;
      padding: 0;
      font-size: 18px;
      margin-bottom: 20px;
    }

    .contact-info li {
      margin: 5px 0;
    }

    .contact-form {
      max-width: 600px;
      margin: 0 auto;
      background: rgba(0, 0, 0, 0.6);
      padding: 20px;
      border-radius: 10px;
    }

    .form-group {
      margin-bottom: 15px;
      text-align: left;
    }

    .form-group label {
      display: block;
      margin-bottom: 5px;
      color: white;
    }

    .form-group input,
    .form-group textarea {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 5px;
      font-size: 16px;
    }

    .submit-btn {
      background-color: var(--color-primary);
      color: white;
      border: none;
      padding: 10px 20px;
      font-size: 16px;
      border-radius: 5px;
      cursor: pointer;
    }

    .submit-btn:hover {
      background-color: #005fcc;
    }
  </style>
</head>
<body>

  <div class="menu-bar">
    <h1 class="logo">S.I.E.T.(poly), Paniv</h1>
    <ul>
      <li><a href="home">Home</a></li>
      <li><a href="aboutpage">About</a></li>
      <li><a href="vacanciespage">Vacancies</a></li>
      <li><a href="contactpage">Contact us</a></li>
    </ul>
  </div>

  <div class="content">
    <h1>Contact Us</h1>
    <h2>
      <span>Shriram Shikshan Santha's</span>
      <span>Shriram Institute of Engineering & Technology, Paniv</span>
    </h2>

    <div class="contact-info">
      <ul>
        <li>Tal. Malshiras, Dist. Solapur, Pin: 413113 (Maharashtra)</li>
        <li><strong>Email:</strong> sietpoly@gmail.com</li>
        <li><strong>Phone:</strong> +91 8958520994</li>
      </ul>
    </div>

    <div class="contact-form">
      <form action="contactdata" method="POST" enctype="multipart/form-data">
        <div class="form-group">
          <label for="name">Full Name:</label>
          <input type="text" id="yourname" name="yourname" required>
        </div>
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
          <label for="number">Phone Number:</label>
          <input type="text" id="phonenumber" name="phonenumber" required>
        </div>
        <div class="form-group">
          <label for="message">Message:</label>
          <textarea id="message" name="message" required></textarea>
        </div>
        <button type="submit" class="submit-btn">Send Message</button>
      </form>
    </div>
  </div>

</body>
</html>
