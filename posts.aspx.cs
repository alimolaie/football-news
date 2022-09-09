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
using System.Web.Services;
using System.Data;

namespace mihan_news
{
    public partial class posts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
           this.BindListView();


            string conn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(conn);
            
            string sqlShowCat = "select * from category";
           
           //show category
            sqlConnection.Open();

        


            SqlCommand cmdcatBody = new SqlCommand(sqlShowCat, sqlConnection);
            SqlDataAdapter adapterCatBody = new SqlDataAdapter(cmdcatBody);
            DataTable dataCatBady = new DataTable();
            adapterCatBody.Fill(dataCatBady);
            RepCatMenu.DataSource = dataCatBady;
            RepCatMenu.DataBind();
            sqlConnection.Close();
           
        }
   
        private void BindListView()
        {
            string constr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM news";
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        PostList.DataSource = dt;
                        PostList.DataBind();
                    }
                }
            }
        }

       

        
    }
}