<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Job Vacancy Portal</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
  <link rel="stylesheet" href="style.css" />

  <style>
    body {
      font-family: Arial, sans-serif;
      background-image: url('123.jfif');
      background-size: cover;
      background-position: center;
      color: #000;
      margin: 0;
      padding: 0;
    }

    .menu-bar {
      background-color: #141d28;
      height: 80px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 0 5%;
    }

    .menu-bar .logo {
      color: #e9e9e9;
      font-size: 30px;
    }

    .menu-bar ul {
      list-style: none;
      display: flex;
      margin: 0;
      padding: 0;
    }

    .menu-bar ul li {
      padding: 10px 30px;
    }

    .menu-bar ul li a {
      font-size: 20px;
      color: #e9e9e9;
      text-decoration: none;
      transition: all 0.3s ease;
    }

    .menu-bar ul li a:hover {
      color: #0073ff;
    }

    .content {
      width: 1200px;
      margin: auto;
      text-align: left;
    }

    .content h1 {
      font-family: 'Times New Roman', serif;
      font-size: 50px;
      padding-left: 20px;
      margin-top: 9%;
      letter-spacing: 2px;
    }

    .content span {
      color: #000;
      font-size: 65px;
    }

    .par {
      padding-left: 20px;
      padding-bottom: 25px;
      font-family: Arial, sans-serif;
      letter-spacing: 1.2px;
      line-height: 30px;
    }

    .cn {
      width: 160px;
      height: 40px;
      background: #000;
      border: none;
      margin-bottom: 10px;
      margin-left: 20px;
      font-size: 18px;
      border-radius: 10px;
      cursor: pointer;
      transition: 0.4s ease;
    }

    .cn a {
      text-decoration: none;
      color: #fff;
      transition: 0.3s ease;
    }

    .cn:hover {
      background-color: #555;
    }

    .liw {
      padding-top: 15px;
      padding-bottom: 10px;
      text-align: center;
    }

    .contact-form {
      background-color: #fff;
      max-width: 600px;
      margin: 20px auto;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .contact-form div {
      margin-bottom: 15px;
    }

    .contact-form label {
      display: block;
      font-weight: bold;
    }

    .contact-form input,
    .contact-form textarea {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    .contact-form button {
      width: 100%;
      padding: 10px;
      background-color: #171818;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .contact-form button:hover {
      background-color: #555;
    }
  </style>
</head>

<body>
  <div class="menu-bar">
    <h1 class="logo">S.I.E.T. (Poly), Paniv</h1>
    <ul>
      <li><a href="home">Home</a></li>
      <li><a href="aboutpage">About</a></li>
      <li><a href="vacanciespage">Vacancies</a></li>
      <li><a href="contactpage">Contact Us</a></li>
    </ul>
  </div>

  <div class="content">
    <h1>Job Vacancy<br><span>Portal</span><br>For College</h1>
    <p class="par">
      I agree to receive information regarding my submitted application<br>
      by signing up on Shriram Institute of Engineering & Technology, Paniv.
    </p>
    <button class="cn"><a href="home">Click</a></button>
  </div>
</body>
</html>
