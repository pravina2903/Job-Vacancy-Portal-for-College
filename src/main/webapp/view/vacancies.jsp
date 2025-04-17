<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Vacancy Registration</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f2f5;
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

    .container {
      background-color: #f6f9fd;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      width: 400px;
      margin: 40px auto;
    }

    h1 {
      margin-bottom: 20px;
      color: #000;
      text-align: center;
    }

    .form-group {
      margin-bottom: 15px;
      text-align: left;
    }

    label {
      display: block;
      font-weight: bold;
      margin-bottom: 8px;
      color: #000;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"],
    select,
    input[type="file"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 14px;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="tel"]:focus,
    select:focus,
    input[type="file"]:focus {
      border-color: #0073ff;
      outline: none;
    }

    .submit-btn {
      width: 100%;
      padding: 10px;
      background-color: #7f8181;
      color: white;
      border: none;
      border-radius: 4px;
      font-size: 16px;
      cursor: pointer;
      margin-top: 10px;
    }

    .submit-btn:hover {
      background-color: #0629f3;
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

  <div class="container">
    <h1>Vacancy Registration</h1>
    <form action="submitVacancy" method="POST" enctype="multipart/form-data">
      <div class="form-group">
        <label>Full Name</label>
        <input type="text" name="full-name" required>
      </div>

      <div class="form-group">
        <label>Email Address</label>
        <input type="email" name="email" required>
      </div>

      <div class="form-group">
        <label>Phone Number</label>
        <input type="tel" name="phone" required>
      </div>

      <div class="form-group">
        <label>Position Applied For</label>
        <select name="position" required>
          <option value="" disabled selected>Select position</option>
          <option value="principal">Principal</option>
          <option value="hod">HOD</option>
          <option value="lecturer">Lecturer</option>
          <option value="lab-assistant">Lab Assistant</option>
          <option value="peon">Peon</option>
        </select>
      </div>

      <div class="form-group">
        <label>Qualification</label>
        <select name="qualification" required>
          <option value="" disabled selected>Select qualification</option>
          <option value="post-graduation">Post Graduation</option>
          <option value="masters">Master Degree</option>
          <option value="degree">Degree</option>
          <option value="diploma">Diploma</option>
          <option value="12th">12th Pass</option>
        </select>
      </div>

      <div class="form-group">
        <label>Upload Resume</label>
        <input type="file" name="resume" required>
      </div>

      <button type="submit" class="submit-btn">Submit</button>
    </form>
  </div>
</body>
</html>
