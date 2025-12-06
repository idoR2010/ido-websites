<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <label for="fname">שם:</label><br>
        <input type="text" id="fname" name="fname" value=""><br>
        </br>
        <label for="lname">מייל:</label><br>
        <input type="text" id="lname" name="lname" value=""><br><br>
        <p>מספר טלפון:</p>
        <input type="tel" id="phone" name="phone" placeholder="123-456-7890" pattern="[0]{1}[5]{1}[0-9]{1}-[0-9]{3}-[0-9]{4}" required><br></br>
        <small> 05(X)-456-7890 :חובה מספר טלפון תקין</small>
        </br>
        <p>גיל:</p>
        <input type="number">
        </br>
</asp:Content>