<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="elixbeauty7.Admin.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    </br>
    </br>
    </br>
    </br>
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
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <center>
    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beauty Admin - Register</title>
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
                <p>Create your admin account</p>
            </div>
            
            <form class="auth-form" id="registerForm">
                
                
                <div class="form-group">
               <b>  <asp:Label ID="Label1" runat="server" Text="UserName:"></asp:Label></b>
                    <div class="input-group">
                        
                       <asp:TextBox ID="txtunm" runat="server" Placeholder="Your UserName"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plase Enter Your Name" ControlToValidate="txtunm" ForeColor="Red" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>

                    </div>
                </div>
                
                <div class="form-group">
                <b> <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></b>
                    <div class="input-group">
                        
                      <asp:TextBox ID="txtpass" runat="server" placeholder="Your Password"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Plase Enter Your Password" ControlToValidate="txtpass" ForeColor="Red" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <div class="form-group">
                  <b> <asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label></b>
                    <div class="input-group">
                       
                       <asp:TextBox ID="txtcpss" runat="server" placeholder="Confirm your Password"></asp:TextBox>
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password & Confirm Password shoud be same..." ControlToCompare="txtpass" ControlToValidate="txtcpss" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:CompareValidator>

                            
                    </div>
                </div>
                
           <%--   <asp:Button ID="Button1"  class="auth-btn" runat="server" Text="Register" OnClick="Button1_Click" />
                --%>
    <asp:Button ID="btnRegister" runat="server" class="auth-btn"  Text="Register" OnClick="btnRegister_Click" />
               <%-- <button type="submit" class="auth-btn">
                    <i class="fas fa-user-plus"></i>
                    Create Account
                </button>--%>
                
                <div class="auth-link">
                    <p>Already have an account? <a href="login.html">Sign in here</a></p>
                </div>
            </form>
        </div>
    </div>
    
    </center>
</body>
</html>
 </asp:Content>

