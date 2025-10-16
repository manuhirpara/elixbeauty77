<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="viewcart.aspx.cs" Inherits="elixbeauty7.Admin.viewcart" %>
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
  

            <center>
                <h1>Product Added to cart</h1>
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
                <asp:Button ID="txtUpdateCart" runat="server" Text="update cart" OnClick="txtUpdateCart_Click" />
                 <br />
 <asp:Label ID="lblFinalTotal" runat="server" Text="lblFinalTotal"></asp:Label>
                </center>
          
 </asp:Content>

