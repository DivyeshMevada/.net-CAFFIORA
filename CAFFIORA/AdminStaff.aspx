<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminStaff.aspx.cs" Inherits="CAFFIORA.AdminStaff" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Staff Management - CAFFIORA Admin</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="adminStaffForm" runat="server">
        <header class="dashboard-header">
            <a href="Default.aspx" class="brand-logo">CAFFIORA</a>

            <ul class="dashboard-nav-links">
                <li><a href="AdminDashboard.aspx" class="dashboard-nav-link">Dashboard</a></li>
                <li><a href="AdminOrders.aspx" class="dashboard-nav-link">Orders</a></li>
                <li><a href="AdminStaff.aspx" class="dashboard-nav-link active">Staff</a></li>
                <li><a href="AdminInventory.aspx" class="dashboard-nav-link">Inventory</a></li>
            </ul>

            <div class="header-actions">
                <a href="#" class="header-icon-btn"><i class="far fa-bell"></i></a>
                <a href="Login.aspx?role=admin" class="header-icon-btn"><i class="far fa-user-circle"></i></a>
            </div>
        </header>

        <div class="main-wrapper">
            <!-- Header Row with Search & Add Staff -->
            <div style="display: flex; justify-content: space-between; align-items: flex-end; margin-bottom: 24px; gap: 20px; flex-wrap: wrap;">
                <div>
                    <h1 style="font-size: 32px; font-family: var(--font-serif); margin-bottom: 4px;">Staff Management</h1>
                    <p style="font-size: 14px; color: var(--text-muted);">Oversee artisanal baristas and support staff.</p>
                </div>

                <div style="display: flex; gap: 12px; align-items: center;">
                    <div style="position: relative; width: 240px;">
                        <i class="fas fa-search" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: var(--text-muted); font-size: 13px;"></i>
                        <input type="text" class="form-control-caffiora" placeholder="Search staff members..." style="padding-left: 36px;" />
                    </div>
                    <button type="button" class="btn-primary-caffiora" style="padding: 11px 20px; font-size: 13px;" onclick="showToast('Add Staff modal opened');">
                        + Add Staff
                    </button>
                </div>
            </div>

            <div style="display: grid; grid-template-columns: 1fr 280px; gap: 24px;">
                <!-- Main Active Roster Table (Page 19) -->
                <div class="table-card">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
                        <h3 style="font-size: 14px; font-weight: 700;">Active Roster</h3>
                        <span style="font-size: 12px; color: var(--text-muted); cursor: pointer;"><i class="fas fa-filter"></i> Filter</span>
                    </div>

                    <table class="caffiora-table">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Role</th>
                                <th>Email</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><strong>Arjun Mehta</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Barista</span></td>
                                <td>arjunm@gmail.com</td>
                                <td><span style="color: #237A47; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> Active</span></td>
                            </tr>
                            <tr>
                                <td><strong>Priya Sharma</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Manager</span></td>
                                <td>priyas@gmail.com</td>
                                <td><span style="color: #C86228; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> On Break</span></td>
                            </tr>
                            <tr>
                                <td><strong>Rajesh Iyer</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Shift Lead</span></td>
                                <td>rajeshi@gmail.com</td>
                                <td><span style="color: #8C847E; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> Offline</span></td>
                            </tr>
                            <tr>
                                <td><strong>Meera Reddy</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Barista</span></td>
                                <td>meerar@gmail.com</td>
                                <td><span style="color: #237A47; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> Active</span></td>
                            </tr>
                            <tr>
                                <td><strong>Amit Shah</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Barista</span></td>
                                <td>amits@gmail.com</td>
                                <td><span style="color: #237A47; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> Active</span></td>
                            </tr>
                            <tr>
                                <td><strong>Sneha Kapoor</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Barista</span></td>
                                <td>sneha@gmail.com</td>
                                <td><span style="color: #237A47; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> Active</span></td>
                            </tr>
                            <tr>
                                <td><strong>Vikram Singh</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Shift Lead</span></td>
                                <td>vikrams@gmail.com</td>
                                <td><span style="color: #C86228; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> On Break</span></td>
                            </tr>
                            <tr>
                                <td><strong>Ananya Gupta</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Barista</span></td>
                                <td>ananyag@gmail.com</td>
                                <td><span style="color: #8C847E; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> Offline</span></td>
                            </tr>
                            <tr>
                                <td><strong>Rohan Deshmukh</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Barista</span></td>
                                <td>rohand@gmail.com</td>
                                <td><span style="color: #237A47; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> Active</span></td>
                            </tr>
                            <tr>
                                <td><strong>Kavita Rao</strong></td>
                                <td><span class="option-pill-btn" style="padding: 3px 12px; font-size: 11px;">Manager</span></td>
                                <td>kavitar@gmail.com</td>
                                <td><span style="color: #237A47; font-weight: 600;"><i class="fas fa-circle" style="font-size: 8px;"></i> Active</span></td>
                            </tr>
                        </tbody>
                    </table>

                    <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 18px; font-size: 12px; color: var(--text-muted);">
                        <span>Showing 1-10 of 12 staff</span>
                        <div style="display: flex; gap: 4px;">
                            <button type="button" class="btn-outline-caffiora" style="padding: 3px 8px; font-size: 11px;">&lt;</button>
                            <button type="button" class="btn-outline-caffiora" style="padding: 3px 8px; font-size: 11px;">&gt;</button>
                        </div>
                    </div>
                </div>

                <!-- Right Sidebar: Shift Overview & Schedule Needs (Page 19) -->
                <div>
                    <!-- Shift Overview -->
                    <div class="table-card" style="margin-bottom: 20px;">
                        <h3 style="font-size: 14px; font-weight: 700; margin-bottom: 14px;">Shift Overview</h3>
                        <div class="summary-row">
                            <span>On Shift</span>
                            <span style="font-weight: 700; color: var(--text-main);">8</span>
                        </div>
                        <div class="summary-row">
                            <span>On Break</span>
                            <span style="font-weight: 700; color: var(--text-main);">2</span>
                        </div>
                        <div class="summary-row" style="margin-bottom: 0;">
                            <span>Next Shift</span>
                            <span style="font-weight: 700; color: var(--text-main);">14:00</span>
                        </div>
                    </div>

                    <!-- Schedule Needs -->
                    <div class="table-card">
                        <div style="font-size: 12px; font-weight: 700; color: var(--text-muted); display: flex; align-items: center; gap: 6px; margin-bottom: 8px;">
                            <i class="far fa-clock"></i> Schedule Needs
                        </div>
                        <p style="font-size: 13px; color: var(--text-main); margin-bottom: 16px; line-height: 1.5;">
                            Short 1 Barista for the weekend morning rush.
                        </p>
                        <button type="button" class="btn-outline-caffiora" style="width: 100%; padding: 9px; font-size: 12px;" onclick="showToast('Schedule review planner opened');">
                            Review Schedule
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
