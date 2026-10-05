<%@ Page Title="Your Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="CAFFIORA.Cart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-wrapper">
        <div style="margin-bottom: 30px;">
            <h1 style="font-size: 32px; font-family: var(--font-serif); margin-bottom: 6px;">Your Cart</h1>
            <p style="font-size: 14px; color: var(--text-muted);">
                Review your artisanal selections before checkout.
            </p>
        </div>

        <div class="cart-layout">
            <!-- Left: Cart Items -->
            <div>
                <div class="cart-table-head">
                    <span>PRODUCT</span>
                    <span>TOTAL</span>
                </div>

                <!-- Item 1: Italian Roast -->
                <div class="cart-item-card" data-unit-price="450.00">
                    <div class="cart-item-left">
                        <img src="images/coffee-italian-roast.jpg" alt="Italian Roast" class="cart-item-thumb" />
                        <div>
                            <h3 class="cart-item-title">Italian Roast</h3>
                            <div class="cart-item-sub">Rich, dark chocolate notes.</div>
                            <div class="cart-item-unit-price">&#8377; 450.00</div>
                        </div>
                    </div>

                    <div class="cart-item-right">
                        <div class="cart-item-total">&#8377; 900.00</div>
                        <div class="quantity-control">
                            <button type="button" class="qty-btn" onclick="updateQty(this, -1);">&minus;</button>
                            <span class="qty-number">2</span>
                            <button type="button" class="qty-btn" onclick="updateQty(this, 1);">&#43;</button>
                        </div>
                    </div>
                </div>

                <!-- Item 2: Vanilla Croissant -->
                <div class="cart-item-card" data-unit-price="280.00">
                    <div class="cart-item-left">
                        <img src="images/croissant.jpg" alt="Vanilla Croissant" class="cart-item-thumb" />
                        <div>
                            <h3 class="cart-item-title">Vanilla Croissant</h3>
                            <div class="cart-item-sub">Flaky, Madagascar vanilla bean filling.</div>
                            <div class="cart-item-unit-price">&#8377; 280.00</div>
                        </div>
                    </div>

                    <div class="cart-item-right">
                        <div class="cart-item-total">&#8377; 280.00</div>
                        <div class="quantity-control">
                            <button type="button" class="qty-btn" onclick="updateQty(this, -1);">&minus;</button>
                            <span class="qty-number">1</span>
                            <button type="button" class="qty-btn" onclick="updateQty(this, 1);">&#43;</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right: Order Summary Card -->
            <div>
                <div class="order-summary-card">
                    <h2 class="summary-title">Order Summary</h2>

                    <div class="summary-row">
                        <span>Subtotal</span>
                        <span id="cartSubtotal">&#8377; 1,180.00</span>
                    </div>

                    <div class="summary-row">
                        <span>Estimated Taxes</span>
                        <span id="cartTax">&#8377; 59.00</span>
                    </div>

                    <div class="summary-divider"></div>

                    <div class="summary-total-row">
                        <span class="summary-total-label">Total</span>
                        <span class="summary-total-val" id="cartTotal">&#8377; 1,239.00</span>
                    </div>

                    <a href="Checkout.aspx" class="btn-primary-caffiora" style="width: 100%; padding: 14px; font-size: 14px;">
                        Proceed to Checkout &rarr;
                    </a>

                    <div class="secure-badge">
                        <i class="fas fa-lock"></i> Secure Checkout
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
