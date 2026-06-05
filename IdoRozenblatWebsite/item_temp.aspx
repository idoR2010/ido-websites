<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="item_temp.aspx.cs" Inherits="item_temp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language ="javascript">
        function checkAll() {
            totalWinsErr.innerHTML = "";
            timePlayedsErr.innerHTML = "";

            f = true;

            f = checkTotalWins() && f;
            f = checkTimePlayed() && f;

            return f;
        }
        
        function checkTotalWins() {
            totalWins = document.getElementById("totalWins").value;
            if (totalWins < 0 || totalWins > 999999) { 
            totalWinsErr.innerHTML = "כמות ניצחונות לא תקנית";
                return false;
            }
            return true;
        }
        function checkTimePlayed() { 
            timePlayed = document.getElementById("timePlayed").value;
            if (timePlayed < 0 || timePlayed > 99) { 
            timePlayedsErr.innerHTML = "כמות זמן משחק לא תקין";
            return false;
            }
        return true;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>ביקורות על משחקים</h3>
    <form runat="server" method="post" onsubmit="return checkAll();">

<table border="1" class="page">
    
    <tr>
        <td>
     <label for="fname">שם המשתמש של השחקן:</label> </td>
        <td>
     <input type="text" id="gamerNickname" name="gamerNickname" placeholder="nickname" required> </td>
    </tr>

    <tr>
        <td>
     <label for="fname">שם המשחק שאתה משחק:</label> </td>
       <td>
     <input type="text" id="gameName" name="gameName" placeholder="game name" required> </td>  
    </tr>

    <tr>
        <td>
        מספר הנצחונות/הרמה שלך
        </td>
        <td>
     <input type="number" id="totalWins" name="totalWins" placeholder="totalWins" value="0" required>
            </td>
        <td id="totalWinsErr"></td>
     </tr>
        
    <tr>
        <td>
        כמה נסיון יש לך במשחק (מתי התחלת לשחק)
            </td>
        <td>
        <input type="number" id="timePlayed" name="timePlayed" value="0" step="0.5" required> </td>
              <td id="timePlayedsErr"></td>
        </tr>

    <tr>
        <td>
    <p>תכתוב את הביקורת שלך על המשחק</p>
        </td>
        <td>
<textarea name="review" id="review" rows="6" cols="20" required></textarea>
        </td>
    </tr>

    <tr>
        <td colspan="2">
        <input type="submit" value="שלח" onclick="return checkAll()">
        </td>
    </tr>
    </table>
        </form>
</asp:Content>

