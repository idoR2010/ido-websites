<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h3>הרשמה</h3>
    <form runat="server" method="post">
     <label for="fname">שם:</label>
     <input type="text" id="fname" name="fname" placeholder="firstname" required>
     <br/>
     מייל:
        <input type="text" id="mail" name="mail" placeholder="mail" required>
        <br/>
        מספר טלפון
     <input type="text" id="phonenum" name="phonenumber" placeholder="phonenumber" required>
     <select name="phone" id="tel" required>
        <option value="050">050</option>
        <option value="052">052</option>
        <option value="053">053</option>
        <option value="054">054</option>
        <option value="055">055</option>
        <option value="058">058</option>
         </select>
     <br/>
         סיסמה
         <input type="text" id="password" name="password" placeholder="password">
         <br/>
     <label for="user_type">איזה סוג משתמש אתה:</label>
     <select id="user_type" name="user_type" required>
     <option value="שחקן">שחקן</option>
     <option value="צופה">צופה</option>
       </select>

     <p>משחק מעודף:</p>
     <input type="radio" id="2k" name="fav_game" value="2k">
     <label for="2k">2k</label><br/>
     <input type="radio" id="fifa" name="fav_game" value="fifa">
     <label for="fifa">fifa</label><br/>
     <input type="radio" id="אחר" name="fav_game" value="אחר">
     <label for="אחר">אחר</label>
     <br/>
     <p>פרט על עצמך</p>
     <textarea name="message" rows="6" cols="20"></textarea>
     <br/>
     <input type="submit" value="שלח">
        </form>
     <hr/>

    <%=name %>
    <%= phone %>
    <%= password %>
    <%=mail %>
    <%=age%>
    <%= user_type %>
    <%= fav_game %>
    <%= message %>

</asp:Content>