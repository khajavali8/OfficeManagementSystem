using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMS3
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
           
             
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("InsertRegister", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                        cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                        cmd.Parameters.AddWithValue("@name", txtName.Text);
                        cmd.Parameters.AddWithValue("@mobile", txtPhone.Text);
                        cmd.Parameters.AddWithValue("@gender", GetSelectedGender());
                        cmd.Parameters.AddWithValue("@course", ddlCourse.SelectedValue);
                        cmd.Parameters.AddWithValue("@address", txtAddress.Text);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                        lbl1.Text = "Registration successful!";
                    }
                }
            }
            catch (Exception ex)
            {
                lbl1.Text = "Error: " + ex.Message;
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        private string GetSelectedGender()
        {
            if (rbMale.Checked)
            {
                return "Male";
            }
            else if (rbFemale.Checked)
            {
                return "Female";
            }
            else if (rbOthers.Checked)
            {
                return "Other";
            }
            return string.Empty;
        }
    }
}
