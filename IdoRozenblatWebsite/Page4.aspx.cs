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

            string sql =
                "SELECT * FROM tUsers " +
                "WHERE mail = '" + mail + "' " +
                "AND password = '" + password + "'";

            bool userExists = MyAdoHelper.IsExist(sql);

            if (!userExists)
            {
                st = "אימייל או סיסמה שגויים";
            }
            else
            {
                st = "משתמש רשום";
            }
        }
    }
}