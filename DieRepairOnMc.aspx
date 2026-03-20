<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieRepairOnMc.aspx.vb" Inherits="DieMaintenance.DieRepairOnMc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="headDie">
            Die Repair On MC
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
                <td style="text-align:right">Repair Name1 :</td>
                <td style="text-align:left"><asp:TextBox ID="TextRepairName1" placeholder="ระบุ Repair_Name" runat="server" TabIndex="6"></asp:TextBox></td>
            </tr>  
            <tr>
                <td style="text-align:right"># :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No" runat="server" TabIndex="3"></asp:TextBox></td>
                <td style="text-align:right">Repair Name2 :</td>
                <td style="text-align:left"><asp:TextBox ID="TextRepairName2" placeholder="ระบุ Repair_Name" runat="server" TabIndex="7"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align:right">Part Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextPartName" placeholder="ระบุ Part_Name" runat="server" TabIndex="4"></asp:TextBox></td>
               <td style="text-align:right"> Problem :</td>
                <td style="text-align:left"><asp:TextBox ID="TextProblem" placeholder="ระบุ Problem record" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
             <tr>
                 <td style="text-align:right">Drawing No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDrawingNo" placeholder="ระบุ Drawing_No" runat="server" TabIndex="5"></asp:TextBox></td>
                 <td style="text-align:right">Target Time :</td>
                 <td style="width:5%;"><asp:TextBox ID="TextDate" runat="server" TextMode="Date">DD/MM/YY</asp:TextBox>
                    <asp:DropDownList ID="TextTimeHr" runat="server"></asp:DropDownList> : <asp:DropDownList ID="TextTimeMin" runat="server">
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList></td>
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
<%--<asp:Button ID="Button1" runat="server" Text="Test" />--%>
    <div style="margin:0% 20% 0% 20%; width:60%;text-align:center;" class="customers" >
        <asp:GridView ID="GridShowShot" runat="server" Width="100%"></asp:GridView>
    </div>
        <div style="text-align:center;">
            <img src="Images/Repair.gif" />
        </div>
</asp:Content>
