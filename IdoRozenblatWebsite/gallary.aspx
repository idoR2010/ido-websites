<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallary.aspx.cs" Inherits="Page3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        /* כאן אנחנו פונים ישירות לקלאס של התא מהמאסטר פייג' */
        td.main {
            background-image: none !important;
            background-color: white !important;
        }
    </style>

    <h3>גלרית תמונת ממשחקים</h3>
    <table class="page">
        <tr>
            <td><p>2k (basketball)</p>
                <img src="https://www.exitlag.com/blog/wp-content/uploads/2025/06/Best-NBA-2K-Game-1.webp" class="gallary"/>
            </td>

            <td>
                <p>fifa (footbal/soccer)</p>
                <img src="https://media.altchar.com/prod/images/940_530/gm-c9b05822-a305-48ef-b470-a514f53b684a-fifaneymar.jpeg" class="gallary" />
            </td>
        </tr>
        
        <tr>
            <td>
                <p>hockey</p>
                <img src="https://static0.polygonimages.com/wordpress/wp-content/uploads/2024/10/NHL25_Utah_Away_Keller_002_WM.png?q=49&fit=crop&w=825&dpr=2" class="gallary" />
            </td>
            <td>
                <p>madden (american footbal)</p>
                <img src="https://www.siliconera.com/wp-content/uploads/2024/08/img-1663.jpeg?resize=1200%2C675" class="gallary" />
            </td>
        </tr>

        <tr>
            <td>
                <p>forza (car racing game)</p>
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyjHv8BbaxkPPVtlfdOy_uR6S8sS9pRytUOQ&s" class="gallary" />
            </td>
            <td>
                <p>ufc (boxing game)</p>
                <img src="https://gamecritics.com/wp-content/uploads/2024/01/ef26136b-5b87-4242-989e-6cb4935fbb31.jpg" class="gallary" />
            </td>
        </tr>
    </table>


</asp:Content>

