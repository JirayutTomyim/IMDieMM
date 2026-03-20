<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieOut.aspx.vb" Inherits="DieMaintenance.DieOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2 class="headDie">
            Mold Setup
        </h2>
        <table style="margin:0% 20% 0% 20%; width:60%;">
            <tr>
                <td><br /></td>
            </tr>
            <tr >
                <td style="text-align:right"> Customer :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextCustomer" placeholder="ระบุชื่อลูกค้า" runat="server" TabIndex="1"></asp:TextBox></td>
                
            </tr>
            <tr >
                <td style="text-align:right"> Die No. :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextDieName" placeholder="ระบุ Die_Name" runat="server" TabIndex="1"></asp:TextBox></td>
                <td style="text-align:right">Setup Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextName" placeholder="ระบุ Setup_Name" runat="server"></asp:TextBox></td>
            </tr>  
            <tr>
                <td style="text-align:right"># :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No" runat="server" TabIndex="2"></asp:TextBox></td>
                <td style="text-align:right">MC Setup :</td>
                <td style="text-align:left"><asp:TextBox ID="TextLocation" placeholder="ระบุ Die Location" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align:right">Part Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextPartName" placeholder="ระบุ Part_Name" runat="server" TabIndex="4"></asp:TextBox></td>
                <td style="text-align:right" class="auto-style1">Cause Setup :</td>
                <td style="text-align:left">
                    <asp:DropDownList ID="drpCauseSetUp" runat="server">
                        <asp:ListItem>Resetup</asp:ListItem>
                        <asp:ListItem>Next setup</asp:ListItem>
                        <asp:ListItem>New Setup</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
             <tr>
                 <td style="text-align:right">Drawing No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDrawingNo" placeholder="ระบุ Drawing_No" runat="server" TabIndex="5"></asp:TextBox></td>
                
            </tr>
            <tr style="text-align:center;">
                <td colspan="2"></td>
                <td colspan="2"></td>
            </tr>
            <tr style="text-align:center;">
                <td colspan="2">
                    <%--<asp:Button ID="bntConfirm" runat="server" Text="Confirm" class="Butconfrim"/>--%>
                </td>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="bntOK" runat="server" Text="OK"  class="Butconfrim"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim"/>
                </td>
            </tr>
            <tr>
                <td><br /></td>
            </tr>
        </table>
        <div style="text-align:center;">
            <img src="Images/Setup.gif" />
        </div>
</asp:Content>
