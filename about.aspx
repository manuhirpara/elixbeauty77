<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="elixbeauty7.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
                     <section id="about" class="about">
     <div class="container">
         <div class="about-content">
            <div class="about-text">
                 <h2>About us</h2>
            
          
                 <p>We believe that beauty comes from within and our products are designed to enhance your natural radiance. Our premium cosmetics are made with the finest ingredients, ensuring quality and effectiveness for every skin type.</p>
                 <div class="features">
                     <div class="feature">
                         <i class="fas fa-leaf"></i>
                         <h3>Natural Ingredients</h3>
                         <p>Made with organic and natural ingredients</p>
                     </div>
                     <div class="feature">
                         <i class="fas fa-certificate"></i>
                         <h3>Quality Assured</h3>
                         <p>Rigorous testing and quality control</p>
                     </div>
                     <div class="feature">
                         <i class="fas fa-heart"></i>
                         <h3>Cruelty Free</h3>
                         <p>Never tested on animals</p>
                     </div>
                 </div>
                 <p class="more-text" id="aboutMoreText">
                     Founded with a passion for clean beauty, ElixBeauty partners with ethical suppliers and dermatologists to craft formulas that are both high-performing and gentle. From concept to creation, we obsess over textures, aromas, and results—so your daily rituals feel as luxurious as they are effective.
                 </p>
                 <button type="button" class="read-more-btn" id="readMoreBtn" aria-expanded="false" aria-controls="aboutMoreText">Read more</button>
             </div>
             <div class="about-image">
                 <img src="https://images.unsplash.com/photo-1571781926291-c477ebfd024b?w=400&h=400&fit=crop&crop=center" alt="Beauty Products">
             </div>
         </div>
         <div class="about-stats" id="aboutStats">
             <div class="stat">
                 <span class="stat-number" data-target="10" data-suffix="+">0</span>
                 <span class="stat-label">Years of Excellence</span>
             </div>
             <div class="stat">
                 <span class="stat-number" data-target="500" data-suffix="+">0</span>
                 <span class="stat-label">Products Launched</span>
             </div>
             <div class="stat">
                 <span class="stat-number" data-target="120" data-suffix="K+">0</span>
                 <span class="stat-label">Happy Customers</span>
             </div>
             <div class="stat">
                 <span class="stat-number" data-target="100" data-suffix="%">0</span>
                 <span class="stat-label">Cruelty-Free</span>
             </div>
         </div>
     </div>
                       
 </section>
</asp:Content>

