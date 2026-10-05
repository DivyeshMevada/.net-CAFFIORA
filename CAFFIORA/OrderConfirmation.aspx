<%@ Page Title="Order Confirmation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderConfirmation.aspx.cs" Inherits="CAFFIORA.OrderConfirmation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-wrapper">
        <div class="confirmation-header">
            <div class="success-check-badge">
                <i class="fas fa-check"></i>
            </div>
            <h1 class="confirmation-title">Thank you for your order, Divyesh!</h1>
            <div class="confirmation-order-id">Order #CF-88291</div>
        </div>

        <div class="confirmation-card">
            <h2 style="font-size: 20px; font-family: var(--font-serif); margin-bottom: 20px;">Order Summary</h2>

            <div style="display: flex; flex-direction: column; gap: 16px; margin-bottom: 20px;">
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div>
                        <div style="font-size: 14px; font-weight: 600;">Italian Roast</div>
                        <div style="font-size: 12px; color: var(--text-muted);">Qty: 2</div>
                    </div>
                    <span style="font-weight: 700;">&#8377;900</span>
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <div>
                        <div style="font-size: 14px; font-weight: 600;">Madagascar Vanilla Croissant</div>
                        <div style="font-size: 12px; color: var(--text-muted);">Qty: 1</div>
                    </div>
                    <span style="font-weight: 700;">&#8377;280</span>
                </div>
            </div>

            <div class="summary-divider"></div>

            <div class="summary-row">
                <span>Subtotal</span>
                <span>&#8377;1,180.00</span>
            </div>

            <div class="summary-row">
                <span>Shipping</span>
                <span>&#8377;60.00</span>
            </div>

            <div class="summary-row">
                <span>Taxes (5%)</span>
                <span>&#8377;59.00</span>
            </div>

            <div class="summary-divider"></div>

            <div class="summary-total-row">
                <span class="summary-total-label">Total</span>
                <span class="summary-total-val">&#8377;1,299.00</span>
            </div>

            <!-- Delivery Address -->
            <div class="delivery-box">
                <div style="font-size: 12px; font-weight: 700; text-transform: uppercase; color: var(--text-muted); margin-bottom: 8px; display: flex; align-items: center; gap: 8px;">
                    <i class="fas fa-truck"></i> Delivery Address
                </div>
                <div style="font-size: 13px; color: var(--text-main); line-height: 1.5; margin-bottom: 10px;">
                    BLOCK A, FLAT NO 804, Oscar Sky Park, Ayodhya Chowk,<br />
                    150 Feet Ring Road, Rajkot - 360005
                </div>
                <div style="display: inline-flex; align-items: center; gap: 6px; background-color: #FFFFFF; border-radius: 4px; padding: 4px 10px; font-size: 12px; color: var(--text-muted); border: 1px solid var(--border-color);">
                    <i class="far fa-clock"></i> Estimated delivery: 30-45 minutes
                </div>
            </div>

            <div style="text-align: center; margin-top: 30px;">
                <a href="Menu.aspx" class="btn-outline-caffiora">Continue Shopping</a>
            </div>
        </div>
    </div>
</asp:Content>
