using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
using System.IO;
namespace mihan_news.admin
{
    public partial class AddNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_addnews_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string extention = Path.GetExtension(FileUpload1.FileName);
                if (extention == ".jpg" || extention == ".png" || extention == ".gif")
                {
                    string str = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/news_images/" + str));
                    string Image = "~/news_images/" + str.ToString();
                    string strcon = "Data Source=.;Initial Catalog=samaDb;Integrated Security=True";
                    string strsql;
                    SqlConnection Con;
                    strsql = "insert into news (title,short_description,long_description,category_id,image) values (@title,@short_description,@long_description,@category_id,@image)";
                    Con = new SqlConnection(strcon);
                    SqlCommand cmd;
                    Con.Open();
                    cmd = new SqlCommand(strsql, Con);
                    cmd.Parameters.Add("@title", SqlDbType.VarChar, 255).Value = title_txt.Text;
                    cmd.Parameters.Add("@short_description", SqlDbType.Text).Value = short_description_txt.Text;
                    cmd.Parameters.Add("@long_description", SqlDbType.Text).Value = news_txt.Text;
                    cmd.Parameters.Add("@category_id", SqlDbType.Int).Value = Convert.ToInt16(category_items.SelectedIndex + 1);
                    cmd.Parameters.AddWithValue("@image", Image);
                    cmd.ExecuteNonQuery();
                    Con.Close();

                    title_txt.Text = "";
                    short_description_txt.Text = "";
                    news_txt.Text = "";
                    category_items.SelectedIndex = 0;

                    sucessLbl.Visible = true;

                    sucessLbl.Text = "پست با موفقیت ارسال شد";
                }
                else
                {
                    validationLbl.Text = "لطفا فایل خود را بر حسب عکس انتخاب نمایید";
                }
            }
            else
            {
                validationLbl.Text = "لطفا عکس خبر را انتخاب کنید";
            }


        }

        

        
    }
}