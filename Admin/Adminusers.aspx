<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="Adminusers.aspx.cs" Inherits="elixbeauty7.Admin.Adminusers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .styled-grid {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            font-family: 'Segoe UI', sans-serif;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .styled-grid th {
            background-color: #f16191;
            color: white;
            padding: 12px;
            text-align: left;
            font-size: 15px;
        }

        .styled-grid td {
            padding: 10px 12px;
            border-bottom: 1px solid #eee;
            font-size: 14px;
        }

        .styled-grid tr:hover {
            background-color: #f9f9f9;
        }

        .styled-grid img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
        }

        .styled-grid .delete-icon {
            font-size: 18px;
            color: #f16191;
            cursor: pointer;
            text-decoration: none;
            transition: transform 0.2s ease;
        }

        .styled-grid .delete-icon:hover {
            color: #d9416f;
            transform: scale(1.2);
        }

        @media (max-width: 768px) {
            .styled-grid, .styled-grid thead, .styled-grid tbody, .styled-grid th, .styled-grid td, .styled-grid tr {
                display: block;
            }

            .styled-grid thead {
                display: none;
            }

            .styled-grid tr {
                margin-bottom: 15px;
                border: 1px solid #ddd;
                border-radius: 6px;
                padding: 10px;
            }

            .styled-grid td {
                text-align: right;
                position: relative;
                padding-left: 50%;
            }

            .styled-grid td::before {
                content: attr(data-label);
                position: absolute;
                left: 15px;
                font-weight: bold;
                color: #555;
                text-align: left;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beauty Admin - Users</title>
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
                <li class="active">
                    <a href="Adminusers.aspx">
                        <i class="fas fa-users"></i>
                        <span>Users</span>
                    </a>
                </li>
                <li>
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
                <h1>Users Management</h1>
            </div>
            <div class="header-right">
                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Search users..." id="userSearch">
                </div>
                <button class="btn btn-primary" onclick="openAddUserModal()">
                    <i class="fas fa-user-plus"></i>
                    Add User
                </button>
            </div>
        </header>

       <%-- <div class="content">
            <!-- Filters -->
            <div class="filters-section">
                <div class="filter-group">
                    <label>Status:</label>
                    <select id="statusFilter">
                        <option value="">All Status</option>
                        <option value="active">Active</option>
                        <option value="inactive">Inactive</option>
                        <option value="banned">Banned</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label>Role:</label>
                    <select id="roleFilter">
                        <option value="">All Roles</option>
                        <option value="customer">Customer</option>
                        <option value="vip">VIP Customer</option>
                        <option value="admin">Admin</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label>Registration Date:</label>
                    <input type="date" id="dateFilter">
                </div>
            </div>

            <!-- Users Table -->
            <div class="table-container">
                <table class="users-table">
                    <thead>
                        <tr>
                            <th>
                                <input type="checkbox" id="selectAllUsers">
                            </th>
                            <th>Avatar</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Role</th>
                            <th>Status</th>
                            <th>Join Date</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="usersTableBody">
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>
                                <img src="https://via.placeholder.com/40" alt="User" class="user-avatar">
                            </td>
                            <td>
                                <div class="user-name">
                                    <h4>Sarah Johnson</h4>
                                    <p>ID: #1001</p>
                                </div>
                            </td>
                            <td>sarah.johnson@email.com</td>
                            <td>+1 (555) 123-4567</td>
                            <td><span class="role-badge customer">Customer</span></td>
                            <td><span class="status active">Active</span></td>
                            <td>2024-01-10</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="editUser(1)" title="Edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn-icon" onclick="viewUser(1)" title="View">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="deleteUser(1)" title="Delete">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>
                                <img src="https://via.placeholder.com/40" alt="User" class="user-avatar">
                            </td>
                            <td>
                                <div class="user-name">
                                    <h4>Mike Wilson</h4>
                                    <p>ID: #1002</p>
                                </div>
                            </td>
                            <td>mike.wilson@email.com</td>
                            <td>+1 (555) 234-5678</td>
                            <td><span class="role-badge vip">VIP Customer</span></td>
                            <td><span class="status active">Active</span></td>
                            <td>2024-01-08</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="editUser(2)" title="Edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn-icon" onclick="viewUser(2)" title="View">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="deleteUser(2)" title="Delete">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>
                                <img src="https://via.placeholder.com/40" alt="User" class="user-avatar">
                            </td>
                            <td>
                                <div class="user-name">
                                    <h4>Emma Davis</h4>
                                    <p>ID: #1003</p>
                                </div>
                            </td>
                            <td>emma.davis@email.com</td>
                            <td>+1 (555) 345-6789</td>
                            <td><span class="role-badge customer">Customer</span></td>
                            <td><span class="status inactive">Inactive</span></td>
                            <td>2024-01-05</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="editUser(3)" title="Edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn-icon" onclick="viewUser(3)" title="View">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="deleteUser(3)" title="Delete">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>
                                <img src="https://via.placeholder.com/40" alt="User" class="user-avatar">
                            </td>
                            <td>
                                <div class="user-name">
                                    <h4>John Smith</h4>
                                    <p>ID: #1004</p>
                                </div>
                            </td>
                            <td>john.smith@email.com</td>
                            <td>+1 (555) 456-7890</td>
                            <td><span class="role-badge admin">Admin</span></td>
                            <td><span class="status active">Active</span></td>
                            <td>2024-01-01</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="editUser(4)" title="Edit">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn-icon" onclick="viewUser(4)" title="View">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="deleteUser(4)" title="Delete">
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
                <span class="page-info">Page 1 of 10</span>
                <button class="btn btn-outline">
                    Next
                    <i class="fas fa-chevron-right"></i>
                </button>
            </div>
        </div>
    </div>

    <!-- Add/Edit User Modal -->
    <div id="userModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2 id="userModalTitle">Add New User</h2>
                <button class="close-btn" onclick="closeUserModal()">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <form id="userForm" class="modal-body">
                <div class="form-row">
                    <div class="form-group">
                        <label for="userFirstName">First Name *</label>
                        <input type="text" id="userFirstName" name="firstName" required>
                    </div>
                    <div class="form-group">
                        <label for="userLastName">Last Name *</label>
                        <input type="text" id="userLastName" name="lastName" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="userEmail">Email Address *</label>
                    <input type="email" id="userEmail" name="email" required>
                </div>

                <div class="form-group">
                    <label for="userPhone">Phone Number</label>
                    <input type="tel" id="userPhone" name="phone">
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="userRole">Role *</label>
                        <select id="userRole" name="role" required>
                            <option value="">Select Role</option>
                            <option value="customer">Customer</option>
                            <option value="vip">VIP Customer</option>
                            <option value="admin">Admin</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="userStatus">Status</label>
                        <select id="userStatus" name="status">
                            <option value="active">Active</option>
                            <option value="inactive">Inactive</option>
                            <option value="banned">Banned</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="userPassword">Password *</label>
                    <input type="password" id="userPassword" name="password" required>
                </div>

                <div class="form-group">
                    <label for="userAddress">Address</label>
                    <textarea id="userAddress" name="address" rows="3"></textarea>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline" onclick="closeUserModal()">Cancel</button>
                <button type="submit" form="userForm" class="btn btn-primary">Save User</button>
            </div>
        </div>
    </div>--%>
        <asp:GridView ID="GridView1" runat="server" CssClass="styled-grid" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
            


            <Columns>
    <asp:TemplateField HeaderText="Id">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="UserName">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Password">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Name">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Image">
        <ItemTemplate>
           <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
               <%-- ImageUrl='<%# GetImageUrl(Eval("Image")) %>' 
                Width="40" Height="40" 
                style="border-radius: 50%; object-fit: cover;" 
                onerror="this.src='images/download.jpeg';" />--%>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Gender">
        <ItemTemplate>
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Email">
        <ItemTemplate>
            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Delete">
        <ItemTemplate>
             <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">❌</asp:LinkButton>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
        </asp:GridView>
    <script src="script.js"></script>
</body>
</html>


 </asp:Content>

