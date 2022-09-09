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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //for show slider1
            string con = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(con);
            string sqlSlider1 = "select top 3 * from news";
            string sqlSlider2 = "SELECT top 4 * FROM news order by title desc ";
            string sqlNewNews = "select top 3 * from news";
            string sqlShowCat = "select * from category";
            string sqlPopularNews = "SELECT top 2 * FROM news order by category_id desc ";
            string sqlPopularNews2 = "SELECT top 2 * FROM news order by title desc ";
            string sqlMainNews = "select top 5 * from news";
            sqlConnection.Open();

            SqlCommand cmdSlider1 = new SqlCommand(sqlSlider1, sqlConnection);
            SqlDataAdapter adapterSlider1 = new SqlDataAdapter(cmdSlider1);
            DataTable dataSlider1 = new DataTable();
            adapterSlider1.Fill(dataSlider1);
            repSlider1.DataSource = dataSlider1;
            repSlider1.DataBind();
            sqlConnection.Close();
            //for show slider 2
            sqlConnection.Open();

            SqlCommand cmdSlider2 = new SqlCommand(sqlSlider2, sqlConnection);
            SqlDataAdapter adapterSlider2 = new SqlDataAdapter(cmdSlider2);
            DataTable dataSlider2 = new DataTable();
            adapterSlider2.Fill(dataSlider2);
            repSlider2.DataSource = dataSlider2;
            repSlider2.DataBind();
            sqlConnection.Close();
            
            //for show category in body website
            sqlConnection.Open();

            SqlCommand cmdcatBody = new SqlCommand(sqlShowCat, sqlConnection);
            SqlDataAdapter adapterCatBody = new SqlDataAdapter(cmdcatBody);
            DataTable dataCatBady = new DataTable();
            adapterCatBody.Fill(dataCatBady);
            RepshowCategory1.DataSource = dataCatBady;
            RepshowCategory1.DataBind();
            sqlConnection.Close();
            //for show category in menu website
            sqlConnection.Open();

            SqlCommand cmdcatMenu = new SqlCommand(sqlShowCat, sqlConnection);
            SqlDataAdapter adapterCatMenu = new SqlDataAdapter(cmdcatMenu);
            DataTable dataCatMenu = new DataTable();
            adapterCatMenu.Fill(dataCatMenu);
            RepCatMenu.DataSource = dataCatMenu;
            RepCatMenu.DataBind();
            sqlConnection.Close();
           //for show new news
            sqlConnection.Open();

            SqlCommand cmdNewNews = new SqlCommand(sqlNewNews, sqlConnection);
            SqlDataAdapter adapterNewNews = new SqlDataAdapter(cmdNewNews);
            DataTable dataNewNews = new DataTable();
            adapterNewNews.Fill(dataNewNews);
            RepNewNews.DataSource = dataNewNews;
            RepNewNews.DataBind();
            sqlConnection.Close();
            //for show popular news1
            SqlCommand cmdPopularNews = new SqlCommand(sqlPopularNews, sqlConnection);
            SqlDataAdapter adapterPopularNews = new SqlDataAdapter(cmdPopularNews);
            DataTable dataPopularNews = new DataTable();
            adapterPopularNews.Fill(dataPopularNews);
            repPopular1.DataSource = dataPopularNews;
            repPopular1.DataBind();
            sqlConnection.Close();
            //for show popular news1
            SqlCommand cmdPopularNews2 = new SqlCommand(sqlPopularNews2, sqlConnection);
            SqlDataAdapter adapterPopularNews2 = new SqlDataAdapter(cmdPopularNews2);
            DataTable dataPopularNews2 = new DataTable();
            adapterPopularNews2.Fill(dataPopularNews2);
           repPopular2.DataSource = dataPopularNews2;
           repPopular2.DataBind();
            sqlConnection.Close();
            //for show popular news1
            SqlCommand cmdMainNews = new SqlCommand(sqlMainNews, sqlConnection);
            SqlDataAdapter adapterMainNews = new SqlDataAdapter(cmdMainNews);
            DataTable dataMainNews= new DataTable();
            adapterMainNews.Fill(dataMainNews);
            repNewsMain.DataSource = dataMainNews;
            repNewsMain.DataBind();
            sqlConnection.Close();
        }

        protected void btn_login_Click(object sender, EventArgs e)
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