<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="Adminproducts.aspx.cs" Inherits="elixbeauty7.Admin.products" %>
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
        width: 60px;
        height: 60px;
        border-radius: 8px;
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
            .btn-add-product {
    background-color: #f8d7dd;        /* Light pink */
    color: #d63384;                  /* Deep pink text */
    padding: 10px 20px;
    border: none;
    border-radius: 8px;             /* Rounded corners */
    font-weight: bold;
    font-size: 16px;
    cursor: pointer;
    display: inline-flex;
    align-items: center;
    gap: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1); /* Soft shadow */
    text-decoration: none;
    transition: background-color 0.3s ease;
}

.btn-add-product:hover {
    background-color: #f3c0ca;      /* Slightly darker on hover */
}
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beauty Admin - Products</title>
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
                <li class="active">
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
                <h1>Products Management</h1>
            </div>
            <div class="header-right">
                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Search products..." id="productSearch">
                </div>
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-secondary" Text="📁 Add Category" OnClick="Button2_Click" style="margin-right: 10px;" />
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="➕ Add Product" OnClick="Button1_Click" />
            </div>
        </header>

       <div class="content">
            <!-- Filters -->
            <div class="filters-section">
                <div class="filter-group">
                    <label>Category:</label>
                    <select id="categoryFilter">
                        <option value="">All Categories</option>
                        <option value="skincare">Skincare</option>
                        <option value="makeup">Makeup</option>
                        <option value="haircare">Haircare</option>
                        <option value="fragrance">Fragrance</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label>Status:</label>
                    <select id="statusFilter">
                        <option value="">All Status</option>
                        <option value="active">Active</option>
                        <option value="inactive">Inactive</option>
                        <option value="out-of-stock">Out of Stock</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label>Price Range:</label>
                    <input type="range" id="priceRange" min="0" max="500" value="500">
                    <span id="priceValue">$0 - $500</span>
                </div>
            </div>

            <!-- Product Edit Form -->
            <asp:Panel ID="editForm" runat="server" Visible="false" CssClass="edit-form" style="background: white; padding: 20px; border-radius: 8px; margin-bottom: 20px; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">
                <h3 style="margin-bottom: 15px; color: #2c3e50;">Edit Product</h3>
                <table style="width: 100%;">
                    <tr>
                        <td style="padding: 5px;">
                            <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                        </td>
                        <td style="padding: 5px;">
                            <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td style="padding: 5px;">
                            <asp:Label ID="lblCategory" runat="server" Text="Category:"></asp:Label>
                        </td>
                        <td style="padding: 5px;">
                            <asp:TextBox ID="txtCategory" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 5px;">
                            <asp:Label ID="lblPrice" runat="server" Text="Price:"></asp:Label>
                        </td>
                        <td style="padding: 5px;">
                            <asp:TextBox ID="txtPrice" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td style="padding: 5px;">
                            <asp:Label ID="lblDescription" runat="server" Text="Description:"></asp:Label>
                        </td>
                        <td style="padding: 5px;">
                            <asp:TextBox ID="txtDescription" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 5px;">
                            <asp:Label ID="lblImage" runat="server" Text="Image:"></asp:Label>
                        </td>
                        <td style="padding: 5px;">
                            <asp:FileUpload ID="flpImage" runat="server" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>

            <!-- Products Table -->
            <div class="table-container">
                <asp:GridView ID="GridView1" runat="server" CssClass="styled-grid" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Id">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' 
                                    style="width: 60px; height: 60px; object-fit: cover; border-radius: 8px;" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Catagory") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                ₹<asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Discription") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt">✏️</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">❌</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>

            <!-- Pagination -->
            <div class="pagination">
                <button class="btn btn-outline" disabled>
                    <i class="fas fa-chevron-left"></i>
                    Previous
                </button>
                <span class="page-info">Page 1 of 5</span>
                <button class="btn btn-outline">
                    Next
                    <i class="fas fa-chevron-right"></i>
                </button>
            </div>
        </div>
    </div>

    <!-- Add/Edit Product Modal -->
    <div id="productModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2 id="modalTitle">Add New Product</h2>
                <button class="close-btn" onclick="closeProductModal()">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <form id="productForm" class="modal-body">
                <div class="form-row">
                    <div class="form-group">
                        <label for="productName">Product Name *</label>
                        <input type="text" id="productName" name="productName" required>
                    </div>
                    <div class="form-group">
                        <label for="productCategory">Category *</label>
                        <select id="productCategory" name="productCategory" required>
                            <option value="">Select Category</option>
                            <option value="skincare">Skincare</option>
                            <option value="makeup">Makeup</option>
                            <option value="haircare">Haircare</option>
                            <option value="fragrance">Fragrance</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="productPrice">Price *</label>
                        <input type="number" id="productPrice" name="productPrice" step="0.01" required>
                    </div>
                    <div class="form-group">
                        <label for="productStock">Stock Quantity *</label>
                        <input type="number" id="productStock" name="productStock" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="productDescription">Description</label>
                    <textarea id="productDescription" name="productDescription" rows="4"></textarea>
                </div>

                <div class="form-group">
                    <label for="productImage">Product Image</label>
                    <input type="file" id="productImage" name="productImage" accept="image/*">
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="productStatus">Status</label>
                        <select id="productStatus" name="productStatus">
                            <option value="active">Active</option>
                            <option value="inactive">Inactive</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="productSku">SKU</label>
                        <input type="text" id="productSku" name="productSku">
                    </div>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline" onclick="closeProductModal()">Cancel</button>
                <button type="submit" form="productForm" class="btn btn-primary">Save Product</button>
            </div>
        </div>
     </div>

</body>
</html>
 </asp:Content>

