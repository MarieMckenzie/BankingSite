using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace _202_UserMaintenance
{
  
  
    public partial class Order : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            //Request.QueryString["id"] != null ? Session["cart"] += Request.QueryString["id"] : null;
            //string productId = Request.QueryString["id"] != null ? Session["cart"] += Request.QueryString["id"] : null;  //Request.QueryString["productId"];

            //string productId = productId.Text; // + " " + Request.QueryString["id".ToString()];
            string productId = Request.QueryString["id"];
            string imageid = imageid.Text;
            string price = price.Text;
            price = Session["price"];


            viewProduct(imageid, productId, price);

        }


        public void viewProduct(string imageid, string productId, string price)
        {

            SqlCommand cmd = new SqlCommand("storeProductView", conn);
            cmd.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cImageid", imageid);
            cmd.Parameters.AddWithValue("@cProductId", productId);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.ExceptionQquery();

            
            //open.conn();
            //cmd.ExecuteNonQuery();
        }


    }


}

