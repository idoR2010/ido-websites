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
     <select name="phone" id="phone" required>
        <option value="050">050</option>
        <option value="052">052</option>
        <option value="053">053</option>
        <option value="054">054</option>
        <option value="055">055</option>
        <option value="058">058</option>
         </select>
     <br/>
         סיסמה
         <input type="password" id="password" name="password" placeholder="password" required>
         <br/>
     <label for="user_type">איזה סוג משתמש אתה:</label>
     <select id="user_type" name="user_type" required>
     <option value="שחקן">שחקן</option>
     <option value="צופה">צופה</option>
       </select>

     <p>משחק מועדף:</p>
     <input type="radio" id="2k" name="fav_game" value="2k">
     <label for="2k">2k</label><br/>
     <input type="radio" id="fifa" name="fav_game" value="fifa">
     <label for="fifa">fifa</label><br/>
     <input type="radio" id="fortnite" name="fav_game" value="fortnite">
     <label for="fortnite">fortnite</label><br/>
     <input type="radio" id="UFC" name="fav_game" value="UFC">
     <label for="UFC">UFC</label><br/>
     <input type="radio" id="madden" name="fav_game" value="madden">
     <label for="madden">madden</label><br/>
     <input type="radio" id="other" name="fav_game" value="אחר">
     <label for="other">אחר</label>

     <br/>

     <p>פרט על עצמך</p>
     <textarea name="message" rows="6" cols="20"></textarea>

     <br/>

     <p>האם מסכים לקבל עדכונים?</p>
     <input type="radio" id="yes" name="updates" value="yes">
     <label for="yes">כן</label><br/>
     <input type="radio" id="no" name="updates" value="no">
     <label for="no">לא</label>

     <br/>
     <input type="submit" value="שלח">
        </form>
     <hr/>


    <%= stResult %>

</asp:Content>