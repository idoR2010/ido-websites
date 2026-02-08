using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page5 : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM tUsers";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = "אין נתונים";
        }
        else
        {
            st += "<table border ='1'>";
            st += "<tr>";
            st += "<td>שם פרטי</td>";
            st += "<td>שם משפחה</td>";
            st += "<td>מייל</td>";
            st += "<td>מספר טלפון</td>";
            st += "<td>קידומת טלפון</td>";
            st += "<td>סיסמה</td>";
            st += "<td>סוג</td>";
            st += "<td>משחק מועדף</td>";
            st += "<td>הערות</td>";
            st += "<td>עדכונים</td>";
            st += "</tr>";

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";

                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    st += "<td>" + dt.Rows[i][k] + "</td>";
                }
                st += "</tr>";
            }
            st += "</table>";
        }
    }
}