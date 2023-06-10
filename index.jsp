<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Login</title>
    <style>
      body {
        background-color: #f2f2f2;
        font-family: Arial, sans-serif;
      }

      h1 {
        color: #333333;
      }

      form {
        margin-top: 20px;
      }

      label {
        display: block;
        margin-bottom: 5px;
        color: #666666;
      }

      input[type="email"] {
        padding: 5px;
        width: 200px;
      }

      button {
        padding: 8px 16px;
        background-color: #4caf50;
        border: none;
        color: white;
        cursor: pointer;
      }

      p.error-message {
        color: red;
        margin-top: 10px;
      }
    </style>
  </head>
  <body>
  <h1>Login</h1>
  <form action="index.jsp" method="post">
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required />
    <button type="submit">Login</button>
    <button onclick="window.location.href='https://advantageonlineshopping.com/#/'">Visit Website</button>
  </form>

  <%-- Retrieve the email parameter from the form  --%>
  <% String email = request.getParameter("email"); %>
  <%-- Check if the email is a Gmail address --%>
  <% if ((email != null) && (email.endsWith("@gmail.com") || email.endsWith("@gmail.co.il"))) { %>
    <%-- Redirect to Google --%>
    <% response.setStatus(302); %>
    <% response.setHeader("Location", "https://www.google.com"); %>
  <% } else if (email != null) { %>
    <%-- Display an error message --%>
    <p class="error-message">
      Invalid email address! Please enter a Gmail address.
    </p>
  <% } %>
  </body>
</html>
