<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1Admin.Master" AutoEventWireup="true" CodeBehind="Adminsettings.aspx.cs" Inherits="elixbeauty7.Admin.Adminsettings" %>
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
    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beauty Admin - Settings</title>
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
                    <a href="Adminproducts.aspx">
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
                <li>
                    <a href="Admincontact.aspx">
                        <i class="fas fa-envelope"></i>
                        <span>Contact</span>
                    </a>
                </li>
                <li class="active">
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
                <h1>Settings</h1>
            </div>
            <div class="header-right">
                <button class="btn btn-primary" onclick="saveAllSettings()">
                    <i class="fas fa-save"></i>
                    Save All Changes
                </button>
            </div>
        </header>

        <div class="content">
            <div class="settings-container">
                <!-- General Settings -->
                <div class="settings-section">
                    <div class="section-header">
                        <h2>General Settings</h2>
                        <p>Configure basic application settings</p>
                    </div>
                    
                    <div class="settings-card">
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Application Name</h3>
                                <p>Display name for your beauty admin panel</p>
                            </div>
                            <input type="text" value="Beauty Admin Panel" class="setting-input">
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Default Currency</h3>
                                <p>Primary currency for pricing and transactions</p>
                            </div>
                            <select class="setting-select">
                                <option value="USD" selected>USD - US Dollar</option>
                                <option value="EUR">EUR - Euro</option>
                                <option value="GBP">GBP - British Pound</option>
                                <option value="CAD">CAD - Canadian Dollar</option>
                            </select>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Time Zone</h3>
                                <p>Default timezone for the application</p>
                            </div>
                            <select class="setting-select">
                                <option value="UTC-5" selected>Eastern Time (UTC-5)</option>
                                <option value="UTC-6">Central Time (UTC-6)</option>
                                <option value="UTC-7">Mountain Time (UTC-7)</option>
                                <option value="UTC-8">Pacific Time (UTC-8)</option>
                            </select>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Language</h3>
                                <p>Default language for the interface</p>
                            </div>
                            <select class="setting-select">
                                <option value="en" selected>English</option>
                                <option value="es">Spanish</option>
                                <option value="fr">French</option>
                                <option value="de">German</option>
                            </select>
                        </div>
                    </div>
                </div>

                <!-- Store Settings -->
                <div class="settings-section">
                    <div class="section-header">
                        <h2>Store Settings</h2>
                        <p>Configure your beauty store information</p>
                    </div>
                    
                    <div class="settings-card">
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Store Name</h3>
                                <p>Your beauty store's name</p>
                            </div>
                            <input type="text" value="Beauty Paradise" class="setting-input">
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Store Email</h3>
                                <p>Contact email for customer inquiries</p>
                            </div>
                            <input type="email" value="info@beautyparadise.com" class="setting-input">
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Store Phone</h3>
                                <p>Customer service phone number</p>
                            </div>
                            <input type="tel" value="+1 (555) 123-4567" class="setting-input">
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Store Address</h3>
                                <p>Physical store location</p>
                            </div>
                            <textarea class="setting-textarea" rows="3">123 Beauty Street
