<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="explore.aspx.cs" Inherits="elixbeauty7.explore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
   .product-card {
    font-family: 'Poppins', sans-serif;
    background-color: #fff;
    border-radius: 12px;
    padding: 15px;
    width: 280px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    transition: all 0.3s ease;
    margin: auto;
    border: 1px solid #f0f0f0;
}

.product-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.08);
}
/*Hello*/
.product-card img {
    width: 100%;
    height: 180px;
    object-fit: cover;
    border-radius: 12px;
    margin-bottom: 15px;
    background-color: #f3f3f3;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.product-info p {
    margin: 6px 0;
    font-size: 15px;
    color: #333;
}

.label-title {
    font-weight: 600;
    color: #111;
    margin-right: 4px;
}

.label-value {
    font-weight: 400;
    color: #555;
}

/* Product Labels Styling */
.product-card label {
    font-weight: 600;
    color: #2c3e50;
    font-size: 14px;
    margin-right: 8px;
    display: inline-block;
    min-width: 60px;
}

.product-card .product-name {
    font-weight: 600;
    color: #2c3e50;
    font-size: 15px;
    margin: 12px 0 8px 0;
    line-height: 1.3;
    height: 40px;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}

.product-card .product-category {
    font-weight: 500;
    color: #7f8c8d;
    font-size: 12px;
    margin: 0 0 8px 0;
    text-transform: uppercase;
    letter-spacing: 0.5px;
}

.product-card .product-price {
    font-weight: 700;
    color: #e74c3c;
    font-size: 18px;
    margin: 8px 0 15px 0;
}

