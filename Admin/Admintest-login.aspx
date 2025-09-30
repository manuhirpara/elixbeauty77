<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="Admintest-login.aspx.cs" Inherits="elixbeauty7.Admin.Admintest_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Login - Beauty Admin</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
</head>
<body>
    <div class="auth-container">
        <div class="auth-card">
            <div class="auth-header">
                <div class="logo">
                    <i class="fas fa-palette"></i>
                    <h1>Beauty Admin</h1>
                </div>
                <p>Test Login Page</p>
            </div>
            
            <div style="padding: 30px; text-align: center;">
                <h3>Login Test</h3>
                <p>Use any email and password (min 6 characters) to test login</p>
                <p><strong>Example:</strong></p>
                <p>Email: admin@beauty.com</p>
                <p>Password: 123456</p>
                <br>
                <a href="Adminlogin.aspx" class="auth-btn" style="display: inline-block; text-decoration: none;">
                    <i class="fas fa-sign-in-alt"></i>
                    Go to Login Page
                </a>
            </div>
        </div>
    </div>
    
    <script>
        // Clear any existing login data for testing
        localStorage.removeItem('isLoggedIn');
        localStorage.removeItem('userEmail');
        localStorage.removeItem('userName');
        localStorage.removeItem('rememberMe');
        
        console.log('Test page loaded - login data cleared');
    </script>
</body>
</html>


 </asp:Content>

