<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CAFFIORA.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-wrapper">
        <div style="margin-bottom: 30px; text-align: center;">
            <span style="font-size: 11px; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; color: var(--text-muted); display: block; margin-bottom: 6px;">GET IN TOUCH</span>
            <h1 style="font-size: 36px; font-family: var(--font-serif);">Contact CAFFIORA</h1>
            <p style="font-size: 14px; color: var(--text-muted); max-width: 540px; margin: 10px auto 0 auto;">
                Have questions about our artisanal roasts, catering inquiries, or feedback? We’d love to hear from you.
            </p>
        </div>

        <div style="display: grid; grid-template-columns: 1.1fr 0.9fr; gap: 32px;">
            <!-- Contact Form -->
            <div class="checkout-form-box" style="padding: 36px;">
                <h3 class="box-header-title">Send Us a Message</h3>

                <asp:Panel ID="pnlContactSuccess" runat="server" Visible="false" CssClass="delivery-box" Style="margin-bottom: 20px; background-color: #E2F3E7; color: #227845;">
                    <i class="fas fa-check-circle"></i> Thank you! Your message has been received. Our team will get back to you shortly.
                </asp:Panel>

                <div class="form-group">
                    <label class="form-label">Your Name</label>
                    <asp:TextBox ID="txtContactName" runat="server" CssClass="form-control-caffiora" placeholder="Enter your full name" required="required"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="form-label">Email Address</label>
                    <asp:TextBox ID="txtContactEmail" runat="server" CssClass="form-control-caffiora" placeholder="Enter your email address" TextMode="Email" required="required"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="form-label">Subject</label>
                    <asp:TextBox ID="txtContactSubject" runat="server" CssClass="form-control-caffiora" placeholder="Inquiry about..." required="required"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="form-label">Message</label>
                    <asp:TextBox ID="txtContactMessage" runat="server" CssClass="form-control-caffiora" TextMode="MultiLine" Rows="5" placeholder="How can we assist you?" required="required"></asp:TextBox>
                </div>

                <asp:Button ID="btnSendContact" runat="server" Text="SEND MESSAGE" CssClass="btn-primary-caffiora" Style="width: 100%; padding: 13px;" OnClick="btnSendContact_Click" />
            </div>

            <!-- Contact Information & Store Location -->
            <div style="display: flex; flex-direction: column; gap: 20px;">
                <div class="checkout-form-box" style="padding: 30px;">
                    <h3 class="box-header-title"><i class="fas fa-map-marker-alt"></i> Flagship Café</h3>
                    <p style="font-size: 14px; color: var(--text-main); line-height: 1.6; margin-bottom: 16px;">
                        BLOCK A, FLAT NO 804, Oscar Sky Park,<br />
                        Ayodhya Chowk, 150 Feet Ring Road,<br />
                        Rajkot - 360005, Gujarat
                    </p>

                    <h3 class="box-header-title" style="margin-top: 24px;"><i class="fas fa-phone"></i> Phone &amp; Email</h3>
                    <p style="font-size: 14px; color: var(--text-main); line-height: 1.6; margin-bottom: 6px;">
                        <strong>Phone:</strong> +91 8320226902
                    </p>
                    <p style="font-size: 14px; color: var(--text-main); line-height: 1.6;">
                        <strong>Email:</strong> mevadadivyesh030@gmail.com
                    </p>

                    <h3 class="box-header-title" style="margin-top: 24px;"><i class="far fa-clock"></i> Hours of Service</h3>
                    <p style="font-size: 13px; color: var(--text-muted); line-height: 1.6;">
                        Monday &ndash; Sunday: 7:00 AM &ndash; 10:00 PM<br />
                        Fresh Pastry Batch: 7:30 AM &amp; 3:00 PM daily
                    </p>
                </div>

                <div class="cta-espresso-box" style="padding: 30px; text-align: left; align-items: flex-start;">
                    <h3 style="font-size: 22px; font-family: var(--font-serif); margin-bottom: 8px; color: #FFFFFF;">
                        Experience CAFFIORA In Person
                    </h3>
                    <p style="font-size: 13px; color: rgba(255,255,255,0.85); margin-bottom: 16px;">
                        Drop in for a freshly roasted pour-over and let our master baristas craft your moment.
                    </p>
                    <a href="Menu.aspx" class="btn-white-caffiora">View Drinks Menu</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
