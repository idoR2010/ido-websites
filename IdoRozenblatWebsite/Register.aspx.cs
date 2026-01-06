using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    public string name;
    public string age;
    public string fav_game;
    public string message;
    public string phone;
    public string password;
    public string mail;
    public string user_type;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) {
        name = "name:" + Request.Form["fname"];
        age = "age:" + Request.Form["age"];
        fav_game = "fav_food:" + Request.Form["fav_game"];
        message = "message:" + Request.Form["message"];
        phone = "phone:" + Request.Form["phone"];
        password = "password:" + Request.Form["passward"];
        mail = "mail:" + Request.Form["mail"];
        user_type = "user_type:" + Request.Form["user_type"];
        }
    }
}