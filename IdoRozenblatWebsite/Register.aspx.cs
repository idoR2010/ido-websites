using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    public string st = "";

    public string name;
    public string fav_game;
    public string phonenum;
    public string message;
    public string phone;
    public string password;
    public string mail;
    public string user_type;
    public string updates;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) {
        name = "name:" + Request.Form["fname"];
        fav_game = "fav_game:" + Request.Form["fav_game"];
        message = "message:" + Request.Form["message"];
        phonenum = "phonenum:" + Request.Form["phonenumber"];
        phone = "phone:" + Request.Form["phone"];
        password = "password:" + Request.Form["password"];
        mail = "mail:" + Request.Form["mail"];
        user_type = "user_type:" + Request.Form["user_type"];
        updates = "updates:" + Request.Form["updates"];

            string sqlInsert =
                    "INSERT INTO tUsers VALUES (" +
                    "N'" + name + "'," +
                    "N'" + mail + "'," +
                    "N'" + password + "'," +
                    phone + "," +
                    phonenum + "," +
                    "N'" + user_type + "'," +
                    "N'" + fav_game + "'," +
                    "N'" + message + "'," +
                    "N'" + updates + "'" +
                    ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            st = "נרשמת בהצלחה!";

        }
    }
}