New York, NY 10001
United States</textarea>
                        </div>
                    </div>
                </div>

                <!-- Notification Settings -->
                <div class="settings-section">
                    <div class="section-header">
                        <h2>Notification Settings</h2>
                        <p>Configure how you receive notifications</p>
                    </div>
                    
                    <div class="settings-card">
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Email Notifications</h3>
                                <p>Receive notifications via email</p>
                            </div>
                            <label class="toggle-switch">
                                <input type="checkbox" checked>
                                <span class="slider"></span>
                            </label>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>New Order Alerts</h3>
                                <p>Get notified when new orders are placed</p>
                            </div>
                            <label class="toggle-switch">
                                <input type="checkbox" checked>
                                <span class="slider"></span>
                            </label>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Low Stock Alerts</h3>
                                <p>Get notified when products are running low</p>
                            </div>
                            <label class="toggle-switch">
                                <input type="checkbox" checked>
                                <span class="slider"></span>
                            </label>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Customer Reviews</h3>
                                <p>Get notified about new customer reviews</p>
                            </div>
                            <label class="toggle-switch">
                                <input type="checkbox">
                                <span class="slider"></span>
                            </label>
                        </div>
                    </div>
                </div>

                <!-- Security Settings -->
                <div class="settings-section">
                    <div class="section-header">
                        <h2>Security Settings</h2>
                        <p>Configure security and access controls</p>
                    </div>
                    
                    <div class="settings-card">
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Session Timeout</h3>
                                <p>Auto-logout after inactivity (minutes)</p>
                            </div>
                            <select class="setting-select">
                                <option value="15">15 minutes</option>
                                <option value="30" selected>30 minutes</option>
                                <option value="60">1 hour</option>
                                <option value="120">2 hours</option>
                            </select>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Password Policy</h3>
                                <p>Minimum password requirements</p>
                            </div>
                            <select class="setting-select">
                                <option value="weak">Weak (6+ characters)</option>
                                <option value="medium" selected>Medium (8+ chars, mixed case)</option>
                                <option value="strong">Strong (8+ chars, numbers, symbols)</option>
                            </select>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>IP Whitelist</h3>
                                <p>Restrict access to specific IP addresses</p>
                            </div>
                            <label class="toggle-switch">
                                <input type="checkbox">
                                <span class="slider"></span>
                            </label>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Login Attempts</h3>
                                <p>Maximum failed login attempts before lockout</p>
                            </div>
                            <select class="setting-select">
                                <option value="3">3 attempts</option>
                                <option value="5" selected>5 attempts</option>
                                <option value="10">10 attempts</option>
                            </select>
                        </div>
                    </div>
                </div>

                <!-- Backup & Maintenance -->
                <div class="settings-section">
                    <div class="section-header">
                        <h2>Backup & Maintenance</h2>
                        <p>Data backup and system maintenance options</p>
                    </div>
                    
                    <div class="settings-card">
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Auto Backup</h3>
                                <p>Automatically backup data daily</p>
                            </div>
                            <label class="toggle-switch">
                                <input type="checkbox" checked>
                                <span class="slider"></span>
                            </label>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Backup Frequency</h3>
                                <p>How often to create backups</p>
                            </div>
                            <select class="setting-select">
                                <option value="daily" selected>Daily</option>
                                <option value="weekly">Weekly</option>
                                <option value="monthly">Monthly</option>
                            </select>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Last Backup</h3>
                                <p>Most recent backup information</p>
                            </div>
                            <div class="backup-info">
                                <span>January 15, 2024 at 2:30 AM</span>
                                <button class="btn btn-outline btn-sm" onclick="createBackup()">
                                    <i class="fas fa-download"></i>
                                    Create Backup Now
                                </button>
                            </div>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>System Maintenance</h3>
                                <p>Schedule maintenance windows</p>
                            </div>
                            <div class="maintenance-info">
                                <span>Next: Sunday 3:00 AM - 4:00 AM</span>
                                <button class="btn btn-outline btn-sm" onclick="scheduleMaintenance()">
                                    <i class="fas fa-calendar"></i>
                                    Schedule
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Danger Zone -->
                <div class="settings-section danger-zone">
                    <div class="section-header">
                        <h2>Danger Zone</h2>
                        <p>Irreversible and destructive actions</p>
                    </div>
                    
                    <div class="settings-card danger-card">
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Reset All Settings</h3>
                                <p>Reset all settings to default values</p>
                            </div>
                            <button class="btn btn-danger" onclick="resetSettings()">
                                <i class="fas fa-undo"></i>
                                Reset Settings
                            </button>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Clear All Data</h3>
                                <p>Permanently delete all products, orders, and customer data</p>
                            </div>
                            <button class="btn btn-danger" onclick="clearAllData()">
                                <i class="fas fa-trash"></i>
                                Clear All Data
                            </button>
                        </div>
                        
                        <div class="setting-item">
                            <div class="setting-info">
                                <h3>Delete Account</h3>
                                <p>Permanently delete this admin account</p>
                            </div>
                            <button class="btn btn-danger" onclick="deleteAccount()">
                                <i class="fas fa-user-times"></i>
                                Delete Account
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
 </asp:Content>