.btn-add-cart {
    background: linear-gradient(135deg, #ff6b6b, #ee5a52);
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 25px;
    font-size: 14px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
    margin-top: 10px;
    width: 100%;
    box-shadow: 0 4px 8px rgba(255, 107, 107, 0.3);
}

.btn-add-cart:hover {
    background: linear-gradient(135deg, #ee5a52, #ff6b6b);
    transform: translateY(-2px);
    box-shadow: 0 6px 12px rgba(255, 107, 107, 0.4);
}

.btn-add-cart:active {
    transform: translateY(0);
    box-shadow: 0 2px 4px rgba(255, 107, 107, 0.3);
}

/* View Details Button Styling */
.btn-view-details {
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white;
    border: none;
    padding: 8px 16px;
    border-radius: 20px;
    font-size: 13px;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s ease;
    margin-top: 8px;
    width: 100%;
    box-shadow: 0 3px 6px rgba(102, 126, 234, 0.3);
    text-decoration: none;
    display: inline-block;
    text-align: center;
}

.btn-view-details:hover {
    background: linear-gradient(135deg, #764ba2, #667eea);
    transform: translateY(-2px);
    box-shadow: 0 5px 10px rgba(102, 126, 234, 0.4);
    text-decoration: none;
    color: white;
}

.btn-view-details:active {
    transform: translateY(0);
    box-shadow: 0 2px 4px rgba(102, 126, 234, 0.3);
}

/* Pagination Buttons Styling */
.pagination-container {
    text-align: center;
    margin: 30px 0;
    padding: 20px 0;
}

.pagination-container a,
.pagination-container .pagination-btn {
    display: inline-block;
    padding: 12px 24px;
    margin: 0 10px;
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white !important;
    text-decoration: none;
    border-radius: 25px;
    font-weight: 600;
    font-size: 14px;
    transition: all 0.3s ease;
    box-shadow: 0 4px 8px rgba(102, 126, 234, 0.3);
    border: none;
    cursor: pointer;
}

.pagination-container a:hover,
.pagination-container .pagination-btn:hover {
    background: linear-gradient(135deg, #764ba2, #667eea);
    transform: translateY(-2px);
    box-shadow: 0 6px 12px rgba(102, 126, 234, 0.4);
    text-decoration: none;
    color: white !important;
}

.pagination-container a:active,
.pagination-container .pagination-btn:active {
    transform: translateY(0);
    box-shadow: 0 2px 4px rgba(102, 126, 234, 0.3);
}

.pagination-container a:disabled,
.pagination-container .pagination-btn:disabled {
    background: #ccc !important;
    color: #666 !important;
    cursor: not-allowed;
    transform: none;
    box-shadow: none;
}

.pagination-container a:disabled:hover,
.pagination-container .pagination-btn:disabled:hover {
    background: #ccc !important;
    transform: none;
    box-shadow: none;
}

        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
                    </br>
    <html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Explore Products - ElixBeauty</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
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
                <li><a href="Products.aspx" class="nav-link">Products</a></li>
                <li><a href="explore.aspx" class="nav-link active">Explore</a></li>
                <li><a href="about.aspx" class="nav-link">About</a></li>
                <li><a href="contact.aspx#contact" class="nav-link">Contact</a></li>
            </ul>
                           <%-- <button class="btn-login" onclick="openModal('loginModal')">Login</button>--%>
                <!-- Login Button -->
<button class="btn-login" onclick="window.location.href='login.aspx'">Login</button>

<!-- Register Button -->
<button class="btn-register" onclick="window.location.href='registerruser.aspx'">Register</button>
        </div>
    </nav>

    <main class="container" style="padding-top:120px; padding-bottom:60px;">
        <header class="section-header">
            <h2>Explore Products</h2>
            <p>Search, filter and sort through our premium cosmetics</p>
        </header>

        <section class="explore-controls" aria-label="Explore Controls">
            <div class="explore-search">
                <i class="fas fa-search"></i>
                <input type="text" id="searchInput" placeholder="Search products..." aria-label="Search products">
            </div>
            <div class="explore-filters" id="categoryFilters" aria-label="Category filters"></div>
            <div class="explore-sort">
                <label for="sortSelect">Sort by</label>
                <select id="sortSelect" aria-label="Sort products">
                    <option value="relevance">Relevance</option>
                    <option value="price_asc">Price: Low to High</option>
                    <option value="price_desc">Price: High to Low</option>
                    <option value="name_asc">Name: A → Z</option>
                    <option value="name_desc">Name: Z → A</option>
                </select>
            </div>
         </section>
         <div class="product-filters">
    
     <button class="filter-btn" data-category="MAC cosmetic">MAC cosmetic</button>
     <button class="filter-btn" data-category="mamaearth">mamaearth</button>
     <button class="filter-btn" data-category="sugar cosmetic">sugar cosmetic</button>
     <button class="filter-btn" data-category="Nykaa">Nykaa</button>
 </div>
         
        <asp:DataList ID="DataList1" runat="server" CellPadding="10" RepeatDirection="Horizontal" CellSpacing="50" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <div class="product-card">
               <%-- <asp:Image ID="Image1" Height="180px" Width="180px" runat="server" ImageUrl='<%# Eval("Image") %>' />
               --%> 
                    <img src='<%# ResolveUrl("~/Admin/images/" + System.IO.Path.GetFileName(Eval("Image").ToString())) %>' 
     alt="Product" />
                <div class="product-name">  
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                </div>
                
                <div class="product-category">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Catagory") %>'></asp:Label>
                </div>
                
                <div class="product-price">
                    ₹<asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                </div>
                
               <%-- <asp:LinkButton ID="btnViewDetails" runat="server" Text="View Details" 
                    CssClass="btn-view-details" 
                    CommandName="ViewDetails" 
                    CommandArgument='<%# Eval("Id") %>' 
                    OnClick="btnViewDetails_Click" />--%>
                
                    <asp:LinkButton ID="cmd_atc" runat="server"  CssClass="btn-view-details"  CommandArgument='<%# Eval("Id") %>'>Add to Cart</asp:LinkButton>
                    <br />
                   
                    <br>
                   
                    </br>
                    <asp:LinkButton ID="cmd_vd" runat="server"  CssClass="btn-add-cart"  CommandArgument='<%# Eval("Id") %>'>View Details</asp:LinkButton>
                    </div>
            </ItemTemplate>
    </asp:DataList>
     <div class="pagination-container">
         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="pagination-btn">Previous</asp:LinkButton>
         <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="pagination-btn">Next</asp:LinkButton>
     </div>
    </main>

</body>
</html>
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
            <%--    <div class="footer-section">
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



