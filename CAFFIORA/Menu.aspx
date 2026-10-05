<%@ Page Title="Our Menu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="CAFFIORA.Menu" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-wrapper">
        <!-- HEADER TITLE -->
        <div class="menu-header-center">
            <span class="menu-subtitle-badge">OUR MENU</span>
            <h1 class="menu-main-title">Made for Your Moment</h1>
        </div>

        <!-- CATEGORY FILTER PILLS -->
        <div class="menu-filter-bar">
            <button type="button" class="menu-filter-pill active" data-category="ALL">ALL</button>
            <button type="button" class="menu-filter-pill" data-category="ESPRESSO BAR">ESPRESSO BAR</button>
            <button type="button" class="menu-filter-pill" data-category="BAKERY">BAKERY</button>
            <button type="button" class="menu-filter-pill" data-category="COLD BREW">COLD BREW</button>
            <button type="button" class="menu-filter-pill" data-category="DESSERTS">DESSERTS</button>
        </div>

        <!-- PRODUCTS GRID -->
        <div class="products-grid">
            <!-- Card 1: Velvet Espresso (Featured Card) -->
            <div class="product-card product-card-featured" data-category="ESPRESSO BAR">
                <div class="product-image-wrap">
                    <img src="images/coffee-espresso.jpg" alt="Velvet Espresso" />
                </div>
                <div class="product-content">
                    <div>
                        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 4px;">
                            <h3 class="product-title" style="font-size: 20px; font-family: var(--font-serif);"><a href="ProductDetails.aspx?id=1">Velvet Espresso</a></h3>
                            <div class="product-rating"><i class="fas fa-star"></i> 4.9</div>
                        </div>
                        <div class="product-sub">Rich &middot; Smooth &middot; Premium</div>
                        <p style="font-size: 13px; color: var(--text-muted); line-height: 1.5; margin-bottom: 20px;">
                            Our signature double shot, extracted to perfection for a deep, lingering velvet finish.
                        </p>
                    </div>
                    <div style="display: flex; justify-content: space-between; align-items: center;">
                        <span class="product-price" style="font-size: 22px;">&#8377;279</span>
                        <button type="button" class="btn-primary-caffiora btn-add-to-cart" data-product-name="Velvet Espresso" style="padding: 9px 18px; font-size: 13px;">Add To Cart</button>
                    </div>
                </div>
            </div>

            <!-- Card 2: Italian Roast (Matches Page 5 and connects to Page 6) -->
            <div class="product-card" data-category="ESPRESSO BAR">
                <div class="product-image-wrap">
                    <a href="ProductDetails.aspx?id=2">
                        <img src="images/coffee-italian-roast.jpg" alt="Italian Roast" />
                    </a>
                </div>
                <div class="product-content">
                    <h3 class="product-title"><a href="ProductDetails.aspx?id=2">Italian Roast</a></h3>
                    <div class="product-sub">Bold &middot; Classic</div>
                    <div class="product-card-footer">
                        <span class="product-price">&#8377;249</span>
                        <div style="display: flex; align-items: center; gap: 8px;">
                            <span class="product-rating"><i class="fas fa-star"></i> 4.9</span>
                            <button type="button" class="btn-add-circle" data-product-name="Italian Roast" title="Add to Cart">+</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 3: Caramel Macchiato -->
            <div class="product-card" data-category="ESPRESSO BAR">
                <div class="product-image-wrap">
                    <a href="ProductDetails.aspx?id=3">
                        <img src="images/coffee-macchiato.jpg" alt="Caramel Macchiato" />
                    </a>
                </div>
                <div class="product-content">
                    <h3 class="product-title"><a href="ProductDetails.aspx?id=3">Caramel Macchiato</a></h3>
                    <div class="product-sub">Sweet &middot; Layered</div>
                    <div class="product-card-footer">
                        <span class="product-price">&#8377;319</span>
                        <div style="display: flex; align-items: center; gap: 8px;">
                            <span class="product-rating"><i class="fas fa-star"></i> 4.8</span>
                            <button type="button" class="btn-add-circle" data-product-name="Caramel Macchiato" title="Add to Cart">+</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 4: Vanilla Croissant -->
            <div class="product-card" data-category="BAKERY">
                <div class="product-image-wrap">
                    <a href="ProductDetails.aspx?id=4">
                        <img src="images/croissant.jpg" alt="Vanilla Croissant" />
                    </a>
                </div>
                <div class="product-content">
                    <h3 class="product-title"><a href="ProductDetails.aspx?id=4">Vanilla Croissant</a></h3>
                    <div class="product-sub">Flaky &middot; Buttery</div>
                    <div class="product-card-footer">
                        <span class="product-price">&#8377;280</span>
                        <div style="display: flex; align-items: center; gap: 8px;">
                            <span class="product-rating"><i class="fas fa-star"></i> 4.9</span>
                            <button type="button" class="btn-add-circle" data-product-name="Vanilla Croissant" title="Add to Cart">+</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 5: Stroopwafel Cupcake -->
            <div class="product-card" data-category="BAKERY">
                <div class="product-image-wrap">
                    <a href="ProductDetails.aspx?id=5">
                        <img src="images/stroopwafel-cupcake.jpg" alt="Stroopwafel Cupcake" />
                    </a>
                </div>
                <div class="product-content">
                    <h3 class="product-title"><a href="ProductDetails.aspx?id=5">Stroopwafel Cupcake</a></h3>
                    <div class="product-sub">Caramel &middot; Spiced</div>
                    <div class="product-card-footer">
                        <span class="product-price">&#8377;289</span>
                        <div style="display: flex; align-items: center; gap: 8px;">
                            <span class="product-rating"><i class="fas fa-star"></i> 4.7</span>
                            <button type="button" class="btn-add-circle" data-product-name="Stroopwafel Cupcake" title="Add to Cart">+</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 6: Chocolate Danish -->
            <div class="product-card" data-category="BAKERY">
                <div class="product-image-wrap">
                    <a href="ProductDetails.aspx?id=6">
                        <img src="images/chocolate-danish.jpg" alt="Chocolate Danish" />
                    </a>
                </div>
                <div class="product-content">
                    <h3 class="product-title"><a href="ProductDetails.aspx?id=6">Chocolate Danish</a></h3>
                    <div class="product-sub">Dark &middot; Crisp</div>
                    <div class="product-card-footer">
                        <span class="product-price">&#8377;219</span>
                        <div style="display: flex; align-items: center; gap: 8px;">
                            <span class="product-rating"><i class="fas fa-star"></i> 4.8</span>
                            <button type="button" class="btn-add-circle" data-product-name="Chocolate Danish" title="Add to Cart">+</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card 7: Caffè Latte -->
            <div class="product-card" data-category="ESPRESSO BAR">
                <div class="product-image-wrap">
                    <a href="ProductDetails.aspx?id=7">
                        <img src="images/caffe-latte.jpg" alt="Caffè Latte" />
                    </a>
                </div>
                <div class="product-content">
                    <h3 class="product-title"><a href="ProductDetails.aspx?id=7">Caffè Latte</a></h3>
                    <div class="product-sub">Mild &middot; Creamy</div>
                    <div class="product-card-footer">
                        <span class="product-price">&#8377;289</span>
                        <div style="display: flex; align-items: center; gap: 8px;">
                            <span class="product-rating"><i class="fas fa-star"></i> 4.8</span>
                            <button type="button" class="btn-add-circle" data-product-name="Caffè Latte" title="Add to Cart">+</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
