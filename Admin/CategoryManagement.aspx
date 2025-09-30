<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="CategoryManagement.aspx.cs" Inherits="elixbeauty7.Admin.CategoryManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Category Management</title>
  <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 1200px;
        margin: 20px auto;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        padding: 30px;
    }

    h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #333;
        border-bottom: 2px solid #ff7da0;
        padding-bottom: 10px;
    }

    .category-grid {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }

    .category-grid th, .category-grid td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: left;
    }

    .category-grid th {
        background-color: #ff7da0;
        color: white;
        font-weight: bold;
        text-align: center;
    }

    .category-grid tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    .category-grid tr:hover {
        background-color: #f5f5f5;
    }

    .category-image {
        border-radius: 8px;
        border: 2px solid #ddd;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }

    .btn-delete {
        background-color: #ff4444;
        color: white;
        border: none;
        padding: 8px 15px;
        border-radius: 4px;
        cursor: pointer;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    .btn-delete:hover {
        background-color: #cc0000;
        transform: translateY(-1px);
    }

    .btn-edit {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 8px 15px;
        border-radius: 4px;
        cursor: pointer;
        font-weight: bold;
        margin-right: 5px;
        transition: background-color 0.3s ease;
    }

    .btn-edit:hover {
        background-color: #45a049;
        transform: translateY(-1px);
    }

    .no-data {
        text-align: center;
        color: #666;
        font-style: italic;
        padding: 40px;
        background-color: #f9f9f9;
        border-radius: 8px;
        margin-top: 20px;
    }

    .action-buttons {
        text-align: center;
    }

    .refresh-btn {
        background-color: #2196F3;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        margin-bottom: 20px;
    }

    .refresh-btn:hover {
        background-color: #1976D2;
    }
  </style>
</head>
<body>

<div class="container">
    <h2>Category Management</h2>
    
    <asp:Button ID="btnRefresh" runat="server" Text="Refresh Categories" CssClass="refresh-btn" OnClick="btnRefresh_Click" />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="category-grid" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" ItemStyle-Width="80px" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="CompanyName" HeaderText="Company Name" ItemStyle-Width="200px" />
            <asp:TemplateField HeaderText="Category Image" ItemStyle-Width="120px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' 
                        Width="80" Height="80" CssClass="category-image" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Actions" ItemStyle-Width="150px" ItemStyle-CssClass="action-buttons">
                <ItemTemplate>
                    <asp:Button ID="btnEdit" runat="server" Text="Edit" 
                        CommandName="cmd_edt" CommandArgument='<%# Eval("Id") %>' 
                        CssClass="btn-edit" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                        CommandName="cmd_dlt" CommandArgument='<%# Eval("Id") %>' 
                        CssClass="btn-delete" 
                        OnClientClick="return confirm('Are you sure you want to delete this category?');" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    
    <asp:Label ID="lblNoData" runat="server" Text="No categories found. Please add some categories first." 
        CssClass="no-data" Visible="false"></asp:Label>
</div>

</body>
</html>
</asp:Content>

