<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registerruser.aspx.cs" Inherits="elixbeauty7.registerruser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
   body {
       font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
       background: #f4f6f9;
       margin: 0;
       padding: 0;
   }

   .register-container {
       width: 400px;
       margin: 50px auto;
       background: #fff;
       padding: 30px;
       border-radius: 12px;
       box-shadow: 0 8px 20px rgba(0,0,0,0.15);
   }

   .register-container h2 {
       text-align: center;
       font-family: cursive, sans-serif;
       font-size: 28px;
       margin-bottom: 20px;
       color: #333;
   }

   .register-title {
       text-align: center;
       font-family: 'Poppins', sans-serif;
       font-size: 36px;
       font-weight: 700;
       margin-bottom: 30px;
       color: #2c3e50;
       text-transform: uppercase;
       letter-spacing: 2px;
       background: linear-gradient(135deg, #667eea, #764ba2);
       -webkit-background-clip: text;
       -webkit-text-fill-color: transparent;
       background-clip: text;
   }

   .register-container label {
       display: block;
       margin: 15px 0 8px;
       font-weight: 600;
       font-size: 14px;
       color: #2c3e50;
       font-family: 'Poppins', sans-serif;
       text-transform: uppercase;
       letter-spacing: 0.5px;
   }

   .register-container input[type="text"],
   .register-container input[type="password"],
   .register-container input[type="email"],
   .register-container input[type="file"] {
       width: 100%;
       padding: 12px 15px;
       border: 2px solid #e1e5e9;
       border-radius: 8px;
       margin-bottom: 15px;
       font-size: 14px;
       font-family: 'Poppins', sans-serif;
       transition: all 0.3s ease;
       background-color: #f8f9fa;
   }

   .register-container input:focus {
       border-color: #667eea;
       outline: none;
       box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
       background-color: #fff;
       transform: translateY(-1px);
   }

   /* Radio buttons */
   .register-container .gender {
       margin: 15px 0;
       display: flex;
       align-items: center;
       gap: 20px;
   }

   .register-container input[type="radio"] {
       margin-right: 8px;
       transform: scale(1.2);
       accent-color: #667eea;
   }

   .register-container .gender label {
       display: inline;
       margin: 0;
       font-weight: 500;
       color: #555;
       text-transform: none;
       letter-spacing: normal;
   }

   /* Centered Button */
   .btn-container {
       text-align: center;
       margin-top: 10px;
   }

   .register-container input[type="submit"],
   .register-container asp\:button {
       padding: 10px 25px;
       background: #007bff;
       border: none;
       border-radius: 6px;
       color: #fff;
       font-size: 15px;
       font-weight: 600;
       cursor: pointer;
       transition: 0.3s;
   }

   .register-container input[type="submit"]:hover,
   .register-container asp\:button:hover {
       background: #0056b3;
   }

   /* Login link */
   .register-container p {
       margin-top: 15px;
       text-align: center;
       font-size: 14px;
       color: #555;
   }

   .register-container p a {
       color: #007bff;
       font-weight: 600;
       text-decoration: none;
   }

   .register-container p a:hover {
       text-decoration: underline;
   }

   .switch {
       display: block;
       text-align: center;
       margin-top: 20px;
       font-size: 14px;
       color: #555;
       font-family: 'Poppins', sans-serif;
   }

   .switch a {
       color: #667eea;
       font-weight: 600;
       text-decoration: none;
       transition: color 0.3s ease;
   }

   .switch a:hover {
       color: #764ba2;
       text-decoration: underline;
   }
   .register-button {
    width: 100%;
    padding: 15px 25px;
    background: linear-gradient(135deg, #667eea, #764ba2);
    border: none;
    border-radius: 8px;
    color: white;
    font-size: 16px;
    font-weight: 600;
    font-family: 'Poppins', sans-serif;
    cursor: pointer;
    box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
    transition: all 0.3s ease;
    text-transform: uppercase;
    letter-spacing: 1px;
    margin-top: 20px;
}

.register-button:hover {
    background: linear-gradient(135deg, #764ba2, #667eea);
    box-shadow: 0 6px 20px rgba(102, 126, 234, 0.4);
    transform: translateY(-2px);
}

.register-button:active {
    transform: translateY(0);
    box-shadow: 0 2px 8px rgba(102, 126, 234, 0.3);
}

</style>

</asp:Content>





<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
                   <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <div class="footer-logo">
                        <div class="logo-icon">
                            <i class="fas fa-spa"></i>
                        </div>
                        <h3>ElixBeauty</h3>
                    </div>
                    <p>
                        Enhancing natural beauty with premium cosmetics</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook"></i></a><a href="#"><i class="fab fa-instagram"></i></a><a href="#"><i class="fab fa-twitter"></i></a><a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#products">Products</a></li>
                        <li><a href="explore.html">Explore</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li><a href="admin.html">Admin</a></li>
                        <li><a href="admin-dashboard.html" rel="nofollow">Admin Dashboard</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Categories</h3>
                    <ul>
                        <li><a href="#skincare">Skincare</a></li>
                        <li><a href="#makeup">Makeup</a></li>
                        <li><a href="#fragrance">Fragrance</a></li>
                        <li><a href="#tools">Beauty Tools</a></li>
                    </ul>
                </div>
               <%-- <div class="footer-section">
                    <h3>Newsletter</h3>
                    <p>
                        Subscribe for beauty tips and exclusive offers</p>
                    <form class="newsletter-form">
                        <input type="email" placeholder="Your Email" required>
                        <button type="submit">
                            Subscribe
                        </button>
                    </form>
                </div>--%>
            </div>
            <div class="footer-bottom">
                <p>
                    &copy; <span id="yearPlaceholder">2024</span> ElixBeauty. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <!-- Login Modal -->
    <div id="loginModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('loginModal')">&times;</span>
            <h2>Login</h2>
            <form id="loginForm" class="auth-form">
                <input type="email" placeholder="Email" required>
                <input type="password" placeholder="Password" required>
                <button type="submit">
                    Login
                </button>
            </form>
            <p>
                Don't have an account? <a href="#" onclick="switchModal('loginModal', 'registerModal')">Register here</a></p>
        </div>
    </div>

    <!-- Register Modal -->
    <div id="registerModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('registerModal')">&times;</span>
            <h2>Register</h2>
            <form id="registerForm" class="auth-form">
                <input type="text" placeholder="Full Name" required>
                <input type="email" placeholder="Email" required>
                <input type="password" placeholder="Password" required>
                <input type="password" placeholder="Confirm Password" required>
                <button type="submit">
                    Register
                </button>
            </form>
            <p>
                Already have an account? <a href="#" onclick="switchModal('registerModal', 'loginModal')">Login here</a></p>
        </div>
    </div>

    <!-- Shopping Cart Sidebar -->
    <div id="cartSidebar" class="cart-sidebar">
        <div class="cart-header">
            <h3>Shopping Cart</h3>
            <button class="close-cart" onclick="toggleCart()">
                &times;
            </button>
        </div>
        <div class="cart-items" id="cartItems">
            <!-- Cart items will be displayed here -->
        </div>
        <div class="cart-footer">
            <div class="cart-total">
                <span>Total:</span> <span id="cartTotal">$0.00</span>
            </div>
            <button class="checkout-btn" onclick="openCheckout()">
                Checkout
            </button>
        </div>
    </div>

    <!-- Checkout Modal -->
    <div id="checkoutModal" class="modal">
        <div class="modal-content checkout-content">
            <span class="close" onclick="closeModal('checkoutModal')">&times;</span>
            <h2>Checkout</h2>
            <form id="checkoutForm" class="checkout-form">
                <div class="form-section">
                    <h3>Shipping Information</h3>
                    <input type="text" placeholder="Full Name" required>
                    <input type="email" placeholder="Email" required>
                    <input type="text" placeholder="Address" required>
                    <input type="text" placeholder="City" required>
                    <input type="text" placeholder="Postal Code" required>
                    <input type="text" placeholder="Country" required>
                </div>
                <div class="form-section">
                    <h3>Payment Information</h3>
                    <input type="text" placeholder="Card Number" required>
                    <div class="card-details">
                        <input type="text" placeholder="MM/YY" required>
                        <input type="text" placeholder="CVV" required>
                    </div>
                </div>
                <div class="order-summary">
                    <h3>Order Summary</h3>
                    <div id="checkoutItems">
                    </div>
                    <div class="total-row">
                        <span>Total:</span> <span id="checkoutTotal">$0.00</span>
                    </div>
                </div>
                <button type="submit" class="place-order-btn">
                    Place Order
                </button>
            </form>
        </div>
    </div>

    <!-- Overlay -->
    <div id="overlay" class="overlay" onclick="closeAllModals()">
    </div>

</body>
</html>

  </asp:Content>







<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
                    <div class="register-container">
    <p class="register-title">Register</p>
<form class="auth-form" id="registerForm">
    <center>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label><br />
                    <asp:TextBox ID="txtunm" runat="server" Placeholder="Enter Your User Name"></asp:TextBox>
                    

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
                    <asp:TextBox ID="txtpass" runat="server" Placeholder="Enter Your Password"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Name"></asp:Label><br />
                    <asp:TextBox ID="txtnm" runat="server" Placeholder="Enter Your Name"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Image"></asp:Label><br />
                    <asp:FileUpload ID="fldimg" ImageUrl='<%# Eval("Image") %>' runat="server"/>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label><br />
                    <asp:RadioButtonList ID="rdbgrn" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label><br />
                    <asp:TextBox ID="txteml" runat="server" Placeholder="Enter Your Email"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click4" CssClass="register-button"/>
            </tr>
        </table>
    </center>
    </form>
    <span class="switch">Already have an account? <a href="Login.aspx">Login</a>
    </span>
</div>
</asp:Content>








<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
                
<!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>ElixBeauty - Premium Cosmetics</title>
        <link rel="stylesheet" href="styles.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    </head>
    <body>
    <!-- Header / Navigation -->
        <header>
            <nav class="navbar" role="navigation" aria-label="Primary Navigation">
                <div class="nav-container">
                    <div class="nav-logo">
                        <div class="logo-icon">
                            <i class="fas fa-spa"></i>
                        </div>
                        <h2>ElixBeauty</h2>
                    </div>
                    <ul class="nav-menu">
                        <li><a href="WebForm1.aspx" class="nav-link">Home</a></li>
                      
                        <li><a href="explore.aspx" class="nav-link">Explore</a></li>
<%--                <li><a href="admin-dashboard.html" class="nav-link">Admin Dashboard</a></li>--%>
                        <li><a href="about.aspx" class="nav-link">About</a></li>
                        <li><a href="contact.aspx" class="nav-link">Contact</a></li>
                        <li><a href="login.aspx" class="nav-link">Login</a></li>
                        <li><a href="registerruser.aspx" class="nav-link">Register</a></li>
                    </ul>
                    <div class="nav-actions">
               <%-- <button class="btn-login" onclick="openModal('loginModal')">Login</button>--%>
                <!-- Login Button -->
<%--<button class="btn-login" onclick="window.location.href='login.aspx'">Login</button>

<!-- Register Button -->
<button class="btn-register" onclick="window.location.href='registerruser.aspx'">Register</button>--%>

               <%-- <button class="btn-register" onclick="openModal('registerModal')">Register</button>--%>
                        <div class="cart-icon" onclick="toggleCart()">
                            <i class="fas fa-shopping-cart"></i><span class="cart-count" id="cartCount">0</span>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
</asp:Content>









