<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="elixbeauty7.ViewDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </br>
    </br>
    </br>
    <style>
       .product-detail-container {
    max-width: 1200px;
    margin: 0 auto; /* Center horizontally */
    padding: 2rem;
    background: #fff;
    display: flex;
    justify-content: center; /* Horizontal center */
    align-items: center;    /* Vertical center if needed */
    flex-direction: column; /* Column layout */
}

.product-detail-wrapper {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 3rem;
    align-items: start;
    justify-content: center; /* Center the grid */
}

        
    
        
        .product-image-section {
            position: relative;
        }
        
        .product-main-image {
            width: 100%;
            height: 500px;
            object-fit: cover;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        
        .product-main-image:hover {
            transform: scale(1.02);
        }
        
        .product-info-section {
            padding: 1rem 0;
        }
        
        .product-category {
            color: #ff6b9d;
            font-size: 0.9rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 0.5rem;
        }
        
        .product-title {
            font-size: 2.2rem;
            font-weight: 700;
            color: #333;
            margin-bottom: 1rem;
            line-height: 1.2;
        }
        
        .product-price {
            font-size: 2rem;
            font-weight: 700;
            color: #ff6b9d;
            margin-bottom: 1.5rem;
        }
        
        .product-description {
            font-size: 1.1rem;
            color: #666;
            line-height: 1.6;
            margin-bottom: 2rem;
        }
        
        .product-actions {
            display: flex;
            gap: 1rem;
            margin-bottom: 2rem;
        }
        
        .btn-add-cart {
            flex: 1;
            padding: 1rem 2rem;
            background: linear-gradient(135deg, #ff6b9d, #ff8fab);
            color: white;
            border: none;
            border-radius: 50px;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        .btn-add-cart:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(255, 107, 157, 0.4);
        }
        
        .btn-wishlist {
            padding: 1rem;
            background: #f8f9fa;
            border: 2px solid #e9ecef;
            border-radius: 50px;
            color: #666;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        .btn-wishlist:hover {
            background: #ff6b9d;
            color: white;
            border-color: #ff6b9d;
        }
        
        .product-features {
            background: #f8f9fa;
            padding: 1.5rem;
            border-radius: 15px;
            margin-top: 2rem;
        }
        
        .product-features h3 {
            color: #333;
            margin-bottom: 1rem;
            font-size: 1.2rem;
        }
        
        .feature-list {
            list-style: none;
            padding: 0;
        }
        
        .feature-list li {
            padding: 0.5rem 0;
            color: #666;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        
        .feature-list li:before {
            content: "✓";
            color: #ff6b9d;
            font-weight: bold;
        }
        
        @media (max-width: 768px) {
            .product-detail-wrapper {
                grid-template-columns: 1fr;
                gap: 2rem;
            }
            
            .product-main-image {
                height: 300px;
            }
            
            .product-title {
                font-size: 1.8rem;
            }
            
            .product-price {
                font-size: 1.5rem;
            }
            
            .product-actions {
                flex-direction: column;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <center>
   <div class="product-detail-container">
       
        <asp:DataList ID="DataList1" runat="server" CssClass="product-detail-wrapper">
            <ItemTemplate>
              
                <div class="product-image-section">
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl='<%# Eval("Image") %>' 
                        CssClass="product-main-image"
                        AlternateText='<%# Eval("Name") %>' />
                </div>
                
                <div class="product-info-section">
                    <div class="product-category">
                        
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Catagory") %>'></asp:Label>
                    </div>
                    
                    <h1 class="product-title">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </h1>
                    
                    <div class="product-price">
                        ₹<asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </div>
                    
                    <div class="product-description">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Discription") %>'></asp:Label>
                    </div>
                    
                    <div class="product-actions">
                        <button class="btn-add-cart" onclick="addToCart()">
                            <i class="fas fa-shopping-cart"></i> Add to Cart
                        </button>
                        <button class="btn-wishlist" onclick="addToWishlist()">
                            <i class="far fa-heart"></i>
                        </button>
                    </div>
                    
                    <%--<div class="product-features">
                        <h3>Product Features</h3>
                        <ul class="feature-list">
                            <li>Premium Quality</li>
                            <li>Long Lasting</li>
                            <li>Easy to Apply</li>
                            <li>Skin Friendly</li>
                        </ul>
                    </div>--%>
                </div>
                   
            </ItemTemplate>
        </asp:DataList>
           
    </div>
    
    <script>
        function addToCart() {
            alert('Product added to cart!');
        }
        
        function addToWishlist() {
            alert('Added to wishlist!');
        }
    </script>
       
</asp:Content>

