using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search1 : System.Web.UI.Page
{
    public string str = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string gamerNickname = Request.Form["gamerNickname"];
            string gameName = Request.Form["gameName"];
            string totalWins = Request.Form["totalWins"];
            string timePlayed = Request.Form["timePlayed"];
            string review = Request.Form["review"];

            string sql = "";

            // מצב 1: אם הכל ריק - מציגים את כל הטבלה בלי סינונים
            if (string.IsNullOrEmpty(gamerNickname) && string.IsNullOrEmpty(gameName) &&
                string.IsNullOrEmpty(totalWins) && string.IsNullOrEmpty(timePlayed) && string.IsNullOrEmpty(review))
            {
                sql = "SELECT * FROM tGames;";

            }
            // מצב 2: אם המשתמש מילא שדה אחד או יותר - מחפשים רק אותם!
            else
            {
                // אם השדה ריק, נשים ערך שלא קיים כדי שה-OR יתעלם ממנו ולא יציג את כל הטבלה
                gamerNickname = string.IsNullOrEmpty(gamerNickname) ? "NOT_FOUND_XYZ" : gamerNickname;
                gameName = string.IsNullOrEmpty(gameName) ? "NOT_FOUND_XYZ" : gameName;
                review = string.IsNullOrEmpty(review) ? "NOT_FOUND_XYZ" : review;

                totalWins = string.IsNullOrEmpty(totalWins) ? "-99999" : totalWins;
                timePlayed = string.IsNullOrEmpty(timePlayed) ? "-99999" : timePlayed;

                sql = "SELECT * FROM tGames WHERE " +
            "gamerNickname LIKE N'%" + gamerNickname + "%' OR " +
            "gameName LIKE N'%" + gameName + "%' OR " +
            "totalWins =" + totalWins + " OR " +
            "timePlayed =" + timePlayed + " OR " +
            "review LIKE N'%" + review + "%';";

            }

            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count == 0)
            {
                str = "אין נתונים";
            }
            else
            {
                str += "<table border ='1'>";
                str += "<tr>";
                str += "<td>מספר זהות המשתמש</td>";
                str += "<td>שם המשתמש</td>";
                str += "<td>שם המשחק</td>";
                str += "<td>מספר הנצחונות/הרמה</td>";
                str += "<td>כמה נסיון  במשחק (מתי התחיל לשחק)</td>";
                str += "<td>ביקורת על המשחק</td>";
                str += "</tr>";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    str += "<tr>";

                    for (int k = 0; k < dt.Columns.Count; k++)
                    {
                        str += "<td>" + dt.Rows[i][k] + "</td>";
                    }
                    str += "</tr>";
                }
                str += "</table>";
            }
        }
    }
}