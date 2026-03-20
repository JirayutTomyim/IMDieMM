<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DieLogin.aspx.vb" Inherits="DieMaintenance.DieLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Die Maintenance Website</title>
    <link href="~/MasterStyle/MasterStyleIM.css" rel="stylesheet" />
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            <h1 class="header">&nbsp;Die Maintenance LogIn</h1>
        </div>
        <div>
            <br />
            <table style="margin-left: 30%;margin-right: 30%;margin-top: 10%;padding-top:3%;width:40%;">
                <tr>
                    <td class="c1" style="font-size:150%;">Username :</td>
                    <td >
                        <asp:TextBox ID="TextUsername" runat="server" placeholder="โปรดใส่ Username" CssClass="c2" style="font-size:100%;"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="c1" style="font-size:150%;">Password :</td>
                    <td>
            <asp:TextBox ID="TextPassword" runat="server" placeholder="โปรดใส่ Password" TextMode="Password" CssClass="c2" style="font-size:100%;"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="button" style="text-align:center;">
            <asp:Button ID="btnLogin" runat="server" Text="Login" style="width:20%; margin-bottom:5%;color:black"  class="Butconfrim"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRegister" runat="server" Text="Regist" style="width:20%;margin-top:5%;margin-bottom:5%;color:black" class="Butconfrim"/>
          
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
