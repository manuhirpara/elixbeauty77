<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="Addproduct.aspx.cs" Inherits="elixbeauty7.Admin.Addproduct" %>
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

    </style>
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
  <title>Beauty Cosmetic - Add Product</title>
  <style>
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

    .product-grid {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
      border-radius: 8px;
      overflow: hidden;
    }

    .product-grid th, .product-grid td {
      border: 1px solid #ddd;
      padding: 12px;
      text-align: left;
    }

    .product-grid th {
      background-color: #d63384;
      color: white;
      font-weight: bold;
      text-align: center;
    }

    .product-grid tr:nth-child(even) {
      background-color: #f9f9f9;
    }

    .product-grid tr:hover {
      background-color: #f5f5f5;
    }

    .product-image {
      border-radius: 8px;
      border: 2px solid #ddd;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
      object-fit: cover;
    }

    .btn-delete {
      background-color: #ff4444;
      color: white;
      border: none;
      padding: 8px 15px;
      border-radius: 4px;
      cursor: pointer;
      font-weight: bold;
      transition: all 0.3s ease;
    }

    .btn-delete:hover {
      background-color: #cc0000;
      transform: translateY(-1px);
      box-shadow: 0 2px 4px rgba(0,0,0,0.2);
    }

    .action-buttons {
      text-align: center;
    }

    h3 {
      color: #d63384;
      margin-top: 30px;
      margin-bottom: 15px;
      text-align: center;
    }
  </style>
</head>
<body>

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
      <asp:DropDownList ID="drpct" runat="server" OnSelectedIndexChanged="drpct_SelectedIndexChanged">
          
          <asp:ListItem>L'Oréal</asp:ListItem>
          
      </asp:DropDownList>


    <label for="price">Price:</label>
      <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>

   

    <label for="description">Description:</label>
      <asp:TextBox ID="txtds" runat="server"></asp:TextBox>
      </br>
      </br>
  

   <%-- <button type="submit">Add Product</button>--%>
      <asp:Button ID="Button1" runat="server" Text="Add Product" class="btn-add-product" OnClick="Button1_Click" />
  </form>

  <div class="product-list" id="productList">
    <h3>Added Products:</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="product-grid" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" ItemStyle-Width="80px" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="Name" HeaderText="Product Name" ItemStyle-Width="200px" />
            <asp:BoundField DataField="Catagory" HeaderText="Category" ItemStyle-Width="150px" />
            <asp:BoundField DataField="Price" HeaderText="Price" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" />
            <asp:TemplateField HeaderText="Image" ItemStyle-Width="120px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' 
                        Width="60" Height="60" CssClass="product-image" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Actions" ItemStyle-Width="150px" ItemStyle-CssClass="action-buttons">
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                        CommandName="cmd_dlt" CommandArgument='<%# Eval("Id") %>' 
                        CssClass="btn-delete" 
                        OnClientClick="return confirm('Are you sure you want to delete this product?');" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
  </div>
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

</body>
</html>

 </asp:Content>


