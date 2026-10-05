<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CAFFIORA.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-wrapper">
        <!-- TOP SECTION: BANNER & BARISTA ACTION -->
        <div class="about-top-grid">
            <div class="about-banner-card" style="background-image: url('images/cafe-interior.jpg');">
                <div class="about-banner-content">
                    <h1 class="hero-title" style="font-size: 34px;">Crafted with Care.<br />Shared with Distinction.</h1>
                    <p class="hero-subtitle">
                        Discover the story behind CAFFIORA—a sanctuary for artisanal coffee and meaningful moments.
                    </p>
                </div>
            </div>

            <div class="about-image-card">
                <img src="images/barista-pouring.jpg" alt="Artisanal Pour Over Coffee" />
            </div>
        </div>

        <!-- LOWER SECTION: OUR PHILOSOPHY & STORY -->
        <div class="about-philosophy-section">
            <div class="philosophy-left">
                <h2 class="philosophy-title">Our Philosophy</h2>
                <div class="philosophy-pillars-row">
                    <!-- Pillar 1 -->
                    <div class="pillar-card">
                        <div class="pillar-icon"><i class="fas fa-medal"></i></div>
                        <h4 class="pillar-name">Quality</h4>
                        <p class="pillar-desc">
                            Sourcing only the top 1% of specialty beans worldwide.
                        </p>
                    </div>

                    <!-- Pillar 2 -->
                    <div class="pillar-card">
                        <div class="pillar-icon"><i class="fas fa-hand-holding-water"></i></div>
                        <h4 class="pillar-name">Craft</h4>
                        <p class="pillar-desc">
                            Expert baristas dedicated to mastering the science of extraction.
                        </p>
                    </div>

                    <!-- Pillar 3 -->
                    <div class="pillar-card">
                        <div class="pillar-icon"><i class="fas fa-couch"></i></div>
                        <h4 class="pillar-name">Experience</h4>
                        <p class="pillar-desc">
                            A meticulously designed space for quiet luxury and connection.
                        </p>
                    </div>
                </div>
            </div>

            <div class="philosophy-right">
                <div class="about-info-card">
                    <h3 class="story-title" style="font-size: 22px;">More Than Just Coffee</h3>
                    <p class="story-text" style="font-size: 13px; margin-bottom: 0;">
                        Step into CAFFIORA, where every cup tells a story of artisanal dedication. Our café is designed to be a sanctuary from the bustling world, offering a warm, minimalist environment that invites you to pause, savor, and reconnect.
                    </p>
                </div>

                <div class="about-cta-card">
                    <h3 style="font-size: 20px; font-family: var(--font-serif); margin-bottom: 12px; color: #FFFFFF;">
                        Ready for Your Next Favorite Cup?
                    </h3>
                    <div style="font-family: var(--font-serif); font-size: 18px; font-weight: 700; letter-spacing: 2px; color: #FFFFFF; margin-bottom: 2px;">
                        CAFFIORA
                    </div>
                    <div style="font-size: 10px; letter-spacing: 1px; color: rgba(255,255,255,0.7); text-transform: uppercase; margin-bottom: 16px;">
                        Crafted With Distinction
                    </div>
                    <a href="Menu.aspx" class="btn-white-caffiora">Explore Menu</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
