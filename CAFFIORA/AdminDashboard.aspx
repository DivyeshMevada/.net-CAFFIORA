<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="CAFFIORA.AdminDashboard" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Dashboard - CAFFIORA</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="adminDashForm" runat="server">
        <!-- Admin Top Navigation Bar (Matches Page 17) -->
        <header class="dashboard-header">
            <a href="Default.aspx" class="brand-logo">CAFFIORA</a>

            <ul class="dashboard-nav-links">
                <li><a href="AdminDashboard.aspx" class="dashboard-nav-link active">Dashboard</a></li>
                <li><a href="AdminOrders.aspx" class="dashboard-nav-link">Orders</a></li>
                <li><a href="AdminStaff.aspx" class="dashboard-nav-link">Staff</a></li>
                <li><a href="AdminInventory.aspx" class="dashboard-nav-link">Inventory</a></li>
            </ul>

            <div class="header-actions">
                <a href="#" class="header-icon-btn"><i class="far fa-bell"></i></a>
                <a href="Login.aspx?role=admin" class="header-icon-btn" title="Admin Account"><i class="far fa-user-circle"></i></a>
            </div>
        </header>

        <div class="main-wrapper">
            <!-- Top Stats (Page 17) -->
            <div style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; margin-bottom: 28px;">
                <div class="dash-stat-card">
                    <div class="dash-stat-label-row">TOTAL REVENUE</div>
                    <div class="dash-stat-number">&#8377;4,82,500</div>
                </div>

                <div class="dash-stat-card">
                    <div class="dash-stat-label-row">TOTAL ORDERS</div>
                    <div class="dash-stat-number">1,240</div>
                </div>

                <div class="dash-stat-card">
                    <div class="dash-stat-label-row">AVG. ORDER VALUE</div>
                    <div class="dash-stat-number">&#8377;389</div>
                    <div style="font-size: 11px; color: var(--text-muted); margin-top: 4px;">Steady vs last week</div>
                </div>
            </div>

            <!-- Middle Row: Top Products & Recent Activity -->
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 24px; margin-bottom: 28px;">
                <!-- Top Products -->
                <div class="table-card">
                    <h3 style="font-size: 15px; font-weight: 700; margin-bottom: 16px;">Top Products</h3>
                    <div style="display: flex; flex-direction: column; gap: 14px;">
                        <div style="display: flex; justify-content: space-between; align-items: center; font-size: 14px;">
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <span style="font-weight: 700; color: #8C6A5A; width: 14px;">1</span>
                                <span>Velvet Espresso</span>
                            </div>
                            <span style="font-weight: 700;">412</span>
                        </div>
                        <div style="display: flex; justify-content: space-between; align-items: center; font-size: 14px;">
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <span style="font-weight: 700; color: #8C6A5A; width: 14px;">2</span>
                                <span>Italian Roast</span>
                            </div>
                            <span style="font-weight: 700;">389</span>
                        </div>
                        <div style="display: flex; justify-content: space-between; align-items: center; font-size: 14px;">
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <span style="font-weight: 700; color: #8C6A5A; width: 14px;">3</span>
                                <span>Vanilla Croissant</span>
                            </div>
                            <span style="font-weight: 700;">256</span>
                        </div>
                    </div>
                </div>

                <!-- Recent Activity -->
                <div class="table-card">
                    <h3 style="font-size: 15px; font-weight: 700; margin-bottom: 16px;">Recent Activity</h3>
                    <div style="display: flex; flex-direction: column; gap: 16px;">
                        <div style="display: flex; align-items: flex-start; gap: 12px;">
                            <i class="fas fa-exclamation-triangle" style="color: #BF392C; margin-top: 2px;"></i>
                            <div>
                                <div style="font-size: 13px; font-weight: 600;">Stock alert: Italian Roast low</div>
                                <div style="font-size: 11px; color: var(--text-muted);">10 mins ago</div>
                            </div>
                        </div>

                        <div style="display: flex; align-items: flex-start; gap: 12px;">
                            <i class="fas fa-user-plus" style="color: var(--color-primary); margin-top: 2px;"></i>
                            <div>
                                <div style="font-size: 13px; font-weight: 600;">New Staff Added: Arjun Mehta</div>
                                <div style="font-size: 11px; color: var(--text-muted);">2 hours ago</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Weekly Performance Summary (Page 17) -->
            <div style="margin-bottom: 28px;">
                <div style="font-size: 13px; font-weight: 700; color: var(--text-muted); text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 12px;">
                    Weekly Performance Summary
                </div>
                <div style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px;">
                    <div class="table-card" style="padding: 20px;">
                        <div style="font-size: 11px; font-weight: 700; color: var(--text-muted); text-transform: uppercase;">BESTSELLING CATEGORY</div>
                        <div style="font-size: 20px; font-family: var(--font-serif); font-weight: 700; margin: 6px 0;">Espresso Bar</div>
                        <div style="font-size: 11px; color: var(--text-muted);"><i class="fas fa-chart-pie"></i> 65% of total sales</div>
                    </div>

                    <div class="table-card" style="padding: 20px;">
                        <div style="font-size: 11px; font-weight: 700; color: var(--text-muted); text-transform: uppercase;">PEAK ORDER TIME</div>
                        <div style="font-size: 20px; font-family: var(--font-serif); font-weight: 700; margin: 6px 0;">9:00 AM &ndash; 11:00 AM</div>
                        <div style="font-size: 11px; color: var(--text-muted);"><i class="far fa-clock"></i> Highest traffic period</div>
                    </div>

                    <div class="table-card" style="padding: 20px;">
                        <div style="font-size: 11px; font-weight: 700; color: var(--text-muted); text-transform: uppercase;">CUSTOMER SATISFACTION</div>
                        <div style="font-size: 20px; font-family: var(--font-serif); font-weight: 700; margin: 6px 0;">4.9/5.0</div>
                        <div style="font-size: 11px; color: var(--text-muted);"><i class="fas fa-star" style="color: var(--accent-gold);"></i> Based on 850+ reviews</div>
                    </div>
                </div>
            </div>

            <!-- Store Performance Overview -->
            <div class="table-card">
                <h3 style="font-size: 15px; font-weight: 700; margin-bottom: 16px;">Store Performance Overview</h3>
                <table class="caffiora-table">
                    <thead>
                        <tr>
                            <th>BRANCH</th>
                            <th>REVENUE TODAY</th>
                            <th>ACTIVE STAFF</th>
                            <th>ORDER STATUS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Downtown (Main)</td>
                            <td>&#8377;42,500</td>
                            <td>5</td>
                            <td><span class="badge-status badge-ready">On Track</span></td>
                        </tr>
                        <tr>
                            <td>West End</td>
                            <td>&#8377;28,900</td>
                            <td>3</td>
                            <td><span class="badge-status badge-preparing">High Volume</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
