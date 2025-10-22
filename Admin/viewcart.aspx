<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="viewcart.aspx.cs" Inherits="elixbeauty7.Admin.viewcart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #fafafa;
    margin: 0;
    padding: 20px;
}

h2 {
    text-align: center;
    font-size: 28px;
    font-weight: 700;
    color: #333;
    margin-bottom: 25px;
}

table {
    width: 100%;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    border-radius: 12px;
    overflow: hidden;
}

th, td {
    text-align: center;
    padding: 15px;
    border-bottom: 1px solid #ddd;
    font-size: 16px;
}

th {
    background-color: #f8f9fa;
    color: #333;
    font-weight: 600;
}

td img {
    width: 120px;
    height: 120px;
    border-radius: 8px;
    object-fit: cover;
}

input[type="text"], input[type="number"] {
    width: 70px;
    padding: 6px;
    text-align: center;
    border: 1px solid #ccc;
    border-radius: 6px;
}

button, input[type="submit"], input[type="button"] {
    background-color: #ff4081;
    color: #fff;
    border: none;
    border-radius: 6px;
    padding: 8px 15px;
    cursor: pointer;
    font-weight: 600;
    transition: background-color 0.3s;
}

button:hover, input[type="submit"]:hover, input[type="button"]:hover {
    background-color: #e73370;
}

.final-total {
    text-align: right;
    font-size: 20px;
    margin-top: 20px;
    font-weight: bold;
    color: #333;
}

.remove-link {
    color: #ff4d4d;
    text-decoration: none;
    font-weight: 600;
}

.remove-link:hover {
    text-decoration: underline;
    color: #d63031;
}

/* Responsive */
@media (max-width: 768px) {
    table, thead, tbody, th, td, tr {
        display: block;
    }

    th {
        display: none;
    }

    td {
        text-align: left;
        padding: 10px 20px;
        border: none;
        border-bottom: 1px solid #eee;
    }

    td img {
        width: 100px;
        height: auto;
        margin-bottom: 10px;
    }

    .final-total {
        text-align: center;
    }
 

}
   .final-total-label {
            display: inline-block;
            background-color: #ffffff;
            padding: 15px 35px;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 20px;
            color: #ff4081;
            font-weight: 700;
            text-align: center;
            margin-top: 25px;
            border: 1px solid #f0f0f0;
            transition: all 0.3s ease;
        }

        .final-total-label:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        .total-center {
            text-align: center;
            margin-top: 30px;
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
  

            <center>
                <h1>Product Added to cart</h1>
                </br>
                <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False" DataKeyNames="Prod_cart_Id" OnRowCommand="gvCart_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Product Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product Catagory">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Catagory") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product Price">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product Quantity">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                               <asp:LinkButton ID="btnRemove" runat="server" CommandName="Remove" CommandArgument='<%# Eval("Prod_cart_Id") %>'>Remove</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                </br>
                <asp:Button ID="txtUpdateCart" runat="server" Text="Update Cart" OnClick="txtUpdateCart_Click" />
                 <br />
               <div class="total-center">
 <asp:Label ID="lblFinalTotal" runat="server" CssClass="final-total-label" Text="lblFinalTotal"></asp:Label></div>
                </center>
          
 </asp:Content>

