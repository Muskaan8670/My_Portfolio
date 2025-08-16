<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NabihasHome.aspx.cs" Inherits="NabihaHasrat.NabihasHome" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Creative Portfolio - Nabiha Hasrat</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="NabihasHome.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- HEADER -->
        <header>
            <div class="container header-container">
                <div class="logo">
                    <img src="Photos/NabihaHasratLogo.png" alt="Logo" class="logo-img" />
                    <span>Nabiha Hasrat</span>
                </div>
                <nav>
                    <ul class="nav-links">
                        <li><a href="#about">About</a></li>
                        <li><a href="#portfolio">Portfolio</a></li>
                        <li><a href="#journal">Journal</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </header>

        <!-- HERO -->
        <section class="hero">
            <div class="container hero-content-sides">
                <img src="Photos/MyImage.jpg" class="hero-photo left" />
                <div class="hero-text-center">
                    <h2> Hello! I'm Nabiha</h2>
                    <p>A Creative Web Developer</p>
                </div>
                <img src="Photos/MyImage2.JPG" class="hero-photo right" />
            </div>
        </section>

        <!-- ABOUT -->
        <section id="about" class="about-section">
            <div class="container">
                <h2>About Me</h2>
                <p>
                    An aspiring full-stack web developer who loves adding personality to code. My goal is to make websites that are not only functional but visually delightful too.<br />
                    💻 Skilled in HTML, CSS, C#, ASP.NET , Bootstrap, JavaScript <br />
                    🎨 Passionate about UI/UX design
                </p>
            </div>
        </section>

        <!-- PORTFOLIO -->
        <section id="portfolio" class="portfolio-section">
            <div class="container">
                <h2>Project-CareBuddy</h2>
                <div class="portfolio-slider">
                    <div class="slide"><img src="Photos/ClientLinkPage.png" alt="Project 1" /></div>
                    <div class="slide"><img src="Photos/PeriodTracker.png" alt="Project 2" /></div>
                    <div class="slide"><img src="Photos/FindDoctors.png" alt="Project 3" /></div>
                    <div class="slide"><img src="Photos/E-Commerce.png" alt="Project 4" /></div>
                    <div class="slide"><img src="Photos/Vaccination.png" alt="Project 5" /></div>
                </div>
            </div>
        </section>

        <!-- JOURNAL -->
        <section id="journal">
            <div class="container">
                <h2>Daily Creative Journal</h2>
                <asp:Panel runat="server" class="journal-section" >
                    <asp:TextBox ID="txtJournalEntry" runat="server" TextMode="MultiLine" Rows="6"
                        CssClass="journal-section-textarea" placeholder="Write your journal entry here..."></asp:TextBox>
                    <div class="mood-tags">
                        <label><asp:RadioButton ID="rdoHappy" runat="server" GroupName="mood" Checked="True" Value="happy" /> 😊 Happy</label>
                        <label><asp:RadioButton ID="rdoCreative" runat="server" GroupName="mood" Value="creative" /> 🎨 Creative</label>
                        <label><asp:RadioButton ID="rdoCalm" runat="server" GroupName="mood" Value="calm" /> 🌿 Calm</label>
                        <label><asp:RadioButton ID="rdoEnergized" runat="server" GroupName="mood" Value="energized" /> ⚡ Energized</label>
                    </div>
                    <asp:Button runat="server" ID="btSaveJournal" CssClass="btn" Text="Save Entry" />
                </asp:Panel>
                <asp:Repeater ID="rptEntries" runat="server">
                    <ItemTemplate>
                        <div class='entry <%# Eval("Mood") %>'><%# Eval("EntryText") %></div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

        <!-- CONTACT FORM (ASP.NET Controls) -->
        <section id="contact">
            <div class="container">
                <h2>Contact Me</h2>
                <asp:Panel runat="server" class="contact-section">
                    <asp:TextBox runat="server" ID="txtName" placeholder="Your Name" CssClass="contact-section-input" required="required" /><br />
                    <asp:TextBox runat="server" ID="txtEmail" placeholder="Your Email" CssClass="contact-section-input" TextMode="Email" required="required" /><br />
                    <asp:TextBox runat="server" ID="txtMessage" placeholder="Your Message" CssClass="contact-section-textarea" TextMode="MultiLine" Rows="4" required="required" /><br />
                    <asp:Button runat="server" ID="btSendMsg" CssClass="btn" Text="Send Message" OnClick="btSendMsg_Click" />
                    <asp:Label ID="lblStatus" runat="server" ForeColor="Green"></asp:Label>
                </asp:Panel>
            </div>
        </section>

        <footer>
            <div class="social-icons">
                <a href="#" target="_blank" aria-label="Facebook" rel="noopener noreferrer"><i class="fab fa-facebook-f"></i></a>
                <a href="#" target="_blank" aria-label="Instagram" rel="noopener noreferrer"><i class="fab fa-instagram"></i></a>
                <a href="#" target="_blank" aria-label="LinkedIn" rel="noopener noreferrer"><i class="fab fa-linkedin-in"></i></a>
                <a href="#" target="_blank" aria-label="GitHub" rel="noopener noreferrer"><i class="fab fa-github"></i></a>
            </div>
        </footer>
    </form>
</body>
</html>


