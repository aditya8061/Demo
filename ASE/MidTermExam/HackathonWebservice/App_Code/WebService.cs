using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    [WebMethod]
    public int Login(string userid, string userpswd)
    {
        if (userid == "admin" && userpswd == "admin")
        {
            return 1; //Login Successful
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

        if (!dr.Read() || dr["Password"].ToString() != userpswd)
        {
            con.Close();
            return 2; //Invalid Credentials

        }
        else
        {
            con.Close();
            return 3;//Login Successful 

        }

     }

    [WebMethod]
    public int Register(string emailid, string name, string pswd)
    {
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
            return 1;// "Sorry!! You might not have got invitation"

        }
        else
        {
            dr.Close();

            cmd.CommandText = "INSERT INTO Register_Hackathon(EmailID,Name,Password) VALUES ('" + emailid + "','" + name + "','" + pswd + "')";

            cmd.ExecuteNonQuery();

            return 2;// "Registration Successful"


        }

    }

    
    
}
