<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="loginn.aspx.cs" Inherits="elixbeauty7.loginn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
             
    <header>
        <style>
            .login-container {
    max-width: 500px;
    margin: 80px auto;
    padding: 30px;
    background-color: #f9f9f9;
    border: 2px solid #ccc;
    border-radius: 10px;
    box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
}

.login-title {
    text-align: center;
    margin-bottom: 20px;
    font-size: 28px;
    font-weight: bold;
    color: #333;
}

.login-table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 10px;
}

.login-table td {
    padding: 8px;
    vertical-align: middle;
}

.login-input {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #bbb;
    border-radius: 5px;
}

.login-button {
    background-color: #ff69b4; /* Pink */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s ease;
}

.login-button:hover {
    background-color: #e055a3;
}


/*footer*/

/* Footer container */
footer {
    background-color: #2c3e50; /* Dark blue background */
    color: white;
    padding: 40px 0;
    font-family: 'Segoe UI', sans-serif;
}

/* Main footer layout */
.footer-container {
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    padding: 0 20px;
}

/* Footer sections */
.footer-column {
    flex: 1 1 200px;
    margin: 20px 0;
}

/* Logo and description */
.footer-logo {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
}

.footer-logo img {
    height: 32px;
    margin-right: 10px;
}

.footer-logo span {
    font-weight: bold;
    color: #ff69b4; /* Pink color */
    font-size: 20px;
}

/* Description */
.footer-description {
    margin-bottom: 15px;
    color: #ecf0f1;
}

/* Social icons */
.social-icons a {
    margin-right: 10px;
    display: inline-block;
    background-color: #34495e;
    padding: 8px;
    border-radius: 50%;
    color: white;
    text-decoration: none;
    transition: background-color 0.3s ease;
}

.social-icons a:hover {
    background-color: #1abc9c;
}

/* Section headings */
.footer-column h4 {
    margin-bottom: 15px;
    color: #ff69b4;
}

/* Footer links */
.footer-column ul {
    list-style: none;
    padding: 0;
}

.footer-column ul li {
    margin-bottom: 10px;
}

.footer-column ul li a {
    text-decoration: none;
    color: #ecf0f1;
    transition: color 0.3s;
}

.footer-column ul li a:hover {
    color: #1abc9c;
}

/* Footer bottom */
.footer-bottom {
    text-align: center;
    margin-top: 30px;
    padding-top: 20px;
    border-top: 1px solid #3b4b5b;
    color: #bdc3c7;
    font-size: 14px;
}


        </style>
    </header>
    <div class="login-container">
    <h1 class="login-title">Login Application</h1>
    <table class="login-table">
        <tr>
            <td><label for="txtem">Email:</label></td>
            <td><asp:TextBox ID="txtem" runat="server" CssClass="login-input"></asp:TextBox></td>
        </tr>
        <tr>
            <td><label for="txtpw">Password:</label></td>
            <td><asp:TextBox ID="txtpw" runat="server" TextMode="Password" CssClass="login-input"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="login-button" /></td>
        </tr>
    </table>
</div>

 
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
 
    <footer>
  <div class="footer-container">
    <div class="footer-column">
      <div class="footer-logo">
       
        <span>ElixBeauty</span>
      </div>
      <p class="footer-description">
        Enhancing natural beauty with premium cosmetics
      </p>
      <div class="social-icons">
        <a href="#"><i class="fab fa-facebook-f"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-youtube"></i></a>
      </div>
    </div>

    <div class="footer-column">
      <h4>Quick Links</h4>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Products</a></li>
        <li><a href="#">Explore</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="#">Admin</a></li>
        <li><a href="#">Admin Dashboard</a></li>
      </ul>
    </div>

    <div class="footer-column">
      <h4>Categories</h4>
      <ul>
        <li><a href="#">Skincare</a></li>
        <li><a href="#">Makeup</a></li>
        <li><a href="#">Fragrance</a></li>
        <li><a href="#">Beauty Tools</a></li>
      </ul>
    </div>
  </div>

  <div class="footer-bottom">
    &copy; 2024 ElixBeauty. All rights reserved.
  </div>
</footer>


  </asp:Content>



