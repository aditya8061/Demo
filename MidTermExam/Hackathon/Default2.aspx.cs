using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string userid = txtEmailId.Text;
        string usrpswd = txt_UserPswd.Text;
        /*ServiceReference1.WebServiceSoapClient c = new ServiceReference1.WebServiceSoapClient("WebServiceSoap");
        int result = c.Login(userid,usrpswd);

        if (result == 1)
        {
            Response.Redirect("Default.aspx");
        }
        if (result == 2)
        {
            lblResult.Text = "Invalid Credentials";
        }
        if (result == 3)
        {
            Response.Redirect("UserHome.aspx");
        } */

                
        if (userid == "admin" && usrpswd == "admin")
        {
            Response.Redirect("Default.aspx");
        }

        //Connection String
        string cs = ConfigurationManager.ConnectionStrings["csHackathon"].ConnectionString;

        //Creating Sqlconnection object and establishing connection

        SqlConnection con = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand();

        cmd.Connection = con;

        cmd.CommandText = "Select Password From  Register_Hackathon where EmailID ='" + userid + "'";

        con.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        if (!dr.Read() || dr["Password"].ToString() != usrpswd)
        {
            con.Close();
            lblResult.Text="Invalid credentials";

        }
        else
        {
            con.Close();
            Response.Redirect("UserHome.aspx");

        } 


       

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}