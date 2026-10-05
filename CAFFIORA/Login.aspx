<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CAFFIORA.Login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Customer Sign In - CAFFIORA</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    
    <!-- CSS -->
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="loginForm" runat="server">
        <div class="auth-split-container">
            <!-- Left Side: Cafe Interior Photo (Matches PDF Page 1) -->
            <div class="auth-image-side" id="loginHeroSide" style="background-image: url('<%= LeftImage %>');"></div>

            <!-- Right Side: Centered Sign In Card -->
            <div class="auth-content-side">
                <div class="auth-card">
                    <a href="Default.aspx" class="auth-brand">CAFFIORA</a>
                    <h2 class="auth-title" id="loginTitle"><%= LoginHeading %></h2>
                    <p class="auth-subtitle" id="loginSubtitle"><%= LoginSubheading %></p>

                    <!-- Role Switcher: Customer | Staff | Admin -->
                    <div class="role-tabs-wrap">
                        <div class="role-tabs-label">Continue as</div>
                        <div class="role-tabs-bar">
                            <button type="button" class="role-tab-btn <%= CurrentRole == "customer" ? "active" : "" %>" data-role="customer">Customer</button>
                            <button type="button" class="role-tab-btn <%= CurrentRole == "staff" ? "active" : "" %>" data-role="staff">Staff</button>
                            <button type="button" class="role-tab-btn <%= CurrentRole == "admin" ? "active" : "" %>" data-role="admin">Admin</button>
                        </div>
                    </div>
                    
                    <asp:HiddenField ID="roleInput" runat="server" Value="customer" />

                    <!-- Email Address -->
                    <div class="form-group">
                        <label class="form-label">Email Address</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control-caffiora" placeholder="enter email address" Text="mevadadivyesh030@gmail.com" required="required"></asp:TextBox>
                    </div>

                    <!-- Password with Eye Toggle -->
                    <div class="form-group">
                        <label class="form-label">Password</label>
                        <div class="password-input-wrap">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control-caffiora" TextMode="Password" placeholder="enter password" Text="caffiora2026" required="required"></asp:TextBox>
                            <button type="button" class="password-toggle-btn" title="Toggle password">
                                <i class="far fa-eye"></i>
                            </button>
                        </div>
                    </div>

                    <!-- Remember Me & Forgot Password -->
                    <div class="auth-remember-row">
                        <label class="checkbox-custom">
                            <asp:CheckBox ID="chkRememberMe" runat="server" />
                            <span>Remember Me</span>
                        </label>
                        <a href="ForgotPassword.aspx" style="color: var(--text-muted); font-size: 13px;">Forgot Password?</a>
                    </div>

                    <!-- Submit Button -->
                    <asp:Button ID="btnSignIn" runat="server" Text="SIGN IN" CssClass="btn-primary-caffiora" Style="width: 100%; padding: 13px; font-size: 13px; font-weight: 700; letter-spacing: 1px;" OnClick="btnSignIn_Click" />

                    <!-- Footer Area -->
                    <div class="auth-footer-text" id="loginFooterArea">
                        <% if (CurrentRole == "staff") { %>
                            <span style="font-size: 12px; color: #7E736B;">Staff access is provided by CAFFIORA.</span>
                        <% } else if (CurrentRole == "admin") { %>
                            <span style="font-size: 12px; color: #7E736B;">Authorized administrators only.</span>
                        <% } else { %>
                            New to CAFFIORA? <a href="Register.aspx" class="auth-footer-link">CREATE NEW ACCOUNT</a>
                        <% } %>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="js/site.js"></script>
</body>
</html>
