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

                    <!-- Validation Summary -->
                   

                    <!-- Full Name -->
                    <div class="form-group">
                        <label class="form-label">Full Name</label>
                        <asp:TextBox ID="txtRegFullName" runat="server" CssClass="form-control-caffiora" placeholder="Enter your full name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvRegFullName" runat="server" ControlToValidate="txtRegFullName"
                            ValidationGroup="RegisterGroup" ErrorMessage="Full name is required." Display="Dynamic"
                            CssClass="val-msg" SetFocusOnError="true">
                            <i class="fas fa-exclamation-circle"></i> Full name is required.
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revRegFullName" runat="server" ControlToValidate="txtRegFullName"
                            ValidationGroup="RegisterGroup" ValidationExpression="^[a-zA-Z\s\.'-]{2,50}$"
                            ErrorMessage="Full name can only contain letters and spaces (2-50 characters)." Display="Dynamic"
                            CssClass="val-msg" SetFocusOnError="true">
                            <i class="fas fa-exclamation-circle"></i> Letters and spaces only (2-50 characters).
                        </asp:RegularExpressionValidator>
                    </div>

                    <!-- Email Address -->
                    <div class="form-group">
                        <label class="form-label">Email Address</label>
                        <asp:TextBox ID="txtRegEmail" runat="server" CssClass="form-control-caffiora" placeholder="Enter Email Address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvRegEmail" runat="server" ControlToValidate="txtRegEmail"
                            ValidationGroup="RegisterGroup" ErrorMessage="Email address is required." Display="Dynamic"
                            CssClass="val-msg" SetFocusOnError="true">
                            <i class="fas fa-exclamation-circle"></i> Email address is required.
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revRegEmail" runat="server" ControlToValidate="txtRegEmail"
                            ValidationGroup="RegisterGroup" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                            ErrorMessage="Please enter a valid email address (e.g. name@example.com)." Display="Dynamic"
                            CssClass="val-msg" SetFocusOnError="true">
                            <i class="fas fa-exclamation-circle"></i> Please enter a valid email address.
                        </asp:RegularExpressionValidator>
                    </div>

                    <!-- Password -->
                    <div class="form-group">
                        <label class="form-label">Password</label>
                        <asp:TextBox ID="txtRegPassword" runat="server" CssClass="form-control-caffiora" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvRegPassword" runat="server" ControlToValidate="txtRegPassword"
                            ValidationGroup="RegisterGroup" ErrorMessage="Password is required." Display="Dynamic"
                            CssClass="val-msg" SetFocusOnError="true">
                            <i class="fas fa-exclamation-circle"></i> Password is required.
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revRegPassword" runat="server" ControlToValidate="txtRegPassword"
                            ValidationGroup="RegisterGroup" ValidationExpression="^.{6,50}$"
                            ErrorMessage="Password must be at least 6 characters long." Display="Dynamic"
                            CssClass="val-msg" SetFocusOnError="true">
                            <i class="fas fa-exclamation-circle"></i> Password must be at least 6 characters.
                        </asp:RegularExpressionValidator>
                    </div>

                    <!-- Confirm Password -->
                    <div class="form-group">
                        <label class="form-label">Confirm Password</label>
                        <asp:TextBox ID="txtRegConfirmPassword" runat="server" CssClass="form-control-caffiora" TextMode="Password" placeholder="Enter confirm Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvRegConfirmPassword" runat="server" ControlToValidate="txtRegConfirmPassword"
                            ValidationGroup="RegisterGroup" ErrorMessage="Please confirm your password." Display="Dynamic"
                            CssClass="val-msg" SetFocusOnError="true">
                            <i class="fas fa-exclamation-circle"></i> Confirm password is required.
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvRegConfirmPassword" runat="server" ControlToValidate="txtRegConfirmPassword"
                            ControlToCompare="txtRegPassword" Operator="Equal" Type="String"
                            ValidationGroup="RegisterGroup" ErrorMessage="Passwords do not match." Display="Dynamic"
                            CssClass="val-msg" SetFocusOnError="true">
                            <i class="fas fa-exclamation-circle"></i> Passwords do not match.
                        </asp:CompareValidator>
                    </div>

                    <!-- Agree Checkbox -->
                    <div class="auth-remember-row" style="margin-bottom: 20px;">
                        <div>
                            <label class="checkbox-custom" style="font-size: 12px;">
                                <asp:CheckBox ID="chkAgree" runat="server" Checked="true" />
                                <span>I agree to the Terms of Service and Privacy Policy.</span>
                            </label>
                            <asp:CustomValidator ID="cvAgree" runat="server" ClientValidationFunction="validateTermsAgree"
                                OnServerValidate="cvAgree_ServerValidate" ValidationGroup="RegisterGroup"
                                ErrorMessage="You must agree to the Terms of Service and Privacy Policy." Display="Dynamic"
                                CssClass="val-msg">
                                <i class="fas fa-exclamation-circle"></i> You must agree to the Terms of Service.
                            </asp:CustomValidator>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <asp:Button ID="btnCreateAccount" runat="server" Text="CREATE ACCOUNT" CssClass="btn-primary-caffiora" 
                        Style="width: 100%; padding: 13px; font-size: 13px; font-weight: 700; letter-spacing: 1px;" 
                        OnClick="btnCreateAccount_Click" ValidationGroup="RegisterGroup" />

                    <!-- Footer Link -->
                    <div class="auth-footer-text">
                        Already have an account? <a href="Login.aspx" class="auth-footer-link">Sign In</a>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script type="text/javascript">
        function validateTermsAgree(sender, args) {
            var chk = document.getElementById('<%= chkAgree.ClientID %>');
            args.IsValid = chk ? chk.checked : false;
        }
    </script>
</body>
</html>
