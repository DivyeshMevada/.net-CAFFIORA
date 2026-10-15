<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CAFFIORA.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-wrapper">
        <!-- TOP SECTION: HERO & STORY -->
        <div class="home-grid-layout">
            <!-- Left Hero Card -->
            <div class="home-hero-card" style="background-image: url('images/hero-coffee.jpg');">
                <div class="home-hero-content">
                    <h1 class="hero-title">Crafted Coffee.<br />Made for Moments.</h1>
                    <p class="hero-subtitle">
                        Discover handcrafted coffee, freshly baked favorites, and a café experience made with distinction.
                    </p>
                    <div class="hero-btn-row">
                        <a href="Menu.aspx" class="btn-white-caffiora">Explore Menu</a>
                        <a href="Menu.aspx" class="btn-outline-caffiora" style="color: #FFFFFF; border-color: rgba(255,255,255,0.7);">Order Now</a>
                    </div>
                </div>
            </div>

            <!-- Right Story Card -->
            <div class="home-story-card">
                <div>
                    <h2 class="story-title">More Than Just Coffee</h2>
                    <p class="story-text">
                        At CAFFIORA, every cup is a testament to our dedication to the craft. We source the finest beans and roast them with precision to bring you an unforgettable sensory experience.
                    </p>
                </div>
                <div class="story-image-wrap">
                    <img src="images/barista-smiling.jpg" alt="CAFFIORA Barista" />
                </div>
            </div>
        </div>

        <!-- LOWER SECTION: FEATURED, CATEGORIES & CTA -->
        <div class="home-lower-layout">
            <!-- Left: Featured at CAFFIORA -->
            <div class="featured-list-card">
                <h3 class="featured-header-title">Featured<br />at<br />CAFFIORA</h3>
                <div class="featured-items-list">
                    <a href="ProductDetails.aspx?id=1" class="featured-item-row">
                        <img src="images/coffee-espresso.jpg" alt="Velvet Espresso" class="featured-item-thumb" />
                        <div class="featured-item-info">
                            <div class="featured-item-name">Velvet Espresso</div>
                            <div class="featured-item-sub">Rich &amp; Intense</div>
                        </div>
                        <div class="featured-item-price">&#8377;250</div>
                    </a>

                    <a href="ProductDetails.aspx?id=3" class="featured-item-row">
                        <img src="images/coffee-macchiato.jpg" alt="Caramel Macchiato" class="featured-item-thumb" />
                        <div class="featured-item-info">
                            <div class="featured-item-name">Caramel Macchiato</div>
                            <div class="featured-item-sub">Sweet &amp; Layered</div>
                        </div>
                        <div class="featured-item-price">&#8377;320</div>
                    </a>

                    <a href="ProductDetails.aspx?id=7" class="featured-item-row">
                        <img src="images/caffe-latte.jpg" alt="Fresh Café Latte" class="featured-item-thumb" />
                        <div class="featured-item-info">
                            <div class="featured-item-name">Fresh Café Latte</div>
                            <div class="featured-item-sub">Smooth &amp; Creamy</div>
                        </div>
                        <div class="featured-item-price">&#8377;280</div>
                    </a>
                </div>
            </div>

            <!-- Center: Categories Grid -->
            <div class="categories-2x2-grid">
                <a href="Menu.aspx?category=ESPRESSO+BAR" class="category-tile">
                    <div class="category-icon-wrap"><i class="fas fa-mug-hot"></i></div>
                    <span class="category-tile-name">Coffee</span>
                </a>
                <a href="Menu.aspx?category=BAKERY" class="category-tile">
                    <div class="category-icon-wrap"><i class="fas fa-bread-slice"></i></div>
                    <span class="category-tile-name">Bakery</span>
                </a>
                <a href="Menu.aspx?category=COLD+BREW" class="category-tile">
                    <div class="category-icon-wrap"><i class="fas fa-glass-whiskey"></i></div>
                    <span class="category-tile-name">Cold Brew</span>
                </a>
                <a href="Menu.aspx?category=DESSERTS" class="category-tile">
                    <div class="category-icon-wrap"><i class="fas fa-birthday-cake"></i></div>
                    <span class="category-tile-name">Desserts</span>
                </a>
            </div>

            <!-- Right: CTA Card -->
            <div class="cta-espresso-box">
                <h3 class="cta-box-title">Your next favorite cup is waiting.</h3>
                <a href="Menu.aspx" class="btn-white-caffiora">Order Now</a>
            </div>
        </div>
    </div>
</asp:Content>
