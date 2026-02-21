<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Page5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>מנהל</h3>
    <form runat="server" method="post">
 <label for="fname">שם פרטי:</label>
 <input type="text" id="firstname" name="firstname" placeholder="firstname">
 <br/>
 <label for="fname">שם משפחה:</label>
 <input type="text" id="lastname" name="lastname" placeholder="lastname">
 <br/>
 <input type="submit" value="שלח">

    </form>

    <%=st %>

</asp:Content>

