<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffOrders.aspx.cs" Inherits="CAFFIORA.StaffOrders" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Order Management - CAFFIORA Staff</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="staffOrdersForm" runat="server">
        <header class="dashboard-header">
            <a href="Default.aspx" class="brand-logo">CAFFIORA</a>

            <ul class="dashboard-nav-links">
                <li><a href="StaffDashboard.aspx" class="dashboard-nav-link">Dashboard</a></li>
                <li><a href="StaffOrders.aspx" class="dashboard-nav-link active">Orders</a></li>
            </ul>

            <div class="header-actions">
                <a href="#" class="header-icon-btn"><i class="far fa-bell"></i></a>
                <a href="StaffProfile.aspx" class="header-icon-btn"><i class="far fa-user-circle"></i></a>
            </div>
        </header>

        <div class="main-wrapper">
            <div style="display: grid; grid-template-columns: 240px 1fr; gap: 28px;">
                <!-- Left Sidebar (Page 13) -->
                <div>
                    <div class="quick-actions-card" style="margin-bottom: 20px;">
                        <div style="font-size: 11px; font-weight: 700; text-transform: uppercase; letter-spacing: 1px; color: var(--text-muted); margin-bottom: 4px;">
                            Quick Actions
                        </div>
                        <a href="StaffOrders.aspx" class="quick-action-btn active">
                            <i class="fas fa-receipt"></i> Manage Orders
                        </a>
                        <a href="StaffProfile.aspx" class="quick-action-btn">
                            <i class="far fa-user"></i> View Profile
                        </a>
                        <a href="StaffDashboard.aspx" class="quick-action-btn">
                            <i class="fas fa-th-large"></i> Dashboard
                        </a>
                    </div>

                    <div class="quick-actions-card">
                        <div style="font-size: 11px; font-weight: 700; text-transform: uppercase; letter-spacing: 1px; color: var(--text-muted); margin-bottom: 4px;">
                            SHIFT STATUS
                        </div>
                        <div style="display: flex; align-items: center; gap: 8px; font-weight: 700; color: #237A47;">
                            <i class="fas fa-check-circle"></i> Active
                        </div>
                        <div style="font-size: 12px; color: var(--text-muted);">Ends at 4:00 PM</div>
                    </div>
                </div>

                <!-- Right Main Content -->
                <div>
                    <h1 style="font-size: 32px; font-family: var(--font-serif); margin-bottom: 4px;">Order Management</h1>
                    <p style="font-size: 14px; color: var(--text-muted); margin-bottom: 20px;">Manage and track all café orders.</p>

                    <!-- Search and Status Filters -->
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; gap: 16px; flex-wrap: wrap;">
                        <div style="position: relative; flex: 1; max-width: 320px;">
                            <i class="fas fa-search" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: var(--text-muted); font-size: 13px;"></i>
                            <input type="text" class="form-control-caffiora" placeholder="Search ID or Customer..." style="padding-left: 36px;" />
                        </div>

                        <div style="display: flex; gap: 8px; flex-wrap: wrap;">
                            <button type="button" class="option-pill-btn active">All</button>
                            <button type="button" class="option-pill-btn">New</button>
                            <button type="button" class="option-pill-btn">Preparing</button>
                            <button type="button" class="option-pill-btn">Ready</button>
                            <button type="button" class="option-pill-btn">Completed</button>
                            <button type="button" class="option-pill-btn">Cancelled</button>
                        </div>
                    </div>

                    <!-- Orders Table -->
                    <div class="table-card">
                        <table class="caffiora-table">
                            <thead>
                                <tr>
                                    <th>ORDER ID</th>
                                    <th>CUSTOMER</th>
                                    <th>ITEMS</th>
                                    <th>TOTAL (INR &#8377;)</th>
                                    <th>ORDER TIME</th>
                                    <th>STATUS</th>
                                    <th>ACTIONS</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><strong>#CF-88291</strong></td>
                                    <td>Karan Shah</td>
                                    <td>Italian Roast x2</td>
                                    <td>&#8377;1,180</td>
                                    <td>10:24 AM</td>
                                    <td><span class="badge-status badge-preparing">Preparing</span></td>
                                    <td><a href="StaffOrderDetails.aspx" style="color: var(--color-primary); font-weight: 600;">View &gt;</a></td>
                                </tr>
                                <tr>
                                    <td><strong>#CF-88292</strong></td>
                                    <td>Aarav Mehta</td>
                                    <td>Caramel Macchiato x1</td>
                                    <td>&#8377;319</td>
                                    <td>10:31 AM</td>
                                    <td><span class="badge-status badge-new">New</span></td>
                                    <td><a href="StaffOrderDetails.aspx" style="color: var(--color-primary); font-weight: 600;">View &gt;</a></td>
                                </tr>
                                <tr>
                                    <td><strong>#CF-88293</strong></td>
                                    <td>Riya Patel</td>
                                    <td>Velvet Croissant x2</td>
                                    <td>&#8377;478</td>
                                    <td>10:42 AM</td>
                                    <td><span class="badge-status badge-ready">Ready</span></td>
                                    <td><a href="StaffOrderDetails.aspx" style="color: var(--color-primary); font-weight: 600;">View &gt;</a></td>
                                </tr>
                                <tr>
                                    <td><strong>#CF-88294</strong></td>
                                    <td>Dev Shah</td>
                                    <td>Caffè Latte x1</td>
                                    <td>&#8377;289</td>
                                    <td>10:48 AM</td>
                                    <td><span class="badge-status badge-completed">Completed</span></td>
                                    <td><a href="StaffOrderDetails.aspx" style="color: var(--color-primary); font-weight: 600;">View &gt;</a></td>
                                </tr>
                                <tr>
                                    <td><strong>#CF-88295</strong></td>
                                    <td>Anjali Rao</td>
                                    <td>Stroopwafel Cupcake x3</td>
                                    <td>&#8377;867</td>
                                    <td>11:05 AM</td>
                                    <td><span class="badge-status badge-new">New</span></td>
                                    <td><a href="StaffOrderDetails.aspx" style="color: var(--color-primary); font-weight: 600;">View &gt;</a></td>
                                </tr>
                                <tr>
                                    <td><strong>#CF-88296</strong></td>
                                    <td>Rohan Joshi</td>
                                    <td>Iced Matcha x2</td>
                                    <td>&#8377;698</td>
                                    <td>11:15 AM</td>
                                    <td><span class="badge-status badge-preparing">Preparing</span></td>
                                    <td><a href="StaffOrderDetails.aspx" style="color: var(--color-primary); font-weight: 600;">View &gt;</a></td>
                                </tr>
                            </tbody>
                        </table>

                        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px; font-size: 13px; color: var(--text-muted);">
                            <span>Showing 1 to 6 of 42 orders</span>
                            <div style="display: flex; gap: 6px;">
                                <button type="button" class="btn-outline-caffiora" style="padding: 4px 10px; font-size: 12px;">Prev</button>
                                <button type="button" class="btn-primary-caffiora" style="padding: 4px 10px; font-size: 12px;">1</button>
                                <button type="button" class="btn-outline-caffiora" style="padding: 4px 10px; font-size: 12px;">2</button>
                                <button type="button" class="btn-outline-caffiora" style="padding: 4px 10px; font-size: 12px;">3</button>
                                <button type="button" class="btn-outline-caffiora" style="padding: 4px 10px; font-size: 12px;">Next</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
