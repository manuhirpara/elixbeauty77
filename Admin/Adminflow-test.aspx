



<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="Adminflow-test.aspx.cs" Inherits="elixbeauty7.Admin.flow_test" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Beauty Admin - Dashboard</title>
        <link rel="stylesheet" href="style.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    </head>
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flow Test - Beauty Admin</title>
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
                <p>Complete Flow Test</p>
            </div>
            
            <div style="padding: 30px;">
                <h3>Test the Complete Flow:</h3>
                <p><strong>1. Register → 2. Login → 3. Dashboard</strong></p>
                
                <div style="margin: 20px 0; padding: 15px; background: #f8f9fa; border-radius: 8px;">
                    <h4>Step 1: Registration</h4>
                    <p>Click below to go to registration page</p>
                    <a href="AdminRegister.aspx" class="auth-btn" style="display: inline-block; text-decoration: none; margin-top: 10px;">
                        <i class="fas fa-user-plus"></i>
                        Go to Register Page
                    </a>
                </div>
                
                <div style="margin: 20px 0; padding: 15px; background: #e8f5e8; border-radius: 8px;">
                    <h4>Step 2: Login</h4>
                    <p>After registration, you'll be redirected to login page</p>
                    <a href="Adminlogin.aspx" class="auth-btn" style="display: inline-block; text-decoration: none; margin-top: 10px; background: linear-gradient(135deg, #28a745, #34ce57);">
                        <i class="fas fa-sign-in-alt"></i>
                        Go to Login Page
                    </a>
                </div>
                
                <div style="margin: 20px 0; padding: 15px; background: #cce5ff; border-radius: 8px;">
                    <h4>Step 3: Dashboard</h4>
                    <p>After login, you'll be redirected to dashboard</p>
                    <a href="Admindashboard.aspx" class="auth-btn" style="display: inline-block; text-decoration: none; margin-top: 10px; background: linear-gradient(135deg, #17a2b8, #20c997);">
                        <i class="fas fa-tachometer-alt"></i>
                        Go to Dashboard
                    </a>
                </div>
                
                <div style="margin: 20px 0; padding: 15px; background: #fff3cd; border-radius: 8px;">
                    <h4>Test Credentials:</h4>
                    <p><strong>For Registration:</strong></p>
                    <ul style="text-align: left; margin: 10px 0;">
                        <li>First Name: John</li>
                        <li>Last Name: Doe</li>
                        <li>Email: john.doe@beauty.com</li>
                        <li>Phone: +1 (555) 123-4567</li>
                        <li>Password: 123456</li>
                        <li>Role: Admin</li>
                    </ul>
                    <p><strong>For Login:</strong></p>
                    <ul style="text-align: left; margin: 10px 0;">
                        <li>Email: john.doe@beauty.com</li>
                        <li>Password: 123456</li>
                    </ul>
                </div>
                
                <div style="margin: 20px 0; padding: 15px; background: #f8d7da; border-radius: 8px;">
                    <h4>Clear Data (Reset)</h4>
                    <p>Click to clear all stored data and start fresh</p>
                    <button onclick="clearAllData()" class="auth-btn" style="background: linear-gradient(135deg, #dc3545, #e74c3c); margin-top: 10px;">
                        <i class="fas fa-trash"></i>
                        Clear All Data
                    </button>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        function clearAllData() {
            if (confirm('Are you sure you want to clear all data? This will reset everything.')) {
                localStorage.removeItem('isLoggedIn');
                localStorage.removeItem('userEmail');
                localStorage.removeItem('userName');
                localStorage.removeItem('userRole');
                localStorage.removeItem('rememberMe');
                localStorage.removeItem('registeredUser');
                
                alert('All data cleared! You can now start the flow from the beginning.');
            }
        }
        
        // Show current status
        document.addEventListener('DOMContentLoaded', function() {
            const isLoggedIn = localStorage.getItem('isLoggedIn');
            const registeredUser = localStorage.getItem('registeredUser');
            
            let status = '<h4>Current Status:</h4>';
            
            if (registeredUser) {
                const userData = JSON.parse(registeredUser);
                status += `<p>✅ Registered: ${userData.firstName} ${userData.lastName} (${userData.email})</p>`;
            } else {
                status += '<p>❌ Not registered</p>';
            }
            
            if (isLoggedIn) {
                const userName = localStorage.getItem('userName');
                status += `<p>✅ Logged in as: ${userName}</p>`;
            } else {
                status += '<p>❌ Not logged in</p>';
            }
            
            // Add status to page
            const statusDiv = document.createElement('div');
            statusDiv.style.cssText = 'margin: 20px 0; padding: 15px; background: #e2e3e5; border-radius: 8px;';
            statusDiv.innerHTML = status;
            document.querySelector('.auth-card').appendChild(statusDiv);
        });
    </script>
</body>
</html>


 </asp:Content>

