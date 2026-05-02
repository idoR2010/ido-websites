using System;
using System.Collections.Generic;
using System.Data;
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
                Session["nihul"] = "ok";
                Response.Redirect("Manager.aspx");
            }
            else
            {
                
                string sql =
                    "SELECT * FROM tUsers " +
                    "WHERE mail = '" + mail + "' " +
                    "AND password = '" + password + "'";

                //bool userExists = MyAdoHelper.IsExist(sql);
                DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

                if (dt.Rows.Count == 0)
                //if (!userExists)
                {
                    Session["username"] = "אורח";
                    st = "אימייל או סיסמה שגויים";
                }
                else
                {
                    Session["username"] = dt.Rows[0]["firstname"];
                    Session["user"] = "ok";
                    Response.Redirect("Home.aspx");
                }
            }

        }
    }
}