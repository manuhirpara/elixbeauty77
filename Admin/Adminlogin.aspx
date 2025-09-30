<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="elixbeauty7.Admin.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    </br>
    </br>
    </br>
    <center>
    <div class="auth-container">
        <div class="auth-card">
            <div class="auth-header">
                <div class="logo">
                    <i class="fas fa-palette"></i>
                    <h1>Beauty Admin</h1>
                </div>
                <p>Sign in to your admin account</p>
            </div>
            
            <form class="auth-form" id="loginForm">
                <div class="form-group">
                  <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                    <div class="input-group">
                       
                       <asp:TextBox ID="txtunm" runat="server" placeholder="Enter Your UserName" CssClass="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plase Enter Your Name" ControlToValidate="txtunm" ForeColor="Red" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>

                    </div>
                </div>
                
                <div class="form-group">
                   <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <div class="input-group">
                      <asp:TextBox ID="txtpass" runat="server" placeholder="Enter Your Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Plase Enter Your Password" ControlToValidate="txtpass" ForeColor="Red" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                        </div>
                    </div>
    
                            
                        
                   
                
                <div class="form-options">
                    <label class="checkbox-container">
                        <input type="checkbox" id="remember">
                        <span class="checkmark"></span>
                        Remember me
                    </label>
                    <a href="#" class="forgot-password">Forgot Password?</a>
                </div>
                
             <%--   <button type="submit" class="auth-btn">
                    <i class="fas fa-sign-in-alt"></i>
                    Sign In
                </button>--%>
                  <asp:Button ID="Button1" runat="server" CssClass="auth-btn" Text="Login" OnClick="btnLogin_Click" />
                            
                
                <div class="auth-link">
                    <p>Don't have an account? <a href="register.html">Register here</a></p>
                </div>
            </form>
        </div>
    </div>
    </center>
</asp:Content>

