using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page2_aspx : System.Web.UI.Page
{
    public string name;
    public string age;
    public string fav_team;
    protected void Page_Load(object sender, EventArgs e)
    {
        name = "name" + Request.Form(text);
        age = "age" + Request.Form(age);
        fav_team = "fav_team" + Request.Form(radio);
    }
}