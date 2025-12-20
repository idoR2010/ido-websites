<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h3>הרשמה</h3>
    <form runat="server" method="post">
     <label for="fname">שם:</label><br>
     <input type="text" id="fname" name="fname" placeholder="firstname">
     </br>
     <p>מספר טלפון:</p>
     <input type="tel" id="phone" name="phone" placeholder="לדוגמה: 054-1234567">
     </br>
     <select name="age" id="age">
         <option value="0">בחר גיל</option>
         <option value="15">15</option>
         <option value="16">16</option>
         <option value="17">17</option>
     </select>
     </br>
     <p>מה הקבוצה האהובה עלייך:</p>
     <input type="radio" id="מכבי" name="fav_team" value="מכבי">
     <label for="מכבי">מכבי</label><br>
     <input type="radio" id="הפועל" name="fav_team" value="הפועל">
     <label for="הפועל">הפועל</label><br>
     <input type="radio" id="אחר" name="fav_team" value="אחר">
     <label for="אחר">אחר</label>
     </br>
     <p>הערות:</p>
     <textarea name="message" rows="6" cols="20"></textarea>
     </br>
     <input type="submit" value="שלח">
        </form>
     </hr>

    <%=name %>
    <%=age%>
    <%= fav_team %>
    <%= message %>
    <%= phone %>

</asp:Content>