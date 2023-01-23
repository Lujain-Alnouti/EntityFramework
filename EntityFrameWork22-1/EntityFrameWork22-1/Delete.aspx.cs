using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameWork22_1
{
    public partial class Delete : System.Web.UI.Page
    {
        TasksEntities1 xxx = new TasksEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            int ii = Convert.ToInt32(Request.QueryString["id"]);
            var query = from c in xxx.Customers
                        join o in xxx.Cities on c.City equals o.CityID
                        where c.CustomerID == ii 
                        select new { c.CustomerName, c.Age, o.City1, c.Phone, c.Email, c.Photo,c.City };
            DetailsView1.DataSource= query.ToList();
            DetailsView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ii = Convert.ToInt32(Request.QueryString["id"]);
            var cust=xxx.Customers.Single(x=>x.CustomerID == ii);
            xxx.Customers.Remove(cust);
            xxx.SaveChanges();
            Response.Redirect("Task1B.aspx");

        }
    }
}