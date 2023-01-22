using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameWork22_1
{
    public partial class Task1B : System.Web.UI.Page
    {
        TasksEntities1 xxx = new TasksEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                co.Text += "   " + xxx.Customers.Select(a => a.CustomerName).Count().ToString();
                avg.Text += "   " + xxx.Customers.Select(a => a.Age).Average().ToString();
                ma.Text += "   " + xxx.Customers.Select(a => a.Age).Max().ToString();

                var query = from c in xxx.Customers
                            join o in xxx.Cities on c.City equals o.CityID
                            select new { c.CustomerName, c.Age, o.City1, c.Phone, c.Email, c.Photo };
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
            //GridView1.DataSource = xxx.Customers.ToList();
            //GridView1.DataBind();
        }
        protected void ss_Click(object sender, EventArgs e)
        {
            Image img =new Image();
            
            int ii = Convert.ToInt32(custid.Text);
            var query = from c in xxx.Customers
                        join o in xxx.Cities on c.City equals o.CityID
                        where (c.CustomerID == ii && c.CustomerName.Contains(namecust.Text))
                        select new { c.CustomerName, c.Age, o.City1, c.Phone, c.Email,c.Photo};

            GridView1.DataSource= query.ToList();
            GridView1.DataBind();



        }
    }
}