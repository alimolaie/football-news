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
using mihan_news.Model;
namespace mihan_news.admin
{
    public partial class ShowNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();


            }
            if (!IsPostBack)
            {
                PopulateCategory();
            }

        }
        News c;
        private void PoupulateNews()
        {
            List<News> allNews = null;
            using (samaDbEntities dc = new samaDbEntities())
            {
                var news = (from a in dc.news


                            select new
                            {
                                a.category_id,

                            }

                                );
                if (news != null)
                {
                    allNews = new List<News>();

                    foreach (var i in news)
                    {

                        c.CategoryName = i.ToString();
                        allNews.Add(c);

                    }
                }
            }
        }
        //fetch category from database
        private List<category> PopulateCategory()
        {
            using (samaDbEntities dc = new samaDbEntities())
            {
                return dc.categories.OrderBy(a => a.category_name).ToList();
            }
        }
        //bind category from database
        private void BindCategory(DropDownList ddCategory, List<category> Cat)
        {
            ddCategory.Items.Clear();
            ddCategory.Items.Add(new ListItem { Text = "دسته مورد نظر را انتخاب کنید ", Value = "0" });
            ddCategory.AppendDataBoundItems = true;
            ddCategory.DataTextField = "category_name";
            ddCategory.DataValueField = "category_id";
            ddCategory.DataSource = Cat;
            ddCategory.DataBind();
        }
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select * from news"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //validation page
            Page.Validate("edit");
            if (!Page.IsValid)
            {
                return;
            }
            TextBox txtTitleEdit = (TextBox)GridView1.Rows[e.RowIndex].FindControl("EditTitle");
            TextBox txtShortDesEdit = (TextBox)GridView1.Rows[e.RowIndex].FindControl("EditShortDescription");
            TextBox txtLongDesEdit = (TextBox)GridView1.Rows[e.RowIndex].FindControl("EditLongDescription");
            FileUpload FileUpdloadImage = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUploadEditImage");
            // string str=FileUpdloadImage.FileName;
            // FileUpdloadImage.PostedFile.SaveAs(Server.MapPath("~/news_images/" + str));
            //  string path = "~/news_images/" + str.ToString();
            using (samaDbEntities dc = new samaDbEntities())
            {
                var v = dc.news.FirstOrDefault();
                if (v != null)
                {
                    v.title = txtTitleEdit.Text.Trim();
                    v.short_description = txtShortDesEdit.Text.Trim();
                    v.long_description = txtLongDesEdit.Text.Trim();
                    //  v.image = String.Format("{0}{1}",path,str);
                }
                dc.SaveChanges();
                GridView1.EditIndex = -1;
                this.BindGrid();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (samaDbEntities dc = new samaDbEntities())
            {
                var v = dc.news.FirstOrDefault();
                if (v != null)
                {
                    dc.news.Remove(v);
                    dc.SaveChanges();
                    this.BindGrid();
                }

            }
        }

    }
}
