<%@ Page Title="Italian Roast" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="CAFFIORA.ProductDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-wrapper">
        <div style="margin-bottom: 20px;">
            <a href="Menu.aspx" style="font-size: 13px; color: var(--text-muted); font-weight: 600;">
                <i class="fas fa-arrow-left"></i> Back to Menu
            </a>
        </div>

        <div class="product-details-container">
            <!-- Left: Coffee Image (Matches Page 6) -->
            <div class="details-image-side">
                <img src="<%= ProductImage %>" alt="<%= ProductName %>" />
            </div>

            <!-- Right: Coffee Options & Details -->
            <div class="details-info-side">
                <h1 class="details-title"><%= ProductName %></h1>

                <div class="details-price-row">
                    <span class="details-price">&#8377;<%= ProductPrice %></span>
                    <span class="details-reviews">
                        <i class="fas fa-star" style="color: var(--accent-gold);"></i> 4.9 
                        <span style="text-decoration: underline; margin-left: 2px;">(128 Reviews)</span>
                    </span>
                </div>

                <p class="details-desc">
                    <%= ProductDesc %>
                </p>

                <!-- CUP SIZE -->
                <div class="option-group-label">CUP SIZE</div>
                <div class="options-pill-row">
                    <button type="button" class="option-pill-btn active">Small</button>
                    <button type="button" class="option-pill-btn">Medium</button>
                    <button type="button" class="option-pill-btn">Large</button>
                </div>

                <!-- SUGAR LEVEL -->
                <div class="option-group-label">SUGAR LEVEL</div>
                <div class="options-pill-row">
                    <button type="button" class="option-pill-btn">No Sugar</button>
                    <button type="button" class="option-pill-btn">Less</button>
                    <button type="button" class="option-pill-btn active">Regular</button>
                    <button type="button" class="option-pill-btn">Extra</button>
                </div>

                <!-- QUANTITY -->
                <div class="option-group-label">Quantity</div>
                <div class="qty-row-wrap">
                    <div class="quantity-control">
                        <button type="button" class="qty-btn" onclick="updateQty(this, -1);">&minus;</button>
                        <span class="qty-number">1</span>
                        <button type="button" class="qty-btn" onclick="updateQty(this, 1);">&#43;</button>
                    </div>

                    <button type="button" class="btn-primary-caffiora btn-add-to-cart" data-product-name="<%= ProductName %>" style="flex: 1; padding: 13px 20px;">
                        <i class="fas fa-shopping-bag"></i> ADD TO CART - &#8377;<%= ProductPrice %>
                    </button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
