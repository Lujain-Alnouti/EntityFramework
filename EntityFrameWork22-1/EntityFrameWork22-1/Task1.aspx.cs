using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Runtime.Remoting.Contexts;
using System.Security.Cryptography.Xml;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameWork22_1
{
   
    public partial class Task1 : System.Web.UI.Page
    {
        TasksEntities1 xxx = new TasksEntities1();

        public class MyClass
        {
            public string Name { get; set; }
            public string Email { get; set; }
            public string City { get; set; }
            public int Phone { get; set; }
            public string Photo { get; set; }
            public int Age { get; set; }


        }
        protected void Page_Load(object sender, EventArgs e)
        {
          

            if (!IsPostBack) { 
            var x = from c in xxx.Cities select c;
                DropDownList1.DataSource= x.ToList();
                DropDownList1.DataTextField="City1";
                DropDownList1.DataValueField="CityID";
                DropDownList1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/IMG/") + FileUpload1.FileName);
            string img = FileUpload1.FileName;
            Customer cust = new Customer();
            cust.CustomerName = name.Value;
            cust.Age = Convert.ToInt32(age.Value);
            cust.Email = Email.Text;
            cust.Phone = Convert.ToInt32(phone.Value);
            cust.Photo = "~/IMG/" + img;
            cust.City = Convert.ToInt32(DropDownList1.SelectedValue);
            xxx.Customers.Add(cust);
            xxx.SaveChanges();

            Response.Redirect("Task1B.aspx");


        }

       
    }
}