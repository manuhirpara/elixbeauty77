<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="elixbeauty7.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
                    <!-- Hero Section bhai -->
    <section id="home" class="hero">
        <div class="hero-video" aria-hidden="true">
            <video class="hero-video-media" autoplay muted loop playsinline preload="metadata" poster="https://images.unsplash.com/photo-1585386147415-71ef9a79a2f0?w=1200&h=800&fit=crop&crop=center">
                <source src="assets/videos/cosmetics-bg.mp4" type="video/mp4">
                <source src="assets/videos/cosmetics-bg.webm" type="video/webm">
            </video>
        </div>
        <div class="hero-content">
            <h1>Discover Your Natural Beauty</h1>
            <p>
                Premium cosmetics that enhance your natural radiance and bring out your inner glow</p>
            <button class="cta-button" onclick="scrollToProducts()">
                Shop Now
            </button>
        </div>
        <div class="hero-image">
            <div class="hero-product">
                <img src="https://images.unsplash.com/photo-1556228720-195a672e8a03?w=500&h=500&fit=crop&crop=center" alt="Premium Cosmetics">
            </div>
            <div class="floating-elements">
                <div class="floating-item" style="--delay: 0s">
                    <i class="fas fa-star"></i>
                </div>
                <div class="floating-item" style="--delay: 1s">
                    <i class="fas fa-heart"></i>
                </div>
                <div class="floating-item" style="--delay: 2s">
                    <i class="fas fa-gem"></i>
                </div>
            </div>
        </div>
    </section>

    

    <!-- Products Section -->
    <section id="products" class="products">
        <div class="container">
            <h2>Our Products</h2>
            <div class="product-filters">
                <button class="filter-btn active" data-category="all">
                    All
                </button>
                <button class="filter-btn" data-category="skincare">
                    Skincare
                </button>
                <button class="filter-btn" data-category="makeup">
                    Makeup
                </button>
                <button class="filter-btn" data-category="fragrance">
                    Fragrance
                </button>
                <button class="filter-btn" data-category="tools">
                    Beauty Tools
                </button>
            </div>
            <div class="product-grid" id="productGrid">
                <!-- Products will be dynamically loaded here -->
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about">
        <div class="container">
            <div class="about-content">
                <div class="about-text">
                    <h2>ElixBeauty</h2>
                    <p>
                        We believe that beauty comes from within and our products are designed to enhance your natural radiance. Our premium cosmetics are made with the finest ingredients, ensuring quality and effectiveness for every skin type.</p>
                    <div class="features">
                        <div class="feature">
                            <i class="fas fa-leaf"></i>
                            <h3>Natural Ingredients</h3>
                            <p>
                                Made with organic and natural ingredients</p>
                        </div>
                        <div class="feature">
                            <i class="fas fa-certificate"></i>
                            <h3>Quality Assured</h3>
                            <p>
                                Rigorous testing and quality control</p>
                        </div>
                        <div class="feature">
                            <i class="fas fa-heart"></i>
                            <h3>Cruelty Free</h3>
                            <p>
                                Never tested on animals</p>
                        </div>
                    </div>
                    <p class="more-text" id="aboutMoreText">
                        Founded with a passion for clean beauty, ElixBeauty partners with ethical suppliers and dermatologists to craft formulas that are both high-performing and gentle. From concept to creation, we obsess over textures, aromas, and results—so your daily rituals feel as luxurious as they are effective.
                    </p>
                    <button type="button" class="read-more-btn" id="readMoreBtn" aria-expanded="false" aria-controls="aboutMoreText">
                        Read more
                    </button>
                </div>
                <div class="about-image">
                    <img src="https://images.unsplash.com/photo-1571781926291-c477ebfd024b?w=400&h=400&fit=crop&crop=center" alt="Beauty Products">
                </div>
            </div>
            <div class="about-stats" id="aboutStats">
                <div class="stat">
                    <span class="stat-number" data-target="10" data-suffix="+">0</span> <span class="stat-label">Years of Excellence</span>
                </div>
                <div class="stat">
                    <span class="stat-number" data-target="500" data-suffix="+">0</span> <span class="stat-label">Products Launched</span>
                </div>
                <div class="stat">
                    <span class="stat-number" data-target="120" data-suffix="K+">0</span> <span class="stat-label">Happy Customers</span>
                </div>
                <div class="stat">
                    <span class="stat-number" data-target="100" data-suffix="%">0</span> <span class="stat-label">Cruelty-Free</span>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="contact">
        <div class="container">
            <div class="section-header">
                <h2>Contact</h2>
            </div>
            <div class="contact-content">
                <div class="contact-map">
                    <iframe title="ElixBeauty Location" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24155.642629919077!2d-74.012!3d40.713!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a316adc0b0b%3A0x4f8b6c7e4d9e12fd!2sLower%20Manhattan%2C%20New%20York%2C%20NY!5e0!3m2!1sen!2sus!4v1700000000000" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="contact-form-container">
                    <form class="contact-form" id="contactForm">
                        <input type="text" placeholder="Your Name" name="name" required> <small class="error-text" data-error-for="name"></small>
                        <input type="email" placeholder="Your Email" name="email" required> <small class="error-text" data-error-for="email"></small>
                        <input type="text" placeholder="Subject" name="subject" required> <small class="error-text" data-error-for="subject"></small>
                        <textarea placeholder="Your Message" name="message" rows="6" required></textarea> <small class="error-text" data-error-for="message"></small>
                        <input type="text" name="company" id="companyField" class="hp-field" tabindex="-1" autocomplete="off" aria-hidden="true" placeholder="Company">
                        <button type="submit" class="submit-btn">
                            Send to us
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

