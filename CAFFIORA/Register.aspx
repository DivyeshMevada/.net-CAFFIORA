<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CAFFIORA.Register" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Create an Account - CAFFIORA</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- CSS -->
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="registerForm" runat="server">
        <div class="auth-split-container">
            <!-- Left Side: Cafe Interior Photo (Matches PDF Page 2) -->
            <div class="auth-image-side" style="background-image: url('images/cafe-interior.jpg');"></div>

            <!-- Right Side: Centered Registration Card -->
            <div class="auth-content-side">
                <div class="auth-card">
                    <a href="Default.aspx" class="auth-brand">CAFFIORA</a>
                    <h2 class="auth-title">Create an Account</h2>
                    <p class="auth-subtitle">Join the CAFFIORA community for a curated coffee experience.</p>

                    <!-- Full Name -->
                    <div class="form-group">
                        <label class="form-label">Full Name</label>
                        <asp:TextBox ID="txtRegFullName" runat="server" CssClass="form-control-caffiora" placeholder="Enter your full name" required="required"></asp:TextBox>
                    </div>

                    <!-- Email Address -->
                    <div class="form-group">
                        <label class="form-label">Email Address</label>
                        <asp:TextBox ID="txtRegEmail" runat="server" CssClass="form-control-caffiora" placeholder="Enter Email Address" TextMode="Email" required="required"></asp:TextBox>
                    </div>

                    <!-- Password -->
                    <div class="form-group">
                        <label class="form-label">Password</label>
                        <asp:TextBox ID="txtRegPassword" runat="server" CssClass="form-control-caffiora" TextMode="Password" placeholder="Enter Password" required="required"></asp:TextBox>
                    </div>

                    <!-- Confirm Password -->
                    <div class="form-group">
                        <label class="form-label">Confirm Password</label>
                        <asp:TextBox ID="txtRegConfirmPassword" runat="server" CssClass="form-control-caffiora" TextMode="Password" placeholder="Enter confirm Password" required="required"></asp:TextBox>
                    </div>

                    <!-- Agree Checkbox -->
                    <div class="auth-remember-row" style="margin-bottom: 20px;">
                        <label class="checkbox-custom" style="font-size: 12px;">
                            <asp:CheckBox ID="chkAgree" runat="server" Checked="true" />
                            <span>I agree to the Terms of Service and Privacy Policy.</span>
                        </label>
                    </div>

                    <!-- Submit Button -->
                    <asp:Button ID="btnCreateAccount" runat="server" Text="CREATE ACCOUNT" CssClass="btn-primary-caffiora" Style="width: 100%; padding: 13px; font-size: 13px; font-weight: 700; letter-spacing: 1px;" OnClick="btnCreateAccount_Click" />

                    <!-- Footer Link -->
                    <div class="auth-footer-text">
                        Already have an account? <a href="Login.aspx" class="auth-footer-link">Sign In</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
