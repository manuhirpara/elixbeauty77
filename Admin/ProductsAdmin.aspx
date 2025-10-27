<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="ProductsAdmin.aspx.cs" Inherits="elixbeauty7.Admin.ProductsAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
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
  body {
    font-family: Arial, sans-serif;
    background: #fff0f5;
    margin: 0;
    padding: 0;
  }

  .container {
    max-width: 600px;
    margin: 50px auto;
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    padding: 30px;
  }

  h2 {
    text-align: center;
    color: #d63384;
  }

  form label {
    display: block;
    margin: 15px 0 5px;
    font-weight: bold;
    color: #555;
  }

  form input, form textarea, form select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 14px;
  }

  form button {
    margin-top: 20px;
    width: 100%;
    background: #d63384;
    color: white;
    padding: 12px;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s;
  }

  form button:hover {
    background: #c2185b;
  }

  .product-list {
    margin-top: 30px;
  }

  .product-item {
    border: 1px solid #ddd;
    padding: 15px;
    margin-bottom: 10px;
    border-radius: 8px;
    background-color: #f9f9f9;
  }

  .product-item img {
    max-width: 100px;
    display: block;
    margin-bottom: 10px;
  }

  /* GridView Styling */
  .styled-grid {
    width: 80%;
    max-width: 900px;
    border-collapse: collapse;
    margin: 20px auto;
    background: white;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
  }

  .styled-grid th {
    background: linear-gradient(135deg, #ff6b6b, #ff8e8e);
    color: white;
    padding: 10px 8px;
    text-align: left;
    font-weight: 600;
    font-size: 12px;
  }

  .styled-grid td {
    padding: 8px 8px;
    border-bottom: 1px solid #f1f3f4;
    vertical-align: middle;
    font-size: 12px;
  }

  .styled-grid tr:hover {
    background-color: #f8f9fa;
  }

  .styled-grid tr:nth-child(even) {
    background-color: #fafafa;
  }

  /* Image column styling */
  .styled-grid img {
    width: 40px;
    height: 40px;
    object-fit: cover;
    border-radius: 6px;
    border: 1px solid #e9ecef;
  }

  /* ID column styling */
  .styled-grid .id-column {
    font-weight: 600;
    color: #ff6b6b;
    text-align: center;
  }

  /* Action buttons styling */
  .styled-grid a {
    text-decoration: none;
    font-size: 18px;
    margin: 0 5px;
    transition: transform 0.2s ease;
  }

  .styled-grid a:hover {
    transform: scale(1.2);
  }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <body>
        <div class="sidebar">
           <div class="logo">
                <i class="fas fa-palette"></i><span>Beauty Admin</span>
            </div>
            <nav class="sidebar-nav">
                <ul>
                    <li class="active"><a href="Admindashboard.aspx"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span> </a></li>
                    <li><a href="ProductsAdmin.aspx"><i class="fas fa-box"></i><span>Products</span> </a></li>
                    <li><a href="Adminusers.aspx"><i class="fas fa-users"></i><span>Users</span> </a></li>
                    <li><a href="Admincart.aspx"><i class="fas fa-shopping-cart"></i><span>Cart</span> </a></li>
                    <li><a href="Admincontact.aspx"><i class="fas fa-envelope"></i><span>Contact</span> </a></li>
                    <li><a href="Adminsettings.aspx"><i class="fas fa-cog"></i><span>Settings</span> </a></li>
                </ul>
            </nav>
        </div>
      <%--  <div class="main-content">
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
                </div>

            <!-- Charts Section -->
                <div class="charts-section">
                    <div class="chart-container">
                        <h3>Sales Overview</h3>
                        <canvas id="salesChart"></canvas>
                    </div>
                    <div class="chart-container">
                        <h3>Product Categories</h3>
                        <canvas id="categoryChart"></canvas>
                    </div>
                </div>

            <!-- Recent Activity -->
                <div class="activity-section">
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
            </div>--%>
       <%-- </div>--%>
        <div class="container">
  <h2>Add Beauty Cosmetic Product</h2>
  <form id="productForm">
        <label for="image">Image:</label>
    <asp:FileUpload ID="fldimg" runat="server" />
    <label for="name">Name:</label>
      <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>

    <label for="category">Category:</label>
        <%-- <select id="category" required>
      <option value="">--Select Category--</option>
      <option value="Lipstick">Lipstick</option>
      <option value="Foundation">Foundation</option>
      <option value="Skincare">Skincare</option>
      <option value="Fragrance">Fragrance</option>
      <option value="Haircare">Haircare</option>
    </select>--%>
      <asp:DropDownList ID="drpct" runat="server" OnSelectedIndexChanged="drpct_SelectedIndexChanged" AutoPostBack="true">
          
      </asp:DropDownList>


    <label for="price">Price:</label>
      <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>

   

    <label for="description">Description:</label>
      <asp:TextBox ID="txtds" runat="server"></asp:TextBox>
      </br>
      </br>
  

   <%-- <button type="submit">Add Product</button>--%>
     <%-- <asp:Button ID="Button1" runat="server" Text="Add Product" class="btn-add-product" OnClick="Button1_Click" />--%>
    <%--  <asp:Button ID="Button1" runat="server"  class="btn-add-product" Text="Add product" OnClick="Button1_Click" />--%>
      <asp:Button ID="Button1" runat="server"  class="btn-add-product" Text="Submit" OnClick="Button1_Click1" />

  </form>

  <div class="product-list" id="productList"></div>
</div>

<script>
    const form = document.getElementById('productForm');
    const productList = document.getElementById('productList');

    form.addEventListener('submit', function (e) {
        e.preventDefault();

        const name = document.getElementById('name').value.trim();
        const category = document.getElementById('category').value;
        const price = document.getElementById('price').value;
        const image = document.getElementById('image').value;
        const description = document.getElementById('description').value.trim();

        if (!name || !category || !price || !image || !description) {
            alert("Please fill in all fields.");
            return;
        }

        const productHTML = `
      <div class="product-item">
        <img src="${image}" alt="${name}">
        <h4>${name} - $${parseFloat(price).toFixed(2)}</h4>
        <p><strong>Category:</strong> ${category}</p>
        <p>${description}</p>
      </div>
    `;

        productList.insertAdjacentHTML('beforeend', productHTML);
        form.reset();
    });
</script>
         <div class="table-container" style="margin-top: 30px; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 5px 15px rgba(0,0,0,0.1);">
             <h3 style="color: #d63384; margin-bottom: 20px; text-align: center;">Product List</h3>
     <asp:GridView ID="GridView1" runat="server" CssClass="styled-grid" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
         <Columns>
             <asp:TemplateField HeaderText="ID">
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>' CssClass="id-column"></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Image">
                 <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' 
                         style="width: 40px; height: 40px; object-fit: cover; border-radius: 6px;" />
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
    </body>
</html>
 </asp:Content>

