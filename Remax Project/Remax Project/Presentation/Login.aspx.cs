using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Remax_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [User] where Username='" + TextBoxUserName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select Password from [User] where Username='" + TextBoxUserName.Text + "'";
                SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
                string password = passCom.ExecuteScalar().ToString();

                string checkRoleQuery = "select Role from [User] where Username='" + TextBoxUserName.Text + "'";
                SqlCommand roleCom = new SqlCommand(checkRoleQuery, conn);
                string role = roleCom.ExecuteScalar().ToString();

                if (password == TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxUserName.Text;
                    //Response.Write("Password is correct");
                    LabelStatus.Text = "Password is correct";
                    if (role == "Admin")
                    {
                        Response.Redirect("AdminPage.aspx");
                    }
                    else if (role == "Client")
                    {
                        Response.Redirect("ClientPage.aspx");
                    }
                }
                else
                {
                    //Response.Write("Password is NOT correct");
                    LabelStatus.Text = "Password is NOT correct";
                }
            }
            else
            {
                //Response.Write("Username is NOT correct");
                LabelStatus.Text = "Username is NOT correct";
            }
        }
    }
}