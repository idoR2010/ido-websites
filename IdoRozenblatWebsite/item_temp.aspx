<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="item_temp.aspx.cs" Inherits="item_temp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>ביקורות על משחקים</h3>
    <form runat="server" method="post">
     <label for="fname">שם המשתמש של השחקן:</label>
     <input type="text" id="gamerNickname" name="gamerNickname" placeholder="nickname" required>
     <br/>
     <label for="fname">שם המשחק שאתה משחק:</label>
     <input type="text" id="gameName" name="gameName" placeholder="game name" required>
     
        <br/>

        מספר הנצחונות/הרמה שלך
     <input type="number" id="totalWins" name="totalWins" placeholder="totalWins" value="0" required>
     <br/>
         
        כמה נסיון יש לך במשחק (מתי התחלת לשחק)
        <input type="number" id="timePlayed" name="timePlayed" required>
           min="0" max="50" value="0" step="0.5">

        <br />

    <p>תכתוב את הביקורת שלך על המשחק</p>
<textarea name="message" rows="6" cols="20"></textarea>
        
        <br />
        <input type="submit" value="שלח">
        </form>

</asp:Content>

