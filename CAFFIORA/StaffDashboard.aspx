<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffDashboard.aspx.cs" Inherits="CAFFIORA.StaffDashboard" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Staff Dashboard - CAFFIORA</title>
    
    <!-- Google Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="staffDashForm" runat="server">
        <!-- Staff Top Header (Matches Page 12) -->
        <header class="dashboard-header">
            <a href="Default.aspx" class="brand-logo">CAFFIORA</a>

            <ul class="dashboard-nav-links">
                <li><a href="StaffDashboard.aspx" class="dashboard-nav-link active">Dashboard</a></li>
                <li><a href="StaffOrders.aspx" class="dashboard-nav-link">Orders</a></li>
            </ul>

            <div class="header-actions">
                <a href="#" class="header-icon-btn" title="Notifications"><i class="far fa-bell"></i></a>
                <a href="StaffProfile.aspx" class="header-icon-btn" title="Staff Profile"><i class="far fa-user-circle"></i></a>
            </div>
        </header>

        <div class="main-wrapper">
            <!-- Greeting & Date -->
            <div style="display: flex; justify-content: space-between; align-items: flex-end; margin-bottom: 28px;">
                <div>
                    <h1 style="font-size: 28px; font-family: var(--font-serif); margin-bottom: 4px;">Good Morning, Staff</h1>
                    <p style="font-size: 13px; color: var(--text-muted);">Here's today's café activity at a glance.</p>
                </div>
                <div style="background-color: #FFFFFF; border: 1px solid var(--border-color); border-radius: var(--radius-sm); padding: 6px 14px; font-size: 12px; color: var(--text-muted); display: flex; align-items: center; gap: 8px;">
                    <i class="far fa-calendar-alt"></i> Today, 08 Aug 2026
                </div>
            </div>

            <!-- 4 Stat Cards (Page 12) -->
            <div class="dashboard-stats-grid">
                <div class="dash-stat-card">
                    <div class="dash-stat-label-row">
                        <span>TODAY'S ORDERS</span>
                        <i class="far fa-clipboard"></i>
                    </div>
                    <div class="dash-stat-number">24</div>
                </div>

                <div class="dash-stat-card">
                    <div class="dash-stat-label-row">
                        <span>PENDING ORDERS</span>
                        <i class="far fa-clock"></i>
                    </div>
                    <div class="dash-stat-number">6</div>
                </div>

                <div class="dash-stat-card">
                    <div class="dash-stat-label-row">
                        <span>PREPARING</span>
                        <i class="fas fa-mug-hot"></i>
                    </div>
                    <div class="dash-stat-number">8</div>
                </div>

                <div class="dash-stat-card">
                    <div class="dash-stat-label-row">
                        <span>COMPLETED</span>
                        <i class="far fa-check-circle"></i>
                    </div>
                    <div class="dash-stat-number">10</div>
                </div>
            </div>

            <!-- Main Layout: Orders Table & Quick Actions -->
            <div class="dash-content-layout">
                <!-- Orders Table Card -->
                <div class="table-card">
                    <div class="table-header-row">
                        <h3 style="font-size: 14px; font-weight: 700; text-transform: uppercase; letter-spacing: 1px;">TODAY'S ORDERS</h3>
                        <div style="display: flex; gap: 6px;">
                            <span style="font-size: 11px; font-weight: 700; color: var(--color-primary); cursor: pointer; padding: 2px 6px;">ALL</span>
                            <span style="font-size: 11px; font-weight: 600; color: var(--text-muted); cursor: pointer; padding: 2px 6px;">NEW</span>
                            <span style="font-size: 11px; font-weight: 600; color: var(--text-muted); cursor: pointer; padding: 2px 6px;">PREPARING</span>
                            <span style="font-size: 11px; font-weight: 600; color: var(--text-muted); cursor: pointer; padding: 2px 6px;">READY</span>
                            <span style="font-size: 11px; font-weight: 600; color: var(--text-muted); cursor: pointer; padding: 2px 6px;">COMPLETED</span>
                        </div>
                    </div>

                    <table class="caffiora-table">
                        <thead>
                            <tr>
                                <th>ORDER</th>
                                <th>CUSTOMER</th>
                                <th>ITEMS</th>
                                <th>TIME</th>
                                <th>STATUS</th>
                                <th>ACTION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><strong>#CF-88291</strong></td>
                                <td>Karan Shah</td>
                                <td>Italian Roast x2</td>
                                <td>10:24 AM</td>
                                <td><span class="badge-status badge-preparing">Preparing</span></td>
                                <td><a href="StaffOrderDetails.aspx" style="color: var(--color-primary); font-weight: 600;">View</a></td>
                            </tr>
                            <tr>
                                <td><strong>#CF-88292</strong></td>
                                <td>Aarav Mehta</td>
                                <td>Caramel Macchiato x1</td>
                                <td>10:31 AM</td>
                                <td><span class="badge-status badge-new">New</span></td>
                                <td><a href="StaffOrderDetails.aspx" style="color: var(--color-primary); font-weight: 600;">View</a></td>
                            </tr>
                            <tr>
                                <td><strong>#CF-88293</strong></td>
                                <td>Riya Patel</td>
                                <td>Velvet Croissant x2</td>
                                <td>10:42 AM</td>
                                <td><span class="badge-status badge-ready">Ready</span></td>
                                <td><a href="StaffOrderDetails.aspx" style="color: var(--color-primary); font-weight: 600;">View</a></td>
                            </tr>
                            <tr>
                                <td><strong>#CF-88294</strong></td>
                                <td>Dev Shah</td>
                                <td>Caffè Latte x1</td>
                                <td>10:48 AM</td>
                                <td><span class="badge-status badge-completed">Completed</span></td>
                                <td><a href="StaffOrderDetails.aspx" style="color: var(--color-primary); font-weight: 600;">View</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- Quick Actions Sidebar -->
                <div>
                    <div class="quick-actions-card">
                        <div style="font-size: 12px; font-weight: 700; text-transform: uppercase; letter-spacing: 1px; color: var(--text-muted); margin-bottom: 6px;">
                            QUICK ACTIONS
                        </div>
                        <a href="StaffDashboard.aspx" class="quick-action-btn active">
                            <i class="fas fa-th-large"></i> Dashboard
                        </a>
                        <a href="StaffOrders.aspx" class="quick-action-btn">
                            <i class="fas fa-receipt"></i> Manage Orders
                        </a>
                        <a href="StaffProfile.aspx" class="quick-action-btn">
                            <i class="far fa-user"></i> View Profile
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
