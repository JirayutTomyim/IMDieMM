<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieChangeLocation.aspx.vb" Inherits="DieMaintenance.DieChangeLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="headDie" style="width:30%">
            Change Location
    </h2>
    <table style="margin:0% 10% 0% 20%; width:70%;">
            <tr>
                <td><br /></td>
            </tr>
            <tr >
                <td style="text-align:right"> Customer :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextCustomer" runat="server" TabIndex="1" placeholder="ระบุชื่อลูกค้า"></asp:TextBox></td>
                <td style="text-align:right">From Location :</td>
                <td style="text-align:left"><asp:TextBox ID="TextFromLocation" placeholder="ระบุ Current_Location" runat="server" TabIndex="6"></asp:TextBox></td>
            </tr>
            <tr >
                <td style="text-align:right"> Die Name :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextDieName" placeholder="ระบุ Die_Name" runat="server" TabIndex="2"></asp:TextBox></td>
                <td style="text-align:right">To Location :</td>
                <td style="text-align:left"><asp:TextBox ID="TextChangeLocation" placeholder="ระบุ Die Location" runat="server" TabIndex="7"></asp:TextBox></td>
                
            </tr>  
            <tr>
                <td style="text-align:right">Die No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No" runat="server" TabIndex="3"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td style="text-align:right">Part Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextPartName" placeholder="ระบุ Part_Name" runat="server" TabIndex="4"></asp:TextBox></td>
                <td style="text-align:right">Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextName" placeholder="ระบุ your_Name" runat="server" TabIndex="8"></asp:TextBox></td>

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
                    <%--<asp:Button ID="bntConfirm" runat="server" Text="Confirm" />--%>
                </td>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="bntOK" runat="server" Text="OK" TabIndex="9"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bntclear" runat="server" Text="Clear" />
                </td>
            </tr>
            <tr>
                <td><br /></td>
            </tr>
        </table>
</asp:Content>
