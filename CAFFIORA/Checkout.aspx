<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="CAFFIORA.Checkout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-wrapper">
        <h1 style="font-size: 32px; font-family: var(--font-serif); margin-bottom: 24px;">Checkout</h1>

        <div class="cart-layout">
            <!-- Left: Shipping & Payment -->
            <div>
                <!-- Shipping Information -->
                <div class="checkout-form-box">
                    <h3 class="box-header-title">
                        <i class="fas fa-truck"></i> Shipping Information
                    </h3>

                    <div class="form-group">
                        <label class="form-label">FULL NAME</label>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control-caffiora" Text="Divyesh Mevada" placeholder="Enter your full name" required="required"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label class="form-label">ADDRESS LINE</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control-caffiora" Text="BLOCK A, FLAT NO 804, Oscar Sky Park, Ayodhya Chowk, 150 Feet Ring Road" placeholder="Street address, apartment, suite, etc." required="required"></asp:TextBox>
                    </div>

                    <div class="two-col-inputs">
                        <div class="form-group">
                            <label class="form-label">CITY</label>
                            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control-caffiora" Text="Rajkot" placeholder="City" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="form-label">PIN CODE</label>
                            <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control-caffiora" Text="360005" placeholder="Postal code" required="required"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group" style="margin-bottom: 0;">
                        <label class="form-label">PHONE NUMBER</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control-caffiora" Text="+91 8320226902" placeholder="For delivery updates" required="required"></asp:TextBox>
                    </div>
                </div>

                <!-- Payment Method -->
                <div class="checkout-form-box">
                    <h3 class="box-header-title">
                        <i class="fas fa-wallet"></i> Payment Method
                    </h3>
                    <div class="payment-method-pill">
                        CASH ON DELIVERY
                    </div>
                </div>
            </div>

            <!-- Right: Order Summary -->
            <div>
                <div class="order-summary-card">
                    <div class="summary-title">
                        <span>Order Summary</span>
                        <span style="font-size: 13px; color: var(--text-muted); font-family: var(--font-sans); font-weight: normal;">2 Items</span>
                    </div>

                    <div style="display: flex; flex-direction: column; gap: 14px; margin-bottom: 20px;">
                        <div style="display: flex; align-items: center; justify-content: space-between;">
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <img src="images/coffee-italian-roast.jpg" alt="Italian Roast" style="width: 44px; height: 44px; border-radius: 4px; object-fit: cover;" />
                                <div>
                                    <div style="font-size: 14px; font-weight: 600;">Italian Roast</div>
                                    <div style="font-size: 12px; color: var(--text-muted);">Qty: 2</div>
                                </div>
                            </div>
                            <span style="font-weight: 700;">&#8377;900</span>
                        </div>

                        <div style="display: flex; align-items: center; justify-content: space-between;">
                            <div style="display: flex; align-items: center; gap: 12px;">
                                <img src="images/croissant.jpg" alt="Vanilla Croissant" style="width: 44px; height: 44px; border-radius: 4px; object-fit: cover;" />
                                <div>
                                    <div style="font-size: 14px; font-weight: 600;">Vanilla Croissant</div>
                                    <div style="font-size: 12px; color: var(--text-muted);">Qty: 1</div>
                                </div>
                            </div>
                            <span style="font-weight: 700;">&#8377;280</span>
                        </div>
                    </div>

                    <div class="summary-row">
                        <span>Subtotal</span>
                        <span>&#8377;1,180.00</span>
                    </div>

                    <div class="summary-row">
                        <span>Shipping</span>
                        <span>&#8377;60.00</span>
                    </div>

                    <div class="summary-row">
                        <span>Estimated Taxes</span>
                        <span>&#8377;59.00</span>
                    </div>

                    <div class="summary-divider"></div>

                    <div class="summary-total-row">
                        <span class="summary-total-label">Total</span>
                        <span class="summary-total-val">&#8377;1,299.00</span>
                    </div>

                    <asp:Button ID="btnPlaceOrder" runat="server" Text="PLACE ORDER &rarr;" CssClass="btn-primary-caffiora" Style="width: 100%; padding: 14px; font-size: 14px;" OnClick="btnPlaceOrder_Click" />

                    <p style="font-size: 11px; color: var(--text-light); text-align: center; margin-top: 14px;">
                        By placing this order, you agree to our Terms of Service.
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
