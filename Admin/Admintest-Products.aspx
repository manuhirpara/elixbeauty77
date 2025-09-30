<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="Admintest-Products.aspx.cs" Inherits="elixbeauty7.Admin.Admintest_Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Products - Beauty Admin</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
</head>
<body>
    <div style="padding: 50px; text-align: center;">
        <h1>Product Add Test Page</h1>
        <p>Testing the product add functionality</p>
        
        <div style="margin: 20px 0;">
            <button class="btn btn-primary" onclick="openAddProductModal()">
                <i class="fas fa-plus"></i>
                Add Product (Direct Function)
            </button>
        </div>
        
        <div style="margin: 20px 0;">
            <button class="btn btn-outline" onclick="testAddProduct()">
                <i class="fas fa-test-tube"></i>
                Test Add Product (Debug)
            </button>
        </div>
        
        <div style="margin: 20px 0;">
            <a href="Adminproducts.aspx" class="btn btn-primary">
                <i class="fas fa-arrow-left"></i>
                Go to Products Page
            </a>
        </div>
        
        <div id="debug-info" style="margin-top: 30px; padding: 20px; background: #f8f9fa; border-radius: 8px; text-align: left;">
            <h3>Debug Information:</h3>
            <p id="debug-text">Click buttons above to test...</p>
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
    
    <script>
        // Override the debug function to show info on page
        function testAddProduct() {
            const debugText = document.getElementById('debug-text');
            debugText.innerHTML = 'Testing add product function...<br>';
            
            console.log('Test function called');
            const button = document.querySelector('button[onclick="openAddProductModal()"]');
            console.log('Add product button found:', button);
            
            debugText.innerHTML += 'Button found: ' + (button ? 'Yes' : 'No') + '<br>';
            
            if (button) {
                debugText.innerHTML += 'Clicking button...<br>';
                button.click();
                debugText.innerHTML += 'Button clicked!<br>';
            } else {
                debugText.innerHTML += 'Button not found!<br>';
            }
        }
        
        // Override openAddProductModal to show debug info
        const originalOpenAddProductModal = window.openAddProductModal;
        window.openAddProductModal = function() {
            const debugText = document.getElementById('debug-text');
            debugText.innerHTML = 'openAddProductModal called!<br>';
            
            console.log('Opening add product modal...');
            
            const modal = document.getElementById('productModal');
            const title = document.getElementById('modalTitle');
            const form = document.getElementById('productForm');
            
            debugText.innerHTML += 'Modal found: ' + (modal ? 'Yes' : 'No') + '<br>';
            debugText.innerHTML += 'Title found: ' + (title ? 'Yes' : 'No') + '<br>';
            debugText.innerHTML += 'Form found: ' + (form ? 'Yes' : 'No') + '<br>';
            
            console.log('Modal elements:', { modal, title, form });
            
            if (modal && title && form) {
                title.textContent = 'Add New Product';
                form.reset();
                modal.classList.add('show');
                modal.style.display = 'flex';
                
                debugText.innerHTML += 'Modal opened successfully!<br>';
                console.log('Modal opened successfully');
            } else {
                debugText.innerHTML += 'Modal elements not found!<br>';
                console.error('Modal elements not found');
            }
        };
    </script>
</body>
</html>


 </asp:Content>

