<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminOrders.aspx.cs" Inherits="CAFFIORA.AdminOrders" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Order Management - CAFFIORA</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="adminOrdersForm" runat="server">
        <header class="dashboard-header">
            <a href="Default.aspx" class="brand-logo">CAFFIORA</a>

            <ul class="dashboard-nav-links">
                <li><a href="AdminDashboard.aspx" class="dashboard-nav-link">Dashboard</a></li>
                <li><a href="AdminOrders.aspx" class="dashboard-nav-link active">Orders</a></li>
                <li><a href="AdminStaff.aspx" class="dashboard-nav-link">Staff</a></li>
                <li><a href="AdminInventory.aspx" class="dashboard-nav-link">Inventory</a></li>
            </ul>

            <div class="header-actions">
                <a href="#" class="header-icon-btn"><i class="far fa-bell"></i></a>
                <a href="Login.aspx?role=admin" class="header-icon-btn"><i class="far fa-user-circle"></i></a>
            </div>
        </header>

        <div class="main-wrapper">
            <!-- Top Controls (Page 18) -->
            <div style="display: flex; justify-content: space-between; align-items: flex-end; margin-bottom: 24px; gap: 20px; flex-wrap: wrap;">
                <div>
                    <h1 style="font-size: 32px; font-family: var(--font-serif); margin-bottom: 4px;">Order Management</h1>
                    <p style="font-size: 14px; color: var(--text-muted);">View and manage customer orders.</p>
                </div>

                <div style="position: relative; width: 280px;">
                    <i class="fas fa-search" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: var(--text-muted); font-size: 13px;"></i>
                    <input type="text" class="form-control-caffiora" placeholder="Search orders..." style="padding-left: 36px;" />
                </div>
            </div>

            <!-- Filter Pills -->
            <div style="display: flex; gap: 10px; margin-bottom: 20px;">
                <button type="button" class="option-pill-btn active">All Orders</button>
                <button type="button" class="option-pill-btn">Pending</button>
                <button type="button" class="option-pill-btn">Preparing</button>
                <button type="button" class="option-pill-btn">Completed</button>
            </div>

            <!-- Orders Table (Page 18) -->
            <div class="table-card">
                <table class="caffiora-table">
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer</th>
                            <th>Date</th>
                            <th>Items</th>
                            <th>Total</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>#CF-88291</strong></td>
                            <td>Karan Shah</td>
                            <td>Oct 24, 09:15 AM</td>
                            <td>Italian Roast x2, Velvet Es...</td>
                            <td><strong>&#8377;1,180</strong></td>
                            <td><span class="badge-status badge-preparing">Preparing</span></td>
                            <td>
                                <a href="StaffOrderDetails.aspx" style="margin-right: 10px; color: var(--text-muted);"><i class="far fa-eye"></i></a>
                                <a href="#" style="color: var(--text-muted);"><i class="fas fa-pencil-alt"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>#CF-88290</strong></td>
                            <td>Jatin Patel</td>
                            <td>Oct 24, 08:45 AM</td>
                            <td>Columbian Pour Over x1</td>
                            <td><strong>&#8377;850</strong></td>
                            <td><span class="badge-status badge-preparing">Preparing</span></td>
                            <td>
                                <a href="StaffOrderDetails.aspx" style="margin-right: 10px; color: var(--text-muted);"><i class="far fa-eye"></i></a>
                                <a href="#" style="color: var(--text-muted);"><i class="fas fa-pencil-alt"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>#CF-88289</strong></td>
                            <td>Ajay Mehta</td>
                            <td>Oct 24, 08:10 AM</td>
                            <td>Matcha Latte x1, Almond Cro...</td>
                            <td><strong>&#8377;1,120</strong></td>
                            <td><span class="badge-status badge-completed">Completed</span></td>
                            <td>
                                <a href="StaffOrderDetails.aspx" style="margin-right: 10px; color: var(--text-muted);"><i class="far fa-eye"></i></a>
                                <a href="#" style="color: var(--text-muted);"><i class="fas fa-pencil-alt"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>#CF-88288</strong></td>
                            <td>Jay Sakhiya</td>
                            <td>Oct 24, 07:55 AM</td>
                            <td>Cold Brew x2, Oat Milk Lat...</td>
                            <td><strong>&#8377;920</strong></td>
                            <td><span class="badge-status badge-preparing">Pending</span></td>
                            <td>
                                <a href="StaffOrderDetails.aspx" style="margin-right: 10px; color: var(--text-muted);"><i class="far fa-eye"></i></a>
                                <a href="#" style="color: var(--text-muted);"><i class="fas fa-pencil-alt"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>#CF-88287</strong></td>
                            <td>Raj Joshi</td>
                            <td>Oct 24, 07:30 AM</td>
                            <td>Flat White x1, Blueberry Mu...</td>
                            <td><strong>&#8377;580</strong></td>
                            <td><span class="badge-status badge-completed">Completed</span></td>
                            <td>
                                <a href="StaffOrderDetails.aspx" style="margin-right: 10px; color: var(--text-muted);"><i class="far fa-eye"></i></a>
                                <a href="#" style="color: var(--text-muted);"><i class="fas fa-pencil-alt"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>#CF-88286</strong></td>
                            <td>Priya Sharma</td>
                            <td>Oct 24, 07:15 AM</td>
                            <td>Cappuccino x2, Butter Crois...</td>
                            <td><strong>&#8377;1,240</strong></td>
                            <td><span class="badge-status badge-preparing">Preparing</span></td>
                            <td>
                                <a href="StaffOrderDetails.aspx" style="margin-right: 10px; color: var(--text-muted);"><i class="far fa-eye"></i></a>
                                <a href="#" style="color: var(--text-muted);"><i class="fas fa-pencil-alt"></i></a>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px; font-size: 13px; color: var(--text-muted);">
                    <span>Showing 1-6 of 42 orders</span>
                    <div style="display: flex; gap: 6px;">
                        <button type="button" class="btn-outline-caffiora" style="padding: 4px 10px; font-size: 12px;">&lt;</button>
                        <button type="button" class="btn-outline-caffiora" style="padding: 4px 10px; font-size: 12px;">&gt;</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
