<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CAFFIORA.Profile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-wrapper">
        <div style="margin-bottom: 24px;">
            <span style="font-size: 11px; font-weight: 700; letter-spacing: 1.5px; text-transform: uppercase; color: var(--text-muted); display: block; margin-bottom: 4px;">MY ACCOUNT</span>
            <h1 style="font-size: 32px; font-family: var(--font-serif);">My Profile</h1>
        </div>

        <div class="profile-grid-layout">
            <!-- Left Sidebar Card -->
            <div class="profile-sidebar-card">
                <div class="profile-avatar-circle">
                    <i class="far fa-user"></i>
                </div>
                <h2 class="profile-name">Divyesh Mevada</h2>
                <div class="profile-email">mevadadivyesh030@gmail.com</div>

                <button type="button" class="btn-primary-caffiora" style="width: 100%; padding: 10px; font-size: 13px; margin-bottom: 20px;" onclick="showToast('Profile editing enabled');">
                    EDIT PROFILE
                </button>

                <div class="profile-info-block">
                    <div class="profile-info-label">FULL NAME</div>
                    <div class="profile-info-value">Divyesh Mevada</div>

                    <div class="profile-info-label">EMAIL</div>
                    <div class="profile-info-value">mevadadivyesh030@gmail.com</div>

                    <div class="profile-info-label">PHONE NUMBER</div>
                    <div class="profile-info-value">+91 8320226902</div>
                </div>

                <div style="margin-top: 20px; text-align: left;">
                    <a href="Login.aspx" style="font-size: 13px; font-weight: 600; color: #7E736B; display: inline-flex; align-items: center; gap: 8px;">
                        <i class="fas fa-sign-out-alt"></i> LOG OUT
                    </a>
                </div>
            </div>

            <!-- Right Main Profile Area -->
            <div class="profile-main-area">
                <!-- Top Row: Navigation list & Stats -->
                <div style="display: grid; grid-template-columns: 1.4fr 1fr; gap: 20px;">
                    <!-- Nav items -->
                    <div class="profile-nav-list">
                        <a href="Profile.aspx" class="profile-nav-item" style="font-weight: 600; color: var(--color-primary);">
                            <span>My Profile</span>
                            <i class="fas fa-chevron-right" style="font-size: 11px;"></i>
                        </a>
                        <a href="Cart.aspx" class="profile-nav-item">
                            <span>My Orders</span>
                            <i class="fas fa-chevron-right" style="font-size: 11px;"></i>
                        </a>
                        <a href="Checkout.aspx" class="profile-nav-item">
                            <span>Saved Addresses</span>
                            <i class="fas fa-chevron-right" style="font-size: 11px;"></i>
                        </a>
                        <a href="Menu.aspx" class="profile-nav-item">
                            <span>Favorites</span>
                            <i class="fas fa-chevron-right" style="font-size: 11px;"></i>
                        </a>
                        <a href="#" class="profile-nav-item" onclick="showToast('No new notifications'); return false;">
                            <span>Notifications</span>
                            <i class="fas fa-chevron-right" style="font-size: 11px;"></i>
                        </a>
                        <a href="#" class="profile-nav-item" onclick="showToast('Preferences updated'); return false;">
                            <span>Settings</span>
                            <i class="fas fa-chevron-right" style="font-size: 11px;"></i>
                        </a>
                    </div>

                    <!-- Stats -->
                    <div class="profile-stats-row" style="grid-template-columns: 1fr;">
                        <div style="display: flex; gap: 12px;">
                            <div class="profile-stat-box" style="flex: 1;">
                                <div class="profile-stat-number">12</div>
                                <div class="profile-stat-label">ORDERS</div>
                            </div>
                            <div class="profile-stat-box" style="flex: 1;">
                                <div class="profile-stat-number">6</div>
                                <div class="profile-stat-label">FAVORITES</div>
                            </div>
                            <div class="profile-stat-box" style="flex: 1;">
                                <div class="profile-stat-number">240</div>
                                <div class="profile-stat-label">PTS</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Daily Ritual Greeting Banner -->
                <div class="profile-banner">
                    <h2>Hello, Divyesh! Your daily ritual awaits.</h2>
                </div>

                <!-- Recommended For You -->
                <div>
                    <div style="font-size: 11px; font-weight: 700; letter-spacing: 1.5px; text-transform: uppercase; color: var(--text-muted); margin-bottom: 14px;">
                        RECOMMENDED FOR YOU
                    </div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 18px;">
                        <!-- Velvet Espresso -->
                        <div style="background-color: #FFFFFF; border-radius: var(--radius-sm); padding: 14px 18px; display: flex; align-items: center; justify-content: space-between; box-shadow: var(--shadow-soft);">
                            <div style="display: flex; align-items: center; gap: 14px;">
                                <img src="images/coffee-espresso.jpg" alt="Velvet Espresso" style="width: 50px; height: 50px; border-radius: 4px; object-fit: cover;" />
                                <div>
                                    <div style="font-size: 14px; font-weight: 600;"><a href="ProductDetails.aspx?id=1">Velvet Espresso</a></div>
                                    <div style="font-size: 13px; font-weight: 700;">&#8377;279</div>
                                </div>
                            </div>
                            <button type="button" class="btn-add-circle" data-product-name="Velvet Espresso" title="Add to Cart">
                                <i class="fas fa-shopping-bag" style="font-size: 12px;"></i>
                            </button>
                        </div>

                        <!-- Caramel Macchiato -->
                        <div style="background-color: #FFFFFF; border-radius: var(--radius-sm); padding: 14px 18px; display: flex; align-items: center; justify-content: space-between; box-shadow: var(--shadow-soft);">
                            <div style="display: flex; align-items: center; gap: 14px;">
                                <img src="images/coffee-macchiato.jpg" alt="Caramel Macchiato" style="width: 50px; height: 50px; border-radius: 4px; object-fit: cover;" />
                                <div>
                                    <div style="font-size: 14px; font-weight: 600;"><a href="ProductDetails.aspx?id=3">Caramel Macchiato</a></div>
                                    <div style="font-size: 13px; font-weight: 700;">&#8377;319</div>
                                </div>
                            </div>
                            <button type="button" class="btn-add-circle" data-product-name="Caramel Macchiato" title="Add to Cart">
                                <i class="fas fa-shopping-bag" style="font-size: 12px;"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
