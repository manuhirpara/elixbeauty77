<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="Admindashboard.aspx.cs" Inherits="elixbeauty7.Admin.dashboard" %>
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
    <body>
        <div class="sidebar">
            <div class="logo">
                <i class="fas fa-palette"></i><span>Beauty Admin</span>
            </div>
            <nav class="sidebar-nav">
                <ul>
                    <li class="active"><a href="Admindashboard.aspx"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span> </a></li>
                    <li><a href="Adminproducts.aspx"><i class="fas fa-box"></i><span>Products</span> </a></li>
                    <li><a href="Adminusers.aspx"><i class="fas fa-users"></i><span>Users</span> </a></li>
                    <li><a href="Admincart.html"><i class="fas fa-shopping-cart"></i><span>Cart</span> </a></li>
                    <li><a href="Admincontact.aspx"><i class="fas fa-envelope"></i><span>Contact</span> </a></li>
                    <li><a href="Adminsettings.aspx"><i class="fas fa-cog"></i><span>Settings</span> </a></li>
                </ul>
            </nav>
        </div>
       <%-- <div class="main-content">
            <header class="header">
                <div class="header-left">
                    <button class="sidebar-toggle">
                        <i class="fas fa-bars"></i>
                    </button>
                    <h1>Dashboard</h1>
                </div>
                <div class="header-right">
                    <div class="search-box">
                        <i class="fas fa-search"></i>
                        <input type="text" placeholder="Search...">
                    </div>
                    <div class="notifications">
                        <i class="fas fa-bell"></i><span class="notification-badge">3</span>
                    </div>
                    <div class="user-profile">
                        <img src="https://via.placeholder.com/40" alt="Admin"> <span>Admin User</span> <i class="fas fa-chevron-down"></i>
                    </div>
                </div>
            </header>
            <div class="dashboard-content">
            <!-- Admin Image Section -->
            <div class="admin-image-section">
                <img src="images/download.jpeg" alt="Beauty Admin">
                <h2>Welcome to Beauty Admin Panel</h2>
                <p>Manage your beauty products and orders efficiently</p>
            </div>
            
            <!-- Stats Cards -->
                <div class="stats-grid">
                    <div class="stat-card">
                        <div class="stat-icon">
                            <i class="fas fa-box"></i>
                        </div>
                        <div class="stat-info">
                            <h3>1,234</h3>
                            <p>
                                Total Products</p>
                            <span class="stat-change positive">+12%</span>
                        </div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-icon">
                            <i class="fas fa-users"></i>
                        </div>
                        <div class="stat-info">
                            <h3>2,456</h3>
                            <p>
                                Total Users</p>
                            <span class="stat-change positive">+8%</span>
                        </div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-icon">
                            <i class="fas fa-shopping-cart"></i>
                        </div>
                        <div class="stat-info">
                            <h3>856</h3>
                            <p>
                                Orders</p>
                            <span class="stat-change positive">+15%</span>
                        </div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-icon">
                            <i class="fas fa-dollar-sign"></i>
                        </div>
                        <div class="stat-info">
                            <h3>$45,678</h3>
                            <p>
                                Revenue</p>
                            <span class="stat-change positive">+5%</span>
                        </div>
                    </div>
                </div>--%>

            <!-- Charts Section -->
              <%--  <div class="charts-section">
                    <div class="chart-container">
                        <h3>Sales Overview</h3>
                        <canvas id="salesChart"></canvas>
                    </div>
                    <div class="chart-container">
                        <h3>Product Categories</h3>
                        <canvas id="categoryChart"></canvas>
                    </div>
                </div>--%>

            <!-- Recent Activity -->
               <%-- <div class="activity-section">
                    <div class="recent-orders">
                        <h3>Recent Orders</h3>
                        <div class="table-container">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Customer</th>
                                        <th>Product</th>
                                        <th>Amount</th>
                                        <th>Status</th>
                                        <th>Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>#12345</td>
                                        <td>Sarah Johnson</td>
                                        <td>Lipstick Set</td>
                                        <td>$45.99</td>
                                        <td><span class="status delivered">Delivered</span></td>
                                        <td>2024-01-15</td>
                                    </tr>
                                    <tr>
                                        <td>#12346</td>
                                        <td>Mike Wilson</td>
                                        <td>Face Cream</td>
                                        <td>$32.50</td>
                                        <td><span class="status pending">Pending</span></td>
                                        <td>2024-01-14</td>
                                    </tr>
                                    <tr>
                                        <td>#12347</td>
                                        <td>Emma Davis</td>
                                        <td>Eye Shadow</td>
                                        <td>$28.75</td>
                                        <td><span class="status processing">Processing</span></td>
                                        <td>2024-01-13</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="top-products">
                        <h3>Top Selling Products</h3>
                        <div class="product-list">
                            <div class="product-item">
                                <img src="https://via.placeholder.com/50" alt="Product">
                                <div class="product-info">
                                    <h4>Premium Lipstick</h4>
                                    <p>
                                        156 sales</p>
                                </div>
                                <span class="product-price">$24.99</span>
                            </div>
                            <div class="product-item">
                                <img src="https://via.placeholder.com/50" alt="Product">
                                <div class="product-info">
                                    <h4>Anti-Aging Cream</h4>
                                    <p>
                                        134 sales</p>
                                </div>
                                <span class="product-price">$45.99</span>
                            </div>
                            <div class="product-item">
                                <img src="https://via.placeholder.com/50" alt="Product">
                                <div class="product-info">
                                    <h4>Mascara Set</h4>
                                    <p>
                                        98 sales</p>
                                </div>
                                <span class="product-price">$18.99</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>

    </body>
</html>
 </asp:Content>

