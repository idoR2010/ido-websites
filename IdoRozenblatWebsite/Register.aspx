<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script language="javascript">
        function checkAll() {
            fnErr.innerHTML = "";
            lnErr.innerHTML = "";
            mailErr.innerHTML = "";
            phonenumErr.innerHTML = "";
            passwordErr.innerHTML = "";

            f = true;

            f = checkFirstName() && f;
            f = checkLastName() && f;
            f = checkEmail() && f;
            f = checkPhoneNum() && f;
            f = checkPassword() && f;

            return f;
        }

        function checkFirstName() {
            name = document.getElementById("firstname").value;

            let validName = /^[A-Za-zא-ת]+$/;
            if (!validName.test(name)) {
                fnErr.innerHTML = "השם הפרטי יכול להכיל אותיות בלבד";
                return false;
            } else {
                if (name.length < 2 || name.length > 30) {
                    fnErr.innerHTML = "אורך השם הפרטי לא תקין";
                    return false;
                }
                return true;
            }
        }

        function checkLastName() {
            lastname = document.getElementById("lastname").value;

            let validLastName = /^[A-Za-zא-ת]+$/;
            if (!validLastName.test(lastname)) {
                lnErr.innerHTML = "שם המשפחה יכול להכיל אותיות בלבד";
                return false;
            } else {
                if (lastname.length < 2 || lastname.length > 30) {
                    lnErr.innerHTML = "אורך שם המשפחה לא תקין";
                    return false;
                }
                return true;
            }
        }

        function checkEmail() {
            mail = document.getElementById("mail").value;

            if (mail.length < 5 || mail.length > 25) {
                mailErr.innerHTML = "אורך מייל לא תקין";
                return false;
            }
            return true;
        }
        function checkPhoneNum() {
            phonenum = document.getElementById("phonenum").value;

            if (phonenum.length != 7) {
                phonenumErr.innerHTML = "אורך מספר טלפון לא תקין";
                return false;
            }
            return true;
        }
        function checkPassword() {
            password = document.getElementById("password").value;

            if (password.length < 4 || password.length > 16) {
                passwordErr.innerHTML = "אורך סיסמה לא תקינה";
                return false;
            }
            return true;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <h3>הרשמה</h3>

    <form runat="server" method="post" onsubmit="return checkAll();">

        <table border="1" class="page">
            <tr>
                <td>
                    <label for="firstname">שם פרטי:</label></td>
                <td>
                    <input type="text" id="firstname" name="firstname" placeholder="firstname" required></td>
                <td id="fnErr"></td>
            </tr>

            <tr>
                <td>
                    <label for="lastname">שם משפחה:</label></td>
                <td>
                    <input type="text" id="lastname" name="lastname" placeholder="lastname" required></td>
                <td id="lnErr"></td>
            </tr>

            <tr>
                <td>
                    <label for="mail">מייל:</label></td>
                <td>
                    <input type="text" id="mail" name="mail" placeholder="mail" required></td>
                <td id="mailErr"></td>
            </tr>

            <tr>
                <td>
                    <label for="phonenum">מספר טלפון:</label></td>
                <td>
                    <select name="phone" id="phone" required>
                        <option value="050">050</option>
                        <option value="052">052</option>
                        <option value="053">053</option>
                        <option value="054">054</option>
                        <option value="055">055</option>
                        <option value="058">058</option>
                    </select>
                    <input type="tel" 
           id="phonenum" 
           name="phonenumber" 
           placeholder="7 ספרות, למשל: 1234567" 
           required >
                </td>
                <td id="phonenumErr"></td>
            </tr>

            <tr>
                <td>
                    <label for="password">סיסמה:</label></td>
                <td>
                    <input type="password" id="password" name="password" placeholder="password" required></td>
                <td id="passwordErr"></td>
            </tr>

            <tr>
                <td>
                    <label for="user_type">איזה סוג משתמש אתה:</label></td>
                <td>
                    <select id="user_type" name="user_type" required>
                        <option value="שחקן">שחקן</option>
                        <option value="צופה">צופה</option>
                    </select>
                </td>
                <td id="ddddddd"></td>
            </tr>
            <tr>
                <td>משחק מועדף:</td>
                <td>
                    <input type="checkbox" id="2k" name="fav_game" value="2k">
                    <label for="2k">2k</label><br>

                    <input type="checkbox" id="fifa" name="fav_game" value="fifa">
                    <label for="fifa">fifa</label><br>

                    <input type="checkbox" id="fortnite" name="fav_game" value="fortnite">
                    <label for="fortnite">fortnite</label><br>

                    <input type="checkbox" id="UFC" name="fav_game" value="UFC">
                    <label for="UFC">UFC</label><br>

                    <input type="checkbox" id="madden" name="fav_game" value="madden">
                    <label for="madden">madden</label><br>

                    <input type="checkbox" id="other" name="fav_game" value="אחר">
                    <label for="other">אחר</label>
                </td>
                <td id="cccccc"></td>
            </tr>

            <tr>
                <td>
                    <label for="message">פרט על עצמך:</label></td>
                <td>
                    <textarea id="message" name="message" rows="6" cols="20"></textarea></td>
                <td id="AAAAAAAAAAAAaa"></td>
            </tr>

            <tr>
                <td>האם מסכים לקבל עדכונים?</td>
                <td>
                    <input type="radio" id="yes" name="updates" value="yes">
                    <label for="yes">כן</label><br>

                    <input type="radio" id="no" name="updates" value="no">
                    <label for="no">לא</label>
                </td>
                <td id="bbbbbbb"></td>
            </tr>
            <tr>
                <td colspan="3">
                    <input type="submit" value="שלח">
                </td>
            </tr>
    </table>
    </form>
     <hr />


    <%= stResult %>
</asp:Content>
