using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _202_UserMaintenance
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //check if logged in or not
            /* if (User.Identity.IsAuthenticated)
             {
                 //Change navbars to show logout button instead of login
                 navLoggedOut.Style["display"] = "none";
                 navLoggedIn.Style["display"] = "flex";
             }
             else
             {
                 //if not logged in change navbar to login/register button
                 navLoggedOut.Style["display"] = "flex";
                 navLoggedIn.Style["display"] = "none";
             }


             //Load Car details.
             var db = new databaseConnDataContext();
             var id = Request.QueryString["id"];
             if (Request.QueryString["id"] == null)
             {
                 Response.Redirect("Order.aspx");
             }
             var veeks = (from a in db.cars
                          where a.car_id == Convert.ToInt32(id)
                          select a).Single();

             pdeets.InnerHtml = string.Format(@"<div class=""carImg"">
                     <p class=""makeImg"">{0}</p>
                     <img width = ""900px"" src= ""images/{1}"" /></div >
                 <div class=""carDeets"">
                     <div class=""left"">
                     <div id = ""make"" > {0}</div>
                     <div id = ""model"" > {2} - <span id = ""year"" > {3} </span ></div >

                         <div id=""description"">{4}</div>
                     </div>
                     <div class=""Right"">
                             <div id = ""price"" >${5}.00</div>
                             <a href=""checkout.aspx?id={6}"" style=""color:white;text-decoration:none;""><div id = ""reserveBtn"" >Reserve</div></a>
                             <div id = ""reserveBtnTxt""> Reserving a vehicle requires a 1% deposit.</div>
                     </div>   
                 </div>", veeks.make, veeks.img, veeks.model, veeks.caryear, veeks.cardesc, veeks.currentvalue, veeks.car_id);
         }*/
        }
    }
}