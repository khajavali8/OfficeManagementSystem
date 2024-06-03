using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMS3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Visible = false;
            }

        }
        protected void BtnLogin_Click(object sender, EventArgs e)

        {
            {
                Response.Redirect("Homepage.html");
            }
        
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("CheckUserCredentials", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                        cmd.Parameters.AddWithValue("@password", txtPassword.Text);


                        con.Open();
                        int count = (int)cmd.ExecuteScalar();
                        con.Close();

                        if (count > 0)
                        {
                            Session["username"] = txtUsername.Text;
                            Response.Redirect("Homepage.html");
                        }
                        else
                        {
                            lblMessage.Visible = true;
                            lblMessage.Text = "Invalid credentails";
                        }
                    }
                }
            }

            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Error:" + ex.Message;
            }
        }

        protected void BtnNewUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }



    }
}