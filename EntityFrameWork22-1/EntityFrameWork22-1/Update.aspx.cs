using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace EntityFrameWork22_1
{
    public partial class Update : System.Web.UI.Page
    {
        TasksEntities1 xxx = new TasksEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var x = from c in xxx.Cities select c;
                DropDownList1.DataSource = x.ToList();
                DropDownList1.DataTextField = "City1";
                DropDownList1.DataValueField = "CityID";
                DropDownList1.DataBind();


                int t = Convert.ToInt32(Request.QueryString["id"]);
                name.Value = xxx.Customers.FirstOrDefault(a => a.CustomerID == t)?.CustomerName;
                age.Value = xxx.Customers.FirstOrDefault(a => a.CustomerID == t)?.Age.ToString();
                phone.Value = xxx.Customers.FirstOrDefault(a => a.CustomerID == t)?.Phone.ToString();
                Email.Text = xxx.Customers.FirstOrDefault(a => a.CustomerID == t)?.Email;
                Image1.ImageUrl = xxx.Customers.FirstOrDefault(a => a.CustomerID == t)?.Photo;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {

                int id = Convert.ToInt32(Request.QueryString["id"]);
                string iii = Image1.ImageUrl;
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("~/IMG/") + Path.GetFileName(FileUpload1.FileName));
                     iii = "~/IMG/" + FileUpload1.FileName;
                    Image1.ImageUrl = "~/IMG/" + FileUpload1.FileName;

                }

                using (var context = new TasksEntities1())
                {


                    using (TasksEntities1 entities = new TasksEntities1())

                    {

                        Customer custome = (from c in entities.Customers
                                            where c.CustomerID == id
                                            select c).FirstOrDefault();
                        custome.CustomerName = name.Value;
                        custome.Phone = Convert.ToInt32(phone.Value);
                        custome.Email = Email.Text;
                        custome.Age = Convert.ToInt32(age.Value);
                        custome.Photo = iii;

                        custome.City = Convert.ToInt32(DropDownList1.SelectedValue);
                        entities.SaveChanges();
                    }
                }
                Response.Redirect("Task1B.aspx");
            }
        }
    }
}