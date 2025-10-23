<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="elixbeauty7.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
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
                        <li><a href="WebForm1.aspx">Home</a></li>
                      <%--  <li><a href="Products.aspx">Products</a></li>--%>
                        <li><a href="explore.aspx">Explore</a></li>
                        <li><a href="about.aspx">About</a></li>
                        <li><a href="contact.aspx">Contact</a></li>
                       <%-- <li><a href="admin.html">Admin</a></li>--%>
                    <%--    <li><a href="admin-dashboard.html" rel="nofollow">Admin Dashboard</a></li>--%>
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
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
                    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="hero-video" aria-hidden="true">
            <video class="hero-video-media" autoplay muted loop playsinline preload="metadata" poster="https://images.unsplash.com/photo-1585386147415-71ef9a79a2f0?w=1200&h=800&fit=crop&crop=center">
                <source src="assets/videos/cosmetics-bg.mp4" type="video/mp4">
                <source src="assets/videos/cosmetics-bg.webm" type="video/webm">
            </video>
        </div>
        <div class="hero-content">
            <h1>Discover Your Natural Beauty</h1>
            <p>
                Premium cosmetics that enhance your natural radiance and bring out your inner glow</p>
           <%-- <button class="cta-button" onclick="scrollToProducts()">
                Shop Now
            </button>--%>
    <asp:Button ID="Button1" button class="cta-button" runat="server" Text="Shop Now" OnClick="Button1_Click" />
        </div>
        <div class="hero-image">
            <div class="hero-product">
                <img src="https://images.unsplash.com/photo-1556228720-195a672e8a03?w=500&h=500&fit=crop&crop=center" alt="Premium Cosmetics">
            </div>
            <div class="floating-elements">
                <div class="floating-item" style="--delay: 0s">
                    <i class="fas fa-star"></i>
                </div>
                <div class="floating-item" style="--delay: 1s">
                    <i class="fas fa-heart"></i>
                </div>
                <div class="floating-item" style="--delay: 2s">
                    <i class="fas fa-gem"></i>
                </div>
            </div>
        </div>
    </section>

    

    <!-- Products Section -->
    <section id="products" class="products">
       <%-- <div class="container">
            <h2>Our Products</h2>
            <div class="product-filters">
                <button class="filter-btn active" data-category="all">
                    All
                </button>
                <button class="filter-btn" data-category="skincare">
                    Skincare
                </button>
                <button class="filter-btn" data-category="makeup">
                    Makeup
                </button>
                <button class="filter-btn" data-category="fragrance">
                    Fragrance
                </button>
                <button class="filter-btn" data-category="tools">
                    Beauty Tools
                </button>
            </div>
            <div class="product-grid" id="productGrid">
                <!-- Products will be dynamically loaded here -->
            </div>--%>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about">
        <div class="container">
            <div class="about-content">
                <div class="about-text">
                    <h2>About us</h2>
                    <p>
                        We believe that beauty comes from within and our products are designed to enhance your natural radiance. Our premium cosmetics are made with the finest ingredients, ensuring quality and effectiveness for every skin type.</p>
                    <div class="features">
                        <div class="feature">
                            <i class="fas fa-leaf"></i>
                            <h3>Natural Ingredients</h3>
                            <p>
                                Made with organic and natural ingredients</p>
                        </div>
                        <div class="feature">
                            <i class="fas fa-certificate"></i>
                            <h3>Quality Assured</h3>
                            <p>
                                Rigorous testing and quality control</p>
                        </div>
                        <div class="feature">
                            <i class="fas fa-heart"></i>
                            <h3>Cruelty Free</h3>
                            <p>
                                Never tested on animals</p>
                        </div>
                    </div>
                    <p class="more-text" id="aboutMoreText">
                        Founded with a passion for clean beauty, ElixBeauty partners with ethical suppliers and dermatologists to craft formulas that are both high-performing and gentle. From concept to creation, we obsess over textures, aromas, and results—so your daily rituals feel as luxurious as they are effective.
                    </p>
                   <%-- <button type="button" class="read-more-btn" id="readMoreBtn" aria-expanded="false" aria-controls="aboutMoreText">
                        Read more
                    </button>--%>
                </div>
                <div class="about-image">
                    <img src="https://images.unsplash.com/photo-1571781926291-c477ebfd024b?w=400&h=400&fit=crop&crop=center" alt="Beauty Products">
                </div>
            </div>
           <%-- <div class="about-stats" id="aboutStats">
                <div class="stat">
                    <span class="stat-number" data-target="10" data-suffix="+">0</span> <span class="stat-label">Years of Excellence</span>
                </div>
                <div class="stat">
                    <span class="stat-number" data-target="500" data-suffix="+">0</span> <span class="stat-label">Products Launched</span>
                </div>
                <div class="stat">
                    <span class="stat-number" data-target="120" data-suffix="K+">0</span> <span class="stat-label">Happy Customers</span>
                </div>
                <div class="stat">
                    <span class="stat-number" data-target="100" data-suffix="%">0</span> <span class="stat-label">Cruelty-Free</span>
                </div>
            </div>--%>
        </div>
    </section>

    <!-- Contact Section -->
   <%-- <section id="contact" class="contact">
        <div class="container">
            <div class="section-header">
                <h2>Contact</h2>
            </div>
            <div class="contact-content">
                <div class="contact-map">
                    <iframe title="ElixBeauty Location" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24155.642629919077!2d-74.012!3d40.713!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a316adc0b0b%3A0x4f8b6c7e4d9e12fd!2sLower%20Manhattan%2C%20New%20York%2C%20NY!5e0!3m2!1sen!2sus!4v1700000000000" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="contact-form-container">
                    <form class="contact-form" id="contactForm">
                        <input type="text" placeholder="Your Name" name="name" required> <small class="error-text" data-error-for="name"></small>
                        <input type="email" placeholder="Your Email" name="email" required> <small class="error-text" data-error-for="email"></small>
                        <input type="text" placeholder="Subject" name="subject" required> <small class="error-text" data-error-for="subject"></small>
                        <textarea placeholder="Your Message" name="message" rows="6" required></textarea> <small class="error-text" data-error-for="message"></small>
                        <input type="text" name="company" id="companyField" class="hp-field" tabindex="-1" autocomplete="off" aria-hidden="true" placeholder="Company">
                        <button type="submit" class="submit-btn">
                            Send to us
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>--%>
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
     <div class="section-header">
     <h2>Contact</h2>
 </div>
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
    <%--  <asp:Button ID="Button1" runat="server" Text="Submit" class="contact-submit" OnClick="Button1_Click" />--%>
      <asp:Button ID="btnsubmit" runat="server" Text="Submit"  class="contact-submit" OnClick="btnsubmit_Click" />
  </form>
</div>

</div>
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">
                
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
                       <%-- <li><a href="Products.aspx" class="nav-link">Products</a></li>--%>
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


