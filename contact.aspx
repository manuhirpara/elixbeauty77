<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="elixbeauty7.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
                    <style>
                        /* From Uiverse.io by ClawHack1 */ 
.contact-form {
  background-color: #f2f2f2;
  padding: 20px;
  border-radius: 10px;
}

.contact-form label {
  color: black;
}

.contact-form .heading {
  font-size: 24px;
  color: black;
  ;
  margin-bottom: 12px;
  font-weight: bold;
  display: block;
}

.contact-form form {
  display: flex;
  flex-direction: column;
}

.contact-form label {
  margin-bottom: 10px;
}

textarea {
  resize: none;
  height: 80px;
  width: 200px;
}

.contact-form input, .contact-form textarea {
  padding: 10px;
  border: none;
  border-radius: 5px;
  margin-bottom: 20px;
}

.contact-form input:focus, .contact-form textarea:focus {
  outline: none;
  box-shadow: 0 0 5px #ff6384;
  transform: scale(1.05);
  transition: transform 0.3s ease-in-out;
}

.contact-form button[type="submit"] {
  background-color: #ff6384;
  color: #fff;
  border: none;
  border-radius: 5px;
  padding: 10px 20px;
  font-size: 16px;
  cursor: pointer;
}

.contact-form button[type="submit"]:hover {
  transform: scale(1.1);
  transition: transform 0.3s ease-in-out;
}
.contact-submit {
    background-color: #ff4da6;
    color: white;
    border: none;
    border-radius: 25px;
    padding: 10px 30px;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 4px 12px rgba(255, 77, 166, 0.3);
    width: 150px;
    display: block;
    margin: 20px auto 0 auto;
}

.contact-submit:hover {
    background-color: #e04394;
    box-shadow: 0 6px 16px rgba(255, 77, 166, 0.4);
    transform: translateY(-2px);
}

.contact-submit:active {
    transform: scale(0.97);
}

/* ✅ Custom Disabled Style */
.contact-submit:disabled {
    background-color: #ffcce5;
    color: white;
    opacity: 1;
    cursor: not-allowed;
    box-shadow: none;
}





                    </style>
    <!-- From Uiverse.io by ClawHack1 --> 
     <div class="contact-content">
     <div class="contact-map">
         <iframe title="ElixBeauty Location" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24155.642629919077!2d-74.012!3d40.713!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a316adc0b0b%3A0x4f8b6c7e4d9e12fd!2sLower%20Manhattan%2C%20New%20York%2C%20NY!5e0!3m2!1sen!2sus!4v1700000000000" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
     </div>
<div class="contact-form">
 <center><span class="heading">Contact Us</span></center>
  <form>
      <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
      <asp:TextBox ID="txtnm" runat="server" ></asp:TextBox>
      <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
      <asp:TextBox ID="txteml" runat="server" ></asp:TextBox>
      <asp:Label ID="Label3" runat="server" Text="Message:"></asp:Label>
      <asp:TextBox ID="txtmsg" runat="server"></asp:TextBox>
      <asp:Button ID="Button1" runat="server" Text="Submit" class="contact-submit" OnClick="Button1_Click" />
  </form>
</div>

</div>
</asp:Content>


<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder3">
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



