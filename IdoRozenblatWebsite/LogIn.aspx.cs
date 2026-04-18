using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page4 : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string mail = Request.Form["mail"];
            string password = Request.Form["password"];

            if (mail == "maneger12@manger.com" && password == "meneger676911")
            {
                Session["username"] = "מנהל";
                Response.Redirect("Manager.aspx");
            }
            else
            {
                Session["username"] = "רשום";
                string sql =
                    "SELECT * FROM tUsers " +
                    "WHERE mail = '" + mail + "' " +
                    "AND password = '" + password + "'";

                bool userExists = MyAdoHelper.IsExist(sql);
                
                if (!userExists)
                {
                    Session["username"] = "אורח";
                    st = "אימייל או סיסמה שגויים";
                }
                else
                {
                Response.Redirect("Home.aspx");
                }
            }

        }
    }
}