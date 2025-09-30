<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="Admincart.aspx.cs" Inherits="elixbeauty7.Admin.cart" %>
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
    <title>Beauty Admin - Cart Management</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
</head>
<body>
    <div class="sidebar">
        <div class="logo">
            <i class="fas fa-palette"></i>
            <span>Beauty Admin</span>
        </div>
        <nav class="sidebar-nav">
            <ul>
                <li>
                    <a href="Admindashboard.aspx">
                        <i class="fas fa-tachometer-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="Adminproducts.aspx">
                        <i class="fas fa-box"></i>
                        <span>Products</span>
                    </a>
                </li>
                <li>
                    <a href="Adminusers.aspx">
                        <i class="fas fa-users"></i>
                        <span>Users</span>
                    </a>
                </li>
                <li class="active">
                    <a href="Admincart.aspx">
                        <i class="fas fa-shopping-cart"></i>
                        <span>Cart</span>
                    </a>
                </li>
                <li>
                    <a href="Admincontact.aspx">
                        <i class="fas fa-envelope"></i>
                        <span>Contact</span>
                    </a>
                </li>
                <li>
                    <a href="Adminsettings.aspx">
                        <i class="fas fa-cog"></i>
                        <span>Settings</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>

    <div class="main-content">
        <header class="header">
            <div class="header-left">
                <button class="sidebar-toggle">
                    <i class="fas fa-bars"></i>
                </button>
                <h1>Cart Management</h1>
            </div>
            <div class="header-right">
                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Search carts..." id="cartSearch">
                </div>
                <div class="cart-stats">
                    <span class="stat-item">
                        <i class="fas fa-shopping-cart"></i>
                        <span>Active Carts: 45</span>
                    </span>
                    <span class="stat-item">
                        <i class="fas fa-dollar-sign"></i>
                        <span>Total Value: $2,340</span>
                    </span>
                </div>
            </div>
        </header>

        <div class="content">
            <!-- Cart Summary Cards -->
            <div class="cart-summary">
                <div class="summary-card">
                    <div class="summary-icon">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="summary-info">
                        <h3>45</h3>
                        <p>Active Carts</p>
                    </div>
                </div>
                
                <div class="summary-card">
                    <div class="summary-icon">
                        <i class="fas fa-dollar-sign"></i>
                    </div>
                    <div class="summary-info">
                        <h3>$2,340</h3>
                        <p>Total Value</p>
                    </div>
                </div>
                
                <div class="summary-card">
                    <div class="summary-icon">
                        <i class="fas fa-clock"></i>
                    </div>
                    <div class="summary-info">
                        <h3>12</h3>
                        <p>Abandoned Carts</p>
                    </div>
                </div>
                
                <div class="summary-card">
                    <div class="summary-icon">
                        <i class="fas fa-percentage"></i>
                    </div>
                    <div class="summary-info">
                        <h3>73%</h3>
                        <p>Conversion Rate</p>
                    </div>
                </div>
            </div>

            <!-- Filters -->
            <div class="filters-section">
                <div class="filter-group">
                    <label>Status:</label>
                    <select id="cartStatusFilter">
                        <option value="">All Status</option>
                        <option value="active">Active</option>
                        <option value="abandoned">Abandoned</option>
                        <option value="completed">Completed</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label>User Type:</label>
                    <select id="userTypeFilter">
                        <option value="">All Users</option>
                        <option value="guest">Guest</option>
                        <option value="registered">Registered</option>
                        <option value="vip">VIP</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label>Value Range:</label>
                    <input type="range" id="valueRange" min="0" max="1000" value="1000">
                    <span id="valueRangeText">$0 - $1000</span>
                </div>
            </div>

            <!-- Carts Table -->
            <div class="table-container">
                <table class="carts-table">
                    <thead>
                        <tr>
                            <th>Cart ID</th>
                            <th>User</th>
                            <th>Items</th>
                            <th>Total Value</th>
                            <th>Status</th>
                            <th>Last Activity</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="cartsTableBody">
                        <tr>
                            <td>#CART001</td>
                            <td>
                                <div class="user-info">
                                    <img src="https://via.placeholder.com/30" alt="User" class="user-avatar-small">
                                    <div>
                                        <h4>Sarah Johnson</h4>
                                        <p>sarah.johnson@email.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart-items">
                                    <span class="item-count">3 items</span>
                                    <div class="item-preview">
                                        <img src="https://via.placeholder.com/20" alt="Product">
                                        <img src="https://via.placeholder.com/20" alt="Product">
                                        <img src="https://via.placeholder.com/20" alt="Product">
                                    </div>
                                </div>
                            </td>
                            <td>$89.97</td>
                            <td><span class="status active">Active</span></td>
                            <td>2 hours ago</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="viewCart('CART001')" title="View Cart">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon" onclick="editCart('CART001')" title="Edit Cart">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="clearCart('CART001')" title="Clear Cart">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>#CART002</td>
                            <td>
                                <div class="user-info">
                                    <img src="https://via.placeholder.com/30" alt="User" class="user-avatar-small">
                                    <div>
                                        <h4>Mike Wilson</h4>
                                        <p>mike.wilson@email.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart-items">
                                    <span class="item-count">2 items</span>
                                    <div class="item-preview">
                                        <img src="https://via.placeholder.com/20" alt="Product">
                                        <img src="https://via.placeholder.com/20" alt="Product">
                                    </div>
                                </div>
                            </td>
                            <td>$67.50</td>
                            <td><span class="status active">Active</span></td>
                            <td>1 day ago</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="viewCart('CART002')" title="View Cart">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon" onclick="editCart('CART002')" title="Edit Cart">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="clearCart('CART002')" title="Clear Cart">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>#CART003</td>
                            <td>
                                <div class="user-info">
                                    <img src="https://via.placeholder.com/30" alt="User" class="user-avatar-small">
                                    <div>
                                        <h4>Guest User</h4>
                                        <p>guest@temp.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart-items">
                                    <span class="item-count">1 item</span>
                                    <div class="item-preview">
                                        <img src="https://via.placeholder.com/20" alt="Product">
                                    </div>
                                </div>
                            </td>
                            <td>$24.99</td>
                            <td><span class="status abandoned">Abandoned</span></td>
                            <td>3 days ago</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="viewCart('CART003')" title="View Cart">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon" onclick="editCart('CART003')" title="Edit Cart">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="clearCart('CART003')" title="Clear Cart">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>#CART004</td>
                            <td>
                                <div class="user-info">
                                    <img src="https://via.placeholder.com/30" alt="User" class="user-avatar-small">
                                    <div>
                                        <h4>Emma Davis</h4>
                                        <p>emma.davis@email.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart-items">
                                    <span class="item-count">4 items</span>
                                    <div class="item-preview">
                                        <img src="https://via.placeholder.com/20" alt="Product">
                                        <img src="https://via.placeholder.com/20" alt="Product">
                                        <img src="https://via.placeholder.com/20" alt="Product">
                                        <img src="https://via.placeholder.com/20" alt="Product">
                                    </div>
                                </div>
                            </td>
                            <td>$156.75</td>
                            <td><span class="status completed">Completed</span></td>
                            <td>1 week ago</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="viewCart('CART004')" title="View Cart">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon" onclick="editCart('CART004')" title="Edit Cart">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="clearCart('CART004')" title="Clear Cart">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Pagination -->
            <div class="pagination">
                <button class="btn btn-outline" disabled>
                    <i class="fas fa-chevron-left"></i>
                    Previous
                </button>
                <span class="page-info">Page 1 of 8</span>
                <button class="btn btn-outline">
                    Next
                    <i class="fas fa-chevron-right"></i>
                </button>
            </div>
        </div>
    </div>

    <!-- Cart Details Modal -->
    <div id="cartModal" class="modal">
        <div class="modal-content large">
            <div class="modal-header">
                <h2 id="cartModalTitle">Cart Details</h2>
                <button class="close-btn" onclick="closeCartModal()">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="cart-details">
                    <div class="cart-info">
                        <h3>Cart Information</h3>
                        <div class="info-grid">
                            <div class="info-item">
                                <label>Cart ID:</label>
                                <span id="cartId">#CART001</span>
                            </div>
                            <div class="info-item">
                                <label>User:</label>
                                <span id="cartUser">Sarah Johnson</span>
                            </div>
                            <div class="info-item">
                                <label>Status:</label>
                                <span id="cartStatus" class="status active">Active</span>
                            </div>
                            <div class="info-item">
                                <label>Created:</label>
                                <span id="cartCreated">2024-01-15 10:30 AM</span>
                            </div>
                            <div class="info-item">
                                <label>Last Updated:</label>
                                <span id="cartUpdated">2024-01-15 2:30 PM</span>
                            </div>
                            <div class="info-item">
                                <label>Total Items:</label>
                                <span id="cartItems">3</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="cart-items-detail">
                        <h3>Cart Items</h3>
                        <div class="items-list">
                            <div class="cart-item">
                                <img src="https://via.placeholder.com/60" alt="Product">
                                <div class="item-details">
                                    <h4>Premium Lipstick</h4>
                                    <p>Color: Ruby Red</p>
                                    <span class="item-price">$24.99</span>
                                </div>
                                <div class="item-quantity">
                                    <button class="qty-btn" onclick="updateQuantity(-1)">-</button>
                                    <span class="qty">2</span>
                                    <button class="qty-btn" onclick="updateQuantity(1)">+</button>
                                </div>
                                <div class="item-total">$49.98</div>
                                <button class="remove-item" onclick="removeItem()">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                            
                            <div class="cart-item">
                                <img src="https://via.placeholder.com/60" alt="Product">
                                <div class="item-details">
                                    <h4>Anti-Aging Cream</h4>
                                    <p>Size: 50ml</p>
                                    <span class="item-price">$45.99</span>
                                </div>
                                <div class="item-quantity">
                                    <button class="qty-btn" onclick="updateQuantity(-1)">-</button>
                                    <span class="qty">1</span>
                                    <button class="qty-btn" onclick="updateQuantity(1)">+</button>
                                </div>
                                <div class="item-total">$45.99</div>
                                <button class="remove-item" onclick="removeItem()">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </div>
                        
                        <div class="cart-summary-detail">
                            <div class="summary-row">
                                <span>Subtotal:</span>
                                <span>$95.97</span>
                            </div>
                            <div class="summary-row">
                                <span>Shipping:</span>
                                <span>$5.99</span>
                            </div>
                            <div class="summary-row">
                                <span>Tax:</span>
                                <span>$8.16</span>
                            </div>
                            <div class="summary-row total">
                                <span>Total:</span>
                                <span>$110.12</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline" onclick="closeCartModal()">Close</button>
                <button type="button" class="btn btn-primary" onclick="processCart()">Process Cart</button>
            </div>
        </div>
    </div>

</body>
</html>


 </asp:Content>

