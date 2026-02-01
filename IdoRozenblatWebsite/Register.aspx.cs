using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    public string stResult = "";

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
        if (Page.IsPostBack)
        {
            name = Request.Form["fname"];
            fav_game = Request.Form["fav_game"];
            message = Request.Form["message"];
            phonenum = Request.Form["phonenumber"];
            phone = Request.Form["phone"];
            password = Request.Form["password"];
            mail = Request.Form["mail"];
            user_type = Request.Form["user_type"];
            updates = Request.Form["updates"];


            string sqlSelect =
                "SELECT * FROM tUsers " +
                "WHERE mail = '" + mail + "' ";

            bool userExists = MyAdoHelper.IsExist(sqlSelect);
            if (userExists)
            {
                stResult = "המשתמש קיים";
            }
            else
            {
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

                Response.Redirect("LogIn.aspx");
            }

        }
    }
}