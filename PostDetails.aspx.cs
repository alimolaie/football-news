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
    public partial class PostDetails : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            string conn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(conn);

            string sqlShowCat = "select * from category";
            string sqlShowNews = "select title,long_description,image from news where id='" + Convert.ToInt32(Request.QueryString["id"].ToString()) + "'";
            //show category
            sqlConnection.Open();




            SqlCommand cmdcatBody = new SqlCommand(sqlShowCat, sqlConnection);
            SqlDataAdapter adapterCatBody = new SqlDataAdapter(cmdcatBody);
            DataTable dataCatBady = new DataTable();
            adapterCatBody.Fill(dataCatBady);
            RepCatMenu.DataSource = dataCatBady;
            RepCatMenu.DataBind();
            sqlConnection.Close();

            if (Request.QueryString["id"]==null)
            {
                Response.Redirect("posts.aspx");
            }

            else { 
      
            //show news
            sqlConnection.Open();




            SqlCommand cmdNew = new SqlCommand(sqlShowNews, sqlConnection);
            SqlDataAdapter adapterNews= new SqlDataAdapter(cmdNew);
            DataTable dataNews = new DataTable();
            adapterNews.Fill(dataNews);
            FormView1.DataSource = dataNews;
            FormView1.DataBind();
            sqlConnection.Close();
            }
        }
    }
}