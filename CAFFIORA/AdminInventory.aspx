<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminInventory.aspx.cs" Inherits="CAFFIORA.AdminInventory" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Inventory Management - CAFFIORA Admin</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="adminInvForm" runat="server">
        <header class="dashboard-header">
            <a href="Default.aspx" class="brand-logo">CAFFIORA</a>

            <ul class="dashboard-nav-links">
                <li><a href="AdminDashboard.aspx" class="dashboard-nav-link">Dashboard</a></li>
                <li><a href="AdminOrders.aspx" class="dashboard-nav-link">Orders</a></li>
                <li><a href="AdminStaff.aspx" class="dashboard-nav-link">Staff</a></li>
                <li><a href="AdminInventory.aspx" class="dashboard-nav-link active">Inventory</a></li>
            </ul>

            <div class="header-actions">
                <a href="#" class="header-icon-btn"><i class="far fa-bell"></i></a>
                <a href="Login.aspx?role=admin" class="header-icon-btn"><i class="far fa-user-circle"></i></a>
            </div>
        </header>

        <div class="main-wrapper">
            <!-- Header Row with Add New Item (Page 20) -->
            <div style="display: flex; justify-content: space-between; align-items: flex-end; margin-bottom: 24px; gap: 20px; flex-wrap: wrap;">
                <div>
                    <h1 style="font-size: 32px; font-family: var(--font-serif); margin-bottom: 4px;">Inventory Management</h1>
                    <p style="font-size: 14px; color: var(--text-muted);">Track and manage artisanal coffee beans, milk, and bakery supplies.</p>
                </div>

                <button type="button" class="btn-primary-caffiora" style="padding: 11px 20px; font-size: 13px;" onclick="showToast('Add New Item modal opened');">
                    + Add New Item
                </button>
            </div>

            <div style="display: grid; grid-template-columns: 1fr 280px; gap: 24px;">
                <!-- Main Inventory Table (Page 20) -->
                <div class="table-card">
                    <table class="caffiora-table">
                        <thead>
                            <tr>
                                <th>ITEM NAME</th>
                                <th>CATEGORY</th>
                                <th>CURRENT STOCK</th>
                                <th>THRESHOLD</th>
                                <th>STATUS</th>
                                <th>ACTIONS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><strong>Italian Roast</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Coffee Beans</span></td>
                                <td>45 kg</td>
                                <td>20 kg</td>
                                <td><span style="color: #237A47; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> In Stock</span></td>
                                <td><button type="button" class="btn-outline-caffiora" style="padding: 4px 12px; font-size: 11px;" onclick="showToast('Restock order placed for Italian Roast');">Restock</button></td>
                            </tr>
                            <tr>
                                <td><strong>Velvet Espresso</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Coffee Beans</span></td>
                                <td>12 kg</td>
                                <td>15 kg</td>
                                <td><span style="color: #B56B1E; font-weight: 600;">Low Stock</span></td>
                                <td><button type="button" class="btn-outline-caffiora" style="padding: 4px 12px; font-size: 11px;" onclick="showToast('Restock order placed for Velvet Espresso');">Restock</button></td>
                            </tr>
                            <tr>
                                <td><strong>Full Cream Milk</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Dairy</span></td>
                                <td>120 L</td>
                                <td>50 L</td>
                                <td><span style="color: #237A47; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> In Stock</span></td>
                                <td><button type="button" class="btn-outline-caffiora" style="padding: 4px 12px; font-size: 11px;" onclick="showToast('Restock order placed for Full Cream Milk');">Restock</button></td>
                            </tr>
                            <tr>
                                <td><strong>Oat Milk</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Dairy</span></td>
                                <td>8 L</td>
                                <td>20 L</td>
                                <td><span style="color: #BF392C; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> Out of Stock</span></td>
                                <td><button type="button" class="btn-outline-caffiora" style="padding: 4px 12px; font-size: 11px;" onclick="showToast('Urgent restock ordered for Oat Milk');">Restock</button></td>
                            </tr>
                            <tr>
                                <td><strong>Madagascar Vanilla Croissants</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Bakery</span></td>
                                <td>6 units</td>
                                <td>12 units</td>
                                <td><span style="color: #B56B1E; font-weight: 600;">Low Stock</span></td>
                                <td><button type="button" class="btn-outline-caffiora" style="padding: 4px 12px; font-size: 11px;" onclick="showToast('Restock order placed for Croissants');">Restock</button></td>
                            </tr>
                            <tr>
                                <td><strong>Almond Milk</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Dairy</span></td>
                                <td>15 L</td>
                                <td>10 L</td>
                                <td><span style="color: #237A47; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> In Stock</span></td>
                                <td><button type="button" class="btn-outline-caffiora" style="padding: 4px 12px; font-size: 11px;" onclick="showToast('Restock order placed for Almond Milk');">Restock</button></td>
                            </tr>
                            <tr>
                                <td><strong>Organic Honey</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Pantry</span></td>
                                <td>4 units</td>
                                <td>5 units</td>
                                <td><span style="color: #B56B1E; font-weight: 600;">Low Stock</span></td>
                                <td><button type="button" class="btn-outline-caffiora" style="padding: 4px 12px; font-size: 11px;" onclick="showToast('Restock order placed for Honey');">Restock</button></td>
                            </tr>
                            <tr>
                                <td><strong>Chocolate Sauce</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Pantry</span></td>
                                <td>0 units</td>
                                <td>3 units</td>
                                <td><span style="color: #BF392C; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> Out of Stock</span></td>
                                <td><button type="button" class="btn-outline-caffiora" style="padding: 4px 12px; font-size: 11px;" onclick="showToast('Urgent restock ordered for Chocolate Sauce');">Restock</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- Right Sidebar: Quick Stats & Recent Deliveries (Page 20) -->
                <div>
                    <!-- Quick Stats -->
                    <div class="table-card" style="margin-bottom: 20px;">
                        <h3 style="font-size: 14px; font-weight: 700; margin-bottom: 14px;">Quick Stats</h3>
                        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px;">
                            <div style="display: flex; align-items: center; gap: 8px; font-size: 13px; color: #BF392C;">
                                <i class="fas fa-exclamation-triangle"></i> Low Stock Items
                            </div>
                            <span style="font-weight: 700; color: #BF392C;">3</span>
                        </div>
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <div style="display: flex; align-items: center; gap: 8px; font-size: 13px; color: var(--text-muted);">
                                <i class="far fa-folder"></i> Total Items
                            </div>
                            <span style="font-weight: 700; color: var(--text-main);">142</span>
                        </div>
                    </div>

                    <!-- Recent Deliveries -->
                    <div class="table-card">
                        <h3 style="font-size: 14px; font-weight: 700; margin-bottom: 14px;">Recent Deliveries</h3>
                        
                        <div style="display: flex; flex-direction: column; gap: 14px; margin-bottom: 18px;">
                            <div>
                                <div style="display: flex; justify-content: space-between; font-size: 13px; font-weight: 600;">
                                    <span>Dairy Supplier Inc.</span>
                                    <span style="color: #237A47;">+50 L Milk</span>
                                </div>
                                <div style="font-size: 11px; color: var(--text-muted);">Today, 08:30 AM</div>
                            </div>

                            <div>
                                <div style="display: flex; justify-content: space-between; font-size: 13px; font-weight: 600;">
                                    <span>Artisan Bakers Co.</span>
                                    <span style="color: #237A47;">+24 Pastries</span>
                                </div>
                                <div style="font-size: 11px; color: var(--text-muted);">Yesterday, 06:15 AM</div>
                            </div>

                            <div>
                                <div style="display: flex; justify-content: space-between; font-size: 13px; font-weight: 600;">
                                    <span>Global Coffee Roasters</span>
                                    <span style="color: #237A47;">+100 kg Beans</span>
                                </div>
                                <div style="font-size: 11px; color: var(--text-muted);">Oct 12, 10:00 AM</div>
                            </div>
                        </div>

                        <button type="button" class="btn-outline-caffiora" style="width: 100%; padding: 8px; font-size: 12px;" onclick="showToast('Displaying full deliveries history');">
                            View All Deliveries
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="js/site.js"></script>
</body>
</html>
