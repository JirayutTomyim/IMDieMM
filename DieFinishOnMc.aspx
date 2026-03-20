<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieFinishOnMc.aspx.vb" Inherits="DieMaintenance.DieFinishOnMc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="headDie">
            Die Finish on MC
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
                <td style="text-align:left"> <asp:TextBox ID="TextDieName" placeholder="ระบุ Die_Name" runat="server" TabIndex="2"></asp:TextBox></td>
                <td style="text-align:right">Finish Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextName" placeholder="ระบุ Finish_Name" runat="server" TabIndex="6"></asp:TextBox></td>
                
            </tr>  
            <tr>
                <td style="text-align:right"># :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No" runat="server" TabIndex="3"></asp:TextBox></td>
               <%-- <td style="text-align:right">Location :</td>
                <td style="text-align:left"><asp:TextBox ID="TextLocation" placeholder="ระบุ Die Location" runat="server" TabIndex="7"></asp:TextBox></td>--%>
                
            </tr>
            <tr>
                <td style="text-align:right">Part Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextPartName" placeholder="ระบุ Part_Name" runat="server" TabIndex="4"></asp:TextBox></td>
                <td style="text-align:right">Problem :</td>
            <td style="text-align:left;"><asp:TextBox ID="TextRepairDetail" placeholder="ระบุรายละเอียดการแก้ปัญหา"  runat="server" TextMode="MultiLine" style="width:90%;"></asp:TextBox></td>
            </tr>
             <tr>
                 <td style="text-align:right">Drawing No. :</td>
                 <td style="text-align:left"><asp:TextBox ID="TextDrawingNo" placeholder="ระบุ Drawing_No" runat="server" TabIndex="5"></asp:TextBox></td>
                <%-- <td style="text-align:right">Status :</td>--%>
                 <%--<td style="text-align:left"><asp:DropDownList ID="DropStatus" runat="server">
                     <asp:ListItem>StandBy</asp:ListItem>
                     <asp:ListItem>Running</asp:ListItem>
                     </asp:DropDownList></td>--%>
                
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
                    <asp:Button ID="bntOK" runat="server" Text="OK" class="Butconfrim" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim"/>
                </td>
            </tr>
            <tr>
                <td><br /></td>
            </tr>
        </table>
 
        <div style="text-align:center;">
            <img src="Images/Finish.gif" />
        </div>
</asp:Content>
