using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Security;
namespace mihan_news
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=.;Initial Catalog=samaDb;Integrated Security=True";
            SqlConnection conn;
            conn = new SqlConnection(connectionString);
            conn.Open();
            string checkUser = "select count(*) from users where user_name='" + userName.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPassword = "select password from users where user_name='" + userName.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPassword, conn);
                string password = passComm.ExecuteScalar().ToString();
                if (password == passwordTxt.Text)
                {

                    Response.Redirect("admin/Dashboard.aspx");
                }
                else
                {
                    messageLb.Visible = true;
                    messageLb.Text = "رمز عبور مطابقت ندارد";
                }

            }

            else
            {
                messageLb.Visible = true;
                messageLb.Text = "نام کاربری وجود ندارد";
            }
        }
    }
}