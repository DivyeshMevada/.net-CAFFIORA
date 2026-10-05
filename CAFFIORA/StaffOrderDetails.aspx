<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffOrderDetails.aspx.cs" Inherits="CAFFIORA.StaffOrderDetails" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Order #CF-88291 - CAFFIORA Staff</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="staffOrderDetailForm" runat="server">
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
            <div style="margin-bottom: 16px;">
                <a href="StaffOrders.aspx" style="font-size: 13px; color: var(--text-muted); font-weight: 600;">
                    &larr; Back to Orders
                </a>
            </div>

            <div style="display: grid; grid-template-columns: 240px 1fr; gap: 28px;">
                <!-- Left Sidebar: Actions & Notes (Matches Page 14) -->
                <div>
                    <div class="quick-actions-card" style="margin-bottom: 20px;">
                        <div style="font-size: 11px; font-weight: 700; text-transform: uppercase; letter-spacing: 1px; color: var(--text-muted); margin-bottom: 4px;">
                            Quick Actions
                        </div>
                        <button type="button" class="btn-primary-caffiora" style="width: 100%; padding: 10px; font-size: 13px;" onclick="showToast('Order marked as Dispatched!');">
                            Mark as Dispatched
                        </button>
                        <button type="button" class="btn-outline-caffiora" style="width: 100%; padding: 10px; font-size: 13px;" onclick="window.print();">
                            Print Receipt
                        </button>
                        <button type="button" class="btn-outline-caffiora" style="width: 100%; padding: 10px; font-size: 13px;" onclick="showToast('Connecting to customer Karan Shah...');">
                            Contact Customer
                        </button>
                    </div>

                    <div class="quick-actions-card" style="margin-bottom: 20px;">
                        <div style="display: flex; align-items: center; gap: 8px; font-size: 12px; color: var(--text-muted);">
                            <i class="far fa-clock"></i> Shift Status
                        </div>
                        <div style="display: flex; align-items: center; gap: 6px; font-size: 13px; font-weight: 700; color: #237A47;">
                            <span style="width: 8px; height: 8px; border-radius: 50%; background-color: #237A47;"></span> Active
                        </div>
                    </div>

                    <div class="table-card">
                        <div style="font-size: 12px; font-weight: 700; margin-bottom: 8px;">Internal Notes</div>
                        <textarea class="form-control-caffiora" rows="4" placeholder="Add notes for staff here..."></textarea>
                    </div>
                </div>

                <!-- Right Main Order Details Area -->
                <div>
                    <!-- Order Header -->
                    <div style="margin-bottom: 24px;">
                        <div style="display: flex; align-items: center; gap: 14px; margin-bottom: 4px;">
                            <h1 style="font-size: 28px; font-family: var(--font-serif); margin: 0;">Order #CF-88291</h1>
                            <span class="badge-status badge-preparing" style="font-size: 12px;">PREPARING</span>
                        </div>
                        <p style="font-size: 13px; color: var(--text-muted);">
                            Placed at 10:24 AM today &bull; Customer: Karan Shah
                        </p>
                    </div>

                    <!-- Order Items (Page 14) -->
                    <div class="table-card" style="margin-bottom: 24px;">
                        <div style="font-size: 14px; font-weight: 700; margin-bottom: 16px;">Order Items</div>

                        <!-- Item 1 -->
                        <div style="display: flex; align-items: center; justify-content: space-between; padding: 14px 0; border-bottom: 1px solid var(--border-light);">
                            <div style="display: flex; align-items: center; gap: 16px;">
                                <img src="images/coffee-italian-roast.jpg" alt="Italian Roast" style="width: 64px; height: 64px; border-radius: 6px; object-fit: cover;" />
                                <div>
                                    <div style="font-size: 15px; font-weight: 600;">Italian Roast x2</div>
                                    <div style="font-size: 12px; color: var(--text-muted); margin-top: 2px;">Size: Large &bull; Sugar: Extra</div>
                                </div>
                            </div>
                            <span style="font-size: 17px; font-weight: 700;">&#8377;900</span>
                        </div>

                        <!-- Item 2 -->
                        <div style="display: flex; align-items: center; justify-content: space-between; padding: 14px 0;">
                            <div style="display: flex; align-items: center; gap: 16px;">
                                <img src="images/croissant.jpg" alt="Vanilla Croissant" style="width: 64px; height: 64px; border-radius: 6px; object-fit: cover;" />
                                <div>
                                    <div style="font-size: 15px; font-weight: 600;">Madagascar Vanilla Croissant x1</div>
                                    <div style="font-size: 12px; color: var(--text-muted); margin-top: 2px;">Freshly baked</div>
                                </div>
                            </div>
                            <span style="font-size: 17px; font-weight: 700;">&#8377;280</span>
                        </div>
                    </div>

                    <!-- Summary & Delivery Details Grid -->
                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px;">
                        <div class="table-card">
                            <div style="font-size: 14px; font-weight: 700; margin-bottom: 14px;">Order Summary</div>
                            <div class="summary-row">
                                <span>Subtotal</span>
                                <span>&#8377;1,180</span>
                            </div>
                            <div class="summary-row">
                                <span>Shipping</span>
                                <span>&#8377;60</span>
                            </div>
                            <div class="summary-divider" style="margin: 12px 0;"></div>
                            <div class="summary-total-row" style="margin-bottom: 0;">
                                <span class="summary-total-label">Total Bill</span>
                                <span class="summary-total-val" style="font-size: 20px;">&#8377;1,240</span>
                            </div>
                        </div>

                        <div class="table-card">
                            <div style="font-size: 14px; font-weight: 700; margin-bottom: 14px;">Delivery Details</div>
                            <div style="display: flex; gap: 10px; font-size: 13px; color: var(--text-main); line-height: 1.5;">
                                <i class="fas fa-map-marker-alt" style="color: var(--color-primary); margin-top: 3px;"></i>
                                <div>
                                    Block A, A804 Oscar Sky Park,<br />
                                    Ayodhya Chowk, 150 Feet Ring Road,<br />
                                    Rajkot - 360005
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="js/site.js"></script>
</body>
</html>
