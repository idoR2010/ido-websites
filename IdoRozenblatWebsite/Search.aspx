<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="search1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h3>חפש ביקורות</h3>
       
   <form runat="server" method="post">
<label for="fname">שם המשתמש של השחקן:</label>
<input type="text" id="gamerNickname" name="gamerNickname" placeholder="nickname">
<br/>
<label for="fname">שם המשחק שאתה משחק:</label>
<input type="text" id="gameName" name="gameName" placeholder="game name">
<br/>
       מספר הנצחונות/הרמה שלך
       <input type="number" id="totalWins" name="totalWins" placeholder="totalWins">

       <br />
       כמה נסיון יש לך במשחק (מתי התחלת לשחק)
       <input type="number" id="timePlayed" name="timePlayed">
       
       <br />
       <br />
      
       <input type="submit" value="שלח">
       
   </form>
    <%=str %>

</asp:Content>

