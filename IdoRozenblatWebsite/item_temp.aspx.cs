using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class item_temp : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack)
        {
            string gamerNickname = Request.Form["gamerNickname"];
            string gameName = Request.Form["gameName"];
            string totalWins = Request.Form["totalWins"];
            string timePlayed = Request.Form["timePlayed"];
            string review = Request.Form["review"];

            string sqlInsert =
                "INSERT INTO tGames (gamerNickname, gameName, totalWins, timePlayed, review) VALUES (" +
                "N'" + gamerNickname + "'," +
                "N'" + gameName + "'," +
                totalWins + "," +
                timePlayed + "," +
                "N'" + review + "'" +
                ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            st = "DONE";
        }
    }
}