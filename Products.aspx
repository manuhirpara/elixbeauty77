<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="elixbeauty7.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
                     <section id="products" class="products">
     <div class="container">
         <h2>Our Products</h2>
         <div class="product-filters">
             <button class="filter-btn active" data-category="all">All</button>
             <button class="filter-btn" data-category="skincare">Skincare</button>
             <button class="filter-btn" data-category="makeup">Makeup</button>
             <button class="filter-btn" data-category="fragrance">Fragrance</button>
             <button class="filter-btn" data-category="tools">Beauty Tools</button>
         </div>
         <div class="product-grid" id="productGrid">
             <!-- Products will be dynamically loaded here -->
         </div>
     </div>
 </section>
    
        <section>
            <div class="product-grid" id="exploreGrid"></div>
            <div class="pagination" id="pagination"></div>
        </section>
</asp:Content>

