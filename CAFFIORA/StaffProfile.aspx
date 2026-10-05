<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffProfile.aspx.cs" Inherits="CAFFIORA.StaffProfile" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Staff Profile - CAFFIORA</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="staffProfileForm" runat="server">
        <header class="dashboard-header">
            <a href="Default.aspx" class="brand-logo">CAFFIORA</a>

            <ul class="dashboard-nav-links">
                <li><a href="StaffDashboard.aspx" class="dashboard-nav-link">Dashboard</a></li>
                <li><a href="StaffOrders.aspx" class="dashboard-nav-link">Orders</a></li>
            </ul>

            <div class="header-actions">
                <a href="#" class="header-icon-btn"><i class="far fa-bell"></i></a>
                <a href="StaffProfile.aspx" class="header-icon-btn"><i class="far fa-user-circle"></i></a>
            </div>
        </header>

        <div class="main-wrapper">
            <div style="margin-bottom: 24px;">
                <h1 style="font-size: 28px; font-family: var(--font-serif); margin-bottom: 4px;">Staff Profile</h1>
                <p style="font-size: 13px; color: var(--text-muted);">Manage your personal information and preferences.</p>
            </div>

            <div style="display: grid; grid-template-columns: 240px 1fr; gap: 28px;">
                <!-- Left Sidebar Navigation (Page 15) -->
                <div class="quick-actions-card">
                    <a href="StaffProfile.aspx" class="quick-action-btn active">
                        <i class="far fa-user"></i> Personal Info
                    </a>
                    <a href="#" class="quick-action-btn" onclick="showToast('Security settings loaded'); return false;">
                        <i class="fas fa-shield-alt"></i> Security
                    </a>
                    <a href="#" class="quick-action-btn" onclick="showToast('Preferences updated'); return false;">
                        <i class="fas fa-cog"></i> Preferences
                    </a>
                    <a href="#" class="quick-action-btn" onclick="showToast('Loading shift logs...'); return false;">
                        <i class="far fa-clock"></i> Shift History
                    </a>
                    <a href="Login.aspx?role=staff" class="quick-action-btn" style="color: #9E3A3A;">
                        <i class="fas fa-sign-out-alt"></i> Logout
                    </a>
                </div>

                <!-- Right Form Area (Page 15) -->
                <div class="table-card" style="padding: 36px;">
                    <h3 style="font-size: 16px; font-weight: 700; margin-bottom: 20px;">Personal Information</h3>

                    <!-- Avatar Row -->
                    <div style="display: flex; align-items: center; gap: 16px; margin-bottom: 28px;">
                        <div style="width: 64px; height: 64px; border-radius: 50%; background-color: #8C6A5A; color: #FFFFFF; display: flex; align-items: center; justify-content: center; font-size: 20px; font-weight: 700;">
                            AM
                        </div>
                        <button type="button" class="btn-outline-caffiora" style="padding: 7px 16px; font-size: 12px;" onclick="showToast('Photo upload demo triggered');">
                            Change Photo
                        </button>
                    </div>

                    <!-- Row 1 -->
                    <div class="two-col-inputs">
                        <div class="form-group">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control-caffiora" value="Arjun Mehta" />
                        </div>
                        <div class="form-group">
                            <label class="form-label">Staff ID</label>
                            <input type="text" class="form-control-caffiora" value="STF-5582" readonly="readonly" style="background-color: #EFEBE5;" />
                        </div>
                    </div>

                    <!-- Row 2 -->
                    <div class="two-col-inputs">
                        <div class="form-group">
                            <label class="form-label">Role</label>
                            <input type="text" class="form-control-caffiora" value="Barista" readonly="readonly" style="background-color: #EFEBE5;" />
                        </div>
                        <div class="form-group">
                            <label class="form-label">Assigned Branch</label>
                            <select class="form-control-caffiora">
                                <option selected="selected">West End, Rajkot</option>
                                <option>Downtown (Main), Rajkot</option>
                            </select>
                        </div>
                    </div>

                    <!-- Row 3 -->
                    <div class="two-col-inputs">
                        <div class="form-group">
                            <label class="form-label">Email Address</label>
                            <input type="email" class="form-control-caffiora" value="arjun.m@gmail.com" />
                        </div>
                        <div class="form-group">
                            <label class="form-label">Phone Number</label>
                            <input type="tel" class="form-control-caffiora" value="+91 98221 00445" />
                        </div>
                    </div>

                    <!-- Actions Bottom -->
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 24px; padding-top: 20px; border-top: 1px solid var(--border-light);">
                        <a href="ForgotPassword.aspx" style="font-size: 13px; color: var(--text-muted); font-weight: 600;">
                            <i class="fas fa-lock"></i> Change Password
                        </a>
                        <div style="display: flex; gap: 12px;">
                            <a href="StaffDashboard.aspx" class="btn-outline-caffiora" style="padding: 10px 20px;">Cancel</a>
                            <button type="button" class="btn-primary-caffiora" style="padding: 10px 24px;" onclick="showToast('Staff profile changes saved!');">
                                Save Changes
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="js/site.js"></script>
</body>
</html>
