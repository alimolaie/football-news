using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace mihan_news.admin
{
    public partial class AddCategry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindDataUser1();
                this.BindDataUser2();
            }
        }

        protected void btn_addCategory_Click(object sender, EventArgs e)
        {
            string categoryName = categorayNameBtn.Text;

            //Inserts the FirstName variable into the db-table
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "INSERT INTO category (category_name) VALUES (@categoryName)";

            //Uses the FirstName variable and creates a new sql variable for use in the sql commandtext
            cmd.Parameters.Add("@categoryName", SqlDbType.NChar).Value = categoryName;

            cmd.Connection = conn;

            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();
            sucessLbl.Visible = true;
        }
        private void BindDataUser1()
        {
            string constr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select full_name from users where id=1"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            Repeater1.DataSource = dt;
                            Repeater1.DataBind();
                        }
                    }
                }
            }
        }
        private void BindDataUser2()
        {
            string constr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select full_name from users where id=1"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            Repeater2.DataSource = dt;
                            Repeater2.DataBind();
                        }
                    }
                }
            }
        }
    }
}