<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="Admincontact.aspx.cs" Inherits="elixbeauty7.Admin.contact" %>
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
        width: 40px;
        height: 40px;
        border-radius: 50%;
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beauty Admin - Contact Management</title>
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
                <li>
                    <a href="ProductsAdmin.aspx">
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
                <li class="active">
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
                <h1>Contact Management</h1>
            </div>
            <div class="header-right">
                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Search messages..." id="contactSearch">
                </div>
               <%-- <div class="contact-stats">
                    <span class="stat-item">
                        <i class="fas fa-envelope"></i>
                        <span>New: 12</span>
                    </span>
                    <span class="stat-item">
                        <i class="fas fa-reply"></i>
                        <span>Replied: 45</span>
                    </span>
                </div>--%>
            </div>
        </header>

        <%--<div class="content">
            <!-- Contact Summary Cards -->
            <div class="contact-summary">
                <div class="summary-card">
                    <div class="summary-icon">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <div class="summary-info">
                        <h3>67</h3>
                        <p>Total Messages</p>
                    </div>
                </div>
                
                <div class="summary-card">
                    <div class="summary-icon new">
                        <i class="fas fa-exclamation"></i>
                    </div>
                    <div class="summary-info">
                        <h3>12</h3>
                        <p>New Messages</p>
                    </div>
                </div>
                
                <div class="summary-card">
                    <div class="summary-icon replied">
                        <i class="fas fa-reply"></i>
                    </div>
                    <div class="summary-info">
                        <h3>45</h3>
                        <p>Replied</p>
                    </div>
                </div>
                
                <div class="summary-card">
                    <div class="summary-icon">
                        <i class="fas fa-clock"></i>
                    </div>
                    <div class="summary-info">
                        <h3>2.5h</h3>
                        <p>Avg Response Time</p>
                    </div>
                </div>
            </div>

            <!-- Filters -->
            <div class="filters-section">
                <div class="filter-group">
                    <label>Status:</label>
                    <select id="statusFilter">
                        <option value="">All Status</option>
                        <option value="new">New</option>
                        <option value="replied">Replied</option>
                        <option value="closed">Closed</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label>Category:</label>
                    <select id="categoryFilter">
                        <option value="">All Categories</option>
                        <option value="support">Support</option>
                        <option value="sales">Sales</option>
                        <option value="complaint">Complaint</option>
                        <option value="feedback">Feedback</option>
                    </select>
                </div>
                <div class="filter-group">
                    <label>Date Range:</label>
                    <input type="date" id="dateFilter">
                </div>
            </div>--%>

            <!-- Messages Table -->
          <%--  <div class="table-container">
                <table class="messages-table">
                    <thead>
                        <tr>
                            <th>
                                <input type="checkbox" id="selectAllMessages">
                            </th>
                            <th>From</th>
                            <th>Subject</th>
                            <th>Category</th>
                            <th>Status</th>
                            <th>Date</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="messagesTableBody">
                        <tr class="unread">
                            <td><input type="checkbox"></td>
                            <td>
                                <div class="sender-info">
                                    <img src="https://via.placeholder.com/30" alt="User" class="sender-avatar">
                                    <div>
                                        <h4>Sarah Johnson</h4>
                                        <p>sarah.johnson@email.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="message-subject">
                                    <h4>Product Return Request</h4>
                                    <p>I would like to return the lipstick I ordered...</p>
                                </div>
                            </td>
                            <td><span class="category-badge support">Support</span></td>
                            <td><span class="status new">New</span></td>
                            <td>2 hours ago</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="viewMessage(1)" title="View Message">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon" onclick="replyMessage(1)" title="Reply">
                                        <i class="fas fa-reply"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="deleteMessage(1)" title="Delete">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>
                                <div class="sender-info">
                                    <img src="https://via.placeholder.com/30" alt="User" class="sender-avatar">
                                    <div>
                                        <h4>Mike Wilson</h4>
                                        <p>mike.wilson@email.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="message-subject">
                                    <h4>Question about Shipping</h4>
                                    <p>When will my order be delivered?</p>
                                </div>
                            </td>
                            <td><span class="category-badge sales">Sales</span></td>
                            <td><span class="status replied">Replied</span></td>
                            <td>1 day ago</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="viewMessage(2)" title="View Message">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon" onclick="replyMessage(2)" title="Reply">
                                        <i class="fas fa-reply"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="deleteMessage(2)" title="Delete">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr class="unread">
                            <td><input type="checkbox"></td>
                            <td>
                                <div class="sender-info">
                                    <img src="https://via.placeholder.com/30" alt="User" class="sender-avatar">
                                    <div>
                                        <h4>Emma Davis</h4>
                                        <p>emma.davis@email.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="message-subject">
                                    <h4>Product Quality Issue</h4>
                                    <p>The face cream I received seems to be...</p>
                                </div>
                            </td>
                            <td><span class="category-badge complaint">Complaint</span></td>
                            <td><span class="status new">New</span></td>
                            <td>3 hours ago</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="viewMessage(3)" title="View Message">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon" onclick="replyMessage(3)" title="Reply">
                                        <i class="fas fa-reply"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="deleteMessage(3)" title="Delete">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>
                                <div class="sender-info">
                                    <img src="https://via.placeholder.com/30" alt="User" class="sender-avatar">
                                    <div>
                                        <h4>John Smith</h4>
                                        <p>john.smith@email.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="message-subject">
                                    <h4>Great Products!</h4>
                                    <p>I love the new skincare line you launched...</p>
                                </div>
                            </td>
                            <td><span class="category-badge feedback">Feedback</span></td>
                            <td><span class="status closed">Closed</span></td>
                            <td>2 days ago</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="btn-icon" onclick="viewMessage(4)" title="View Message">
                                        <i class="fas fa-eye"></i>
                                    </button>
                                    <button class="btn-icon" onclick="replyMessage(4)" title="Reply">
                                        <i class="fas fa-reply"></i>
                                    </button>
                                    <button class="btn-icon delete" onclick="deleteMessage(4)" title="Delete">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Pagination -->
            <div class="pagination">
                <button class="btn btn-outline" disabled>
                    <i class="fas fa-chevron-left"></i>
                    Previous
                </button>
                <span class="page-info">Page 1 of 7</span>
                <button class="btn btn-outline">
                    Next
                    <i class="fas fa-chevron-right"></i>
                </button>
            </div>
        </div>
    </div>

    <!-- Message View Modal -->
    <div id="messageModal" class="modal">
        <div class="modal-content large">
            <div class="modal-header">
                <h2 id="messageModalTitle">Message Details</h2>
                <button class="close-btn" onclick="closeMessageModal()">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="message-details">
                    <div class="message-header">
                        <div class="sender-details">
                            <img src="https://via.placeholder.com/50" alt="User" class="sender-avatar-large">
                            <div class="sender-info-detail">
                                <h3 id="senderName">Sarah Johnson</h3>
                                <p id="senderEmail">sarah.johnson@email.com</p>
                                <span id="messageDate" class="message-date">2 hours ago</span>
                            </div>
                        </div>
                        <div class="message-meta">
                            <span id="messageCategory" class="category-badge support">Support</span>
                            <span id="messageStatus" class="status new">New</span>
                        </div>
                    </div>
                    
                    <div class="message-content">
                        <h4 id="messageSubject">Product Return Request</h4>
                        <div id="messageBody" class="message-body">
                            <p>Hello,</p>
                            <p>I would like to return the lipstick I ordered last week. The color doesn't match what I expected from the website. The product number is #LIP001 and my order number is #ORD12345.</p>
                            <p>Could you please let me know the return process and if I can get a refund or exchange for a different color?</p>
                            <p>Thank you for your help.</p>
                            <p>Best regards,<br>Sarah Johnson</p>
                        </div>
                    </div>
                    
                    <div class="message-replies">
                        <h4>Replies</h4>
                        <div class="replies-list">
                            <div class="reply-item">
                                <div class="reply-header">
                                    <span class="reply-author">Admin Support</span>
                                    <span class="reply-date">1 hour ago</span>
                                </div>
                                <div class="reply-content">
                                    <p>Hello Sarah,</p>
                                    <p>Thank you for contacting us. We apologize for the inconvenience with your order.</p>
                                    <p>We would be happy to help you with the return process. Please follow these steps:</p>
                                    <ol>
                                        <li>Package the item in its original packaging</li>
                                        <li>Include the return form</li>
                                        <li>Ship to our return address</li>
                                    </ol>
                                    <p>Once we receive the item, we'll process your refund within 3-5 business days.</p>
                                    <p>Best regards,<br>Customer Support Team</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="reply-form">
                        <h4>Reply to Message</h4>
                        <form id="replyForm">
                            <div class="form-group">
                                <label for="replySubject">Subject</label>
                                <input type="text" id="replySubject" value="Re: Product Return Request">
                            </div>
                            <div class="form-group">
                                <label for="replyMessage">Message</label>
                                <textarea id="replyMessage" rows="6" placeholder="Type your reply here..."></textarea>
                            </div>
                            <div class="form-group">
                                <label class="checkbox-container">
                                    <input type="checkbox" id="markAsResolved">
                                    <span class="checkmark"></span>
                                    Mark as resolved
                                </label>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline" onclick="closeMessageModal()">Close</button>
                <button type="submit" form="replyForm" class="btn btn-primary">Send Reply</button>
            </div>--%>
             <div class="table-container">
                <table class="messages-table">
            <asp:GridView ID="GridView1" runat="server" CssClass="styled-grid" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Id">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Message">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Message") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                              <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">❌</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
</table>
                 </div>
        </div>
    </div>

</body>
</html>


 </asp:Content>

