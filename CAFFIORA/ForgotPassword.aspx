<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="CAFFIORA.ForgotPassword" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Forgot Password - CAFFIORA</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- CSS -->
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="forgotForm" runat="server">
        <div class="auth-split-container">
            <div class="auth-image-side" style="background-image: url('images/cafe-interior.jpg');"></div>

            <div class="auth-content-side">
                <div class="auth-card">
                    <a href="Default.aspx" class="auth-brand">CAFFIORA</a>
                    <h2 class="auth-title">Reset Password</h2>
                    <p class="auth-subtitle">Enter your email address and we'll send you instructions to reset your password.</p>

                    <asp:Panel ID="pnlSuccess" runat="server" Visible="false" CssClass="delivery-box" Style="margin-bottom: 20px; background-color: #E2F3E7; color: #227845;">
                        <i class="fas fa-check-circle"></i> Instructions sent! Please check your inbox.
                    </asp:Panel>

                    <div class="form-group">
                        <label class="form-label">Email Address</label>
                        <asp:TextBox ID="txtResetEmail" runat="server" CssClass="form-control-caffiora" placeholder="enter your email address" TextMode="Email" required="required"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnReset" runat="server" Text="SEND RESET LINK" CssClass="btn-primary-caffiora" Style="width: 100%; padding: 13px; font-size: 13px; font-weight: 700; letter-spacing: 1px;" OnClick="btnReset_Click" />

                    <div class="auth-footer-text">
                        Remembered your password? <a href="Login.aspx" class="auth-footer-link">Sign In</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
