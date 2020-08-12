using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _202_UserMaintenance
{
    public partial class Order : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
           //function to decrement qty
           // take value from InCart
        
        }
       
       
     

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Order.aspx?cat=MEN");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Order.aspx?cat=WOMEN");
        }
    }
}
