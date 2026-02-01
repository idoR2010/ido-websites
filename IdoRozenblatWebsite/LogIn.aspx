<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="Page4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>login into your acount</h3>
    <form runat="server" method="post">
         מייל
    <input type="text" id="mail" name="mail" placeholder="mail" required>
    <br/>
         סיסמה
    <input type="password" id="password" name="password" placeholder="password" required>
    <br/>
    <input type="submit" value="שלח">
    </form>
    <%=st %>
</asp:Content>

