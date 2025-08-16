using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace NabihaHasrat
{
    public partial class NabihasHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btSendMsg_Click(object sender, EventArgs e)
        {
              try
                {
                    // Collect user input
                    string name = txtName.Text.Trim();
                    string email = txtEmail.Text.Trim();
                    string message = txtMessage.Text.Trim();

                    // Build the email content
                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress("hasratnabiha@gmail.com"); // sender
                    mail.To.Add("nabihahasrat16@gmail.com"); // recipient (can be same as sender)
                    mail.Subject = "New Contact Form Message";
                    mail.Body = $"Name: {name}\nEmail: {email}\n\nMessage:\n{message}";

                    // Setup Gmail SMTP
                    SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                    smtp.Credentials = new NetworkCredential("nabihahasrat16@gmail.com", "rfezwotgtbzglqkr");
                    smtp.EnableSsl = true;

                    // Send mail
                    smtp.Send(mail);

                    // Success message
                    lblStatus.Text = "✅ Message sent successfully!";
                    lblStatus.ForeColor = System.Drawing.Color.Green;

                    // Clear inputs
                    txtName.Text = "";
                    txtEmail.Text = "";
                    txtMessage.Text = "";
                }
                catch (Exception ex)
                {
                    // Show error
                    lblStatus.Text = "❌ Error: " + ex.Message;
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                }

      }
  }
}