<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="AddCatagory.aspx.cs" Inherits="elixbeauty7.Admin.AddCatagory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add Cosmetic Category</title>
  <style>
 
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 600px;
        margin: 50px auto;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        padding: 30px;
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: bold;
        color: #444;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        margin-bottom: 20px;
        font-size: 16px;
    }

    input[type="submit"], .btn {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        display: block;
        width: 100%;
        margin-top: 10px;
    }

    input[type="submit"]:hover, .btn:hover {
        background-color: #45a049;
    }

    .message {
        text-align: center;
        color: #999;
        font-style: italic;
        margin-top: 20px;
    }
    /* Label styling */
.form-label {
    font-size: 18px;             /* Bigger font size */
    font-weight: 600;            /* Semi-bold */
    margin-bottom: 8px;
    display: block;
    color: #333;
    font-family: 'Segoe UI', sans-serif;
}

/* Input box styling */
input[type="text"] {
    padding: 10px;
    width: 100%;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 16px;
}

.btn-add-category {
    background-color: #ff7da0;        /* Pink button background */
    color: white;                     /* White text */
    border: none;
    padding: 12px;
    width: 100%;
    border-radius: 6px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin-top: 12px;
}

.btn-add-category:hover {
    background-color: #ff5e8c;        /* Darker pink on hover */
}


</style>

 
</head>
<body>

<div class="container">
    <h2>Add Product Category</h2>
    <div class="container">
  <form id="categoryForm">
   <%-- <label for="categoryName">Category Name:</label>--%>
        <asp:Label ID="Label1" class="form-label" runat="server" Text="ComapnyName:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn-add-category" OnClick="Button1_Click" />
  </form>
  </div>
        </div>
</div>
       
      

</body>
</html>
 </asp:Content>

