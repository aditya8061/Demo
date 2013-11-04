using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)

    {

        string emailid = txtEmailId.Text;
        string name = txtName.Text;
        string pswd = txt_UserPswd.Text;

        /*ServiceReference1.WebServiceSoapClient c = new ServiceReference1.WebServiceSoapClient("WebServiceSoap12");

        int result = c.Register(emailid, name, pswd);

        if(result == 1)
        {
            lblResult.Text="Sorry!! You might not have got invitation";

        }

        if(result == 2)
        {
            lblResult.Text="Registration Successful";
            
        } */
        //Connection String
        string cs = ConfigurationManager.ConnectionStrings["csHackathon"].ConnectionString;

        //Creating Sqlconnection object and establishing connection

        SqlConnection con = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand();

        cmd.Connection = con;

        cmd.CommandText = "Select EmailID From  Invitation where EmailID ='" + emailid + "'";

        con.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        if (!dr.Read() || dr["EmailID"].ToString() != emailid)
        {
            con.Close();
            lblResult.Text = "Sorry!! You might not have got invitation";

        }
        else
        {
            dr.Close();

            cmd.CommandText = "INSERT INTO Register_Hackathon(EmailID,Name,Password) VALUES ('" + emailid + "','"+name+"','"+pswd+"')";

            cmd.ExecuteNonQuery();

            lblResult.Text = "Registration Successful";
            

        } 

    } 
}