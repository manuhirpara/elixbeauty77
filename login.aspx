<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="elixbeauty7.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    </br>
    </br>
    </br>
    </br>
                     <%--  <style>
        /* From Uiverse.io by Smit-Prajapati */ 
/* Apply soft pink background */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: #fff0f5; /* light pink */
    margin: 0;
    padding: 0;
}

/* Login container styling */
.login-container {
    width: 350px;
    margin: 80px auto;
    background: white;
    border-radius: 20px;
    padding: 40px;
    box-shadow: 0 10px 30px rgba(255, 105, 180, 0.2);
}

/* Title */
.login-container h2 {
    text-align: center;
    color: #ff1493; /* deep pink */
    font-size: 30px;
    margin-bottom: 20px;
}

/* Input fields */
.login-container input[type="email"],
.login-container input[type="password"] {
    width: 100%;
    padding: 12px;
    margin: 10px 0 20px 0;
    border: 1px solid #ff69b4;
    border-radius: 10px;
    background: #fff8fc;
    box-sizing: border-box;
}

/* Forgot Password */
.login-container a {
    display: block;
    text-align: right;
    color: #ff69b4;
    font-size: 13px;
    text-decoration: none;
    margin-bottom: 15px;
}

.login-container a:hover {
    text-decoration: underline;
}

/* Login button */
.login-container button {
    width: 100%;
    padding: 12px;
    background: linear-gradient(to right, #ff69b4, #ff1493);
    border: none;
    border-radius: 25px;
    color: white;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: background 0.3s ease;
}

.login-container button:hover {
    background: linear-gradient(to right, #ff1493, #ff69b4);
}

/* Social login icons */
.social-login {
    text-align: center;
    margin-top: 20px;
}

.social-login img {
    width: 35px;
    margin: 0 10px;
    cursor: pointer;
    filter: grayscale(100%);
    transition: filter 0.3s;
}

.social-login img:hover {
    filter: grayscale(0%);
}

/* User agreement */
.login-container .agreement {
    text-align: center;
    margin-top: 20px;
    font-size: 12px;
    color: #888;
}
.login-button {
    width: 100%;
    padding: 12px 20px;
    background: linear-gradient(to right, #ff69b4, #ff1493);
    border: none;
    border-radius: 25px;
    color: white;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    box-shadow: 0 4px 12px rgba(255, 105, 180, 0.3);
    transition: all 0.3s ease;
}

.login-button:hover {
    background: linear-gradient(to right, #ff1493, #ff69b4);
    box-shadow: 0 6px 18px rgba(255, 20, 147, 0.4);
    transform: translateY(-2px);
}



    </style>--%>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            background: #fff0f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Force container to occupy full window height */
        .page-wrapper {
            width: 100%;
            min-height: calc(100vh - 100px); /* adjust for header/footer if exists */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            width: 380px;
            background: #fff;
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(255, 105, 180, 0.3);
        }

        .login-container .heading {
            text-align: center;
            color: #ff1493;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 25px;
        }

        .login-container label {
            display: block;
            font-weight: 500;
            color: #333;
            margin-bottom: 5px;
        }

        .login-container .input {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ff69b4;
            border-radius: 10px;
            background: #fff8fc;
            box-sizing: border-box;
            font-size: 14px;
            transition: 0.3s;
        }

        .login-container .input:focus {
            border-color: #ff1493;
            box-shadow: 0 0 5px rgba(255, 20, 147, 0.3);
            outline: none;
        }

        .login-container a {
            display: block;
            text-align: right;
            color: #ff1493;
            font-size: 13px;
            text-decoration: none;
            margin-bottom: 15px;
        }

        .login-container a:hover {
            text-decoration: underline;
        }

        .login-button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 25px;
            background: linear-gradient(to right, #ff69b4, #ff1493);
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 0 4px 12px rgba(255, 105, 180, 0.3);
            transition: all 0.3s ease;
        }

        .login-button:hover {
            background: linear-gradient(to right, #ff1493, #ff69b4);
            box-shadow: 0 6px 18px rgba(255, 20, 147, 0.4);
            transform: translateY(-2px);
        }
    </style>

        <center>
        <!-- From Uiverse.io by Smit-Prajapati --> 
<div class="login-container">
    <div class="center-wrapper">
    <div class="heading" >Login</div>
    <div class="form">
    <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="txteml" runat="server" CssClass="input" placeholder="Username"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtpw" runat="server" CssClass="input" placeholder="Password" TextMode="Password"></asp:TextBox>
        <span class="forgot-password"><a href="#">Forgot Password ?</a></span>
        <asp:Button ID="btnlogin" runat="server" Text="Login"  CssClass="login-button" OnClick="btnlogin_Click" />
    </div>
        </div>
 
      </div>
    </div>
      
  </div>
       
    </center>
</asp:Content>







<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
                                     
   

  </asp:Content>








