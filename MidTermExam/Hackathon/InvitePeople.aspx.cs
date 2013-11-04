using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using System.Data.SqlClient;

public partial class InvitePeople : System.Web.UI.Page

{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        string a = txtEmailId.Text;
        string b = txtDescription.Text;

        //Connection String
        string cs = ConfigurationManager.ConnectionStrings["csHackathon"].ConnectionString;

        //Creating Sqlconnection object and establishing connection

        SqlConnection con = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand();

        cmd.Connection = con;

        cmd.CommandText = "INSERT INTO Invitation(EmailID) VALUES ('" + a + "')";

        con.Open();


            cmd.ExecuteNonQuery();

            MailMessage MyMailMessage = new MailMessage("aditya.bhardwaja@gmail.com", a, "Invitation Request", b);
            MyMailMessage.IsBodyHtml = false;
            NetworkCredential mailAuthentication = new NetworkCredential("aditya.bhardwaja@gmail.com", "brianlara123");
            SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
            mailClient.EnableSsl = true;
            mailClient.UseDefaultCredentials = false;
            mailClient.Credentials = mailAuthentication;
            mailClient.Send(MyMailMessage);
            lblResult.Text = "Invitation Sent Successfully";
            txtDescription.Text = "";
            txtEmailId.Text = "";
        
        


    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtDescription.Text = "";
        txtEmailId.Text = "";
        lblResult.Text = "";

    }
    protected void btnViewInvitations_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewInvitationList.aspx");
    }
}