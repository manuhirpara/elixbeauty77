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
     <%-- <div class="social-buttons">
        <span class="title">Or Sign in with</span>
        <div class="social-accounts">
          <button class="social-button google">
            <svg class="svg" xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 488 512">
              <path d="M488 261.8C488 403.3 391.1 504 248 504 110.8 504 0 393.2 0 256S110.8 8 248 8c66.8 0 123 24.5 166.3 64.9l-67.5 64.9C258.5 52.6 94.3 116.6 94.3 256c0 86.5 69.1 156.6 153.7 156.6 98.2 0 135-70.4 140.8-106.9H248v-85.3h236.1c2.3 12.7 3.9 24.9 3.9 41.4z"></path>
            </svg></button>
          <button class="social-button apple">
            <svg class="svg" xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 384 512">
              <path d="M318.7 268.7c-.2-36.7 16.4-64.4 50-84.8-18.8-26.9-47.2-41.7-84.7-44.6-35.5-2.8-74.3 20.7-88.5 20.7-15 0-49.4-19.7-76.4-19.7C63.3 141.2 4 184.8 4 273.5q0 39.3 14.4 81.2c12.8 36.7 59 126.7 107.2 125.2 25.2-.6 43-17.9 75.8-17.9 31.8 0 48.3 17.9 76.4 17.9 48.6-.7 90.4-82.5 102.6-119.3-65.2-30.7-61.7-90-61.7-91.9zm-56.6-164.2c27.3-32.4 24.8-61.9 24-72.5-24.1 1.4-52 16.4-67.9 34.9-17.5 19.8-27.8 44.3-25.6 71.9 26.1 2 49.9-11.4 69.5-34.3z"></path>
            </svg>
          </button>
          <button class="social-button twitter">
            <svg class="svg" xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512">
              <path d="M389.2 48h70.6L305.6 224.2 487 464H345L233.7 318.6 106.5 464H35.8L200.7 275.5 26.8 48H172.4L272.9 180.9 389.2 48zM364.4 421.8h39.1L151.1 88h-42L364.4 421.8z"></path>
            </svg>
          </button>
        </div>--%>
      </div>
    </div>
      
  </div>
       
    </center>
</asp:Content>







<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
                                     
   

  </asp:Content>








