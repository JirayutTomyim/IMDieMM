<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="RepPsen.aspx.vb" Inherits="DieMaintenance.RepPsen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h2 class="headDie">
            Die Pressure sensor
        </h2> 
    <table style="margin:0% 20% 0% 20%; width:60%;">
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align:right"> Customer :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextCustomer" placeholder="ระบุชื่อลูกค้า" runat="server" TabIndex="1"></asp:TextBox></td>
                
            </tr>
            <tr >
                <td style="text-align:right"> Die No. :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextDieName" placeholder="ระบุ Die_Name" runat="server" TabIndex="2" ></asp:TextBox></td>
              <%--  <td style="text-align:right">Request Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextName" placeholder="ระบุ Reruest_Name" runat="server" TabIndex="6"></asp:TextBox></td>--%>
            </tr>  
            <tr>
                <td style="text-align:right"># :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No"  runat="server" TabIndex="3"></asp:TextBox></td>
                <%--<td style="text-align:right">Shot(K/Shot) :</td>
                <td style="text-align:left">
                    <asp:TextBox ID="Textshot" runat="server" placeholder="หน่วยเป็น K/shot"></asp:TextBox>
                </td>--%>
            </tr>
            <tr>
                <td style="text-align:right">Part Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextPartName" placeholder="ระบุ Part_Name"  runat="server" TabIndex="4"></asp:TextBox></td>
                <%--<td style="text-align:right"> Reason Repair :</td>
                <td style="text-align:left">
                    <asp:DropDownList ID="drpReasonRepair" runat="server">
                             <asp:ListItem></asp:ListItem>
                             <asp:ListItem>Repair</asp:ListItem>
                             <asp:ListItem>Die Complete</asp:ListItem>
                             <asp:ListItem>ON Target</asp:ListItem>
                             <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>--%>
            </tr>
             <tr>
                 <td style="text-align:right">Drawing No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDrawingNo" placeholder="ระบุ Drawing_No" runat="server" TabIndex="5"></asp:TextBox></td>
          <%--  <td style="text-align:right;">Machine No. :</td>
                 <td style="width:5%;"><asp:TextBox ID="txtMc" runat="server" placeholder="ระบุ MC"></asp:TextBox></td>--%>
             </tr>
            <tr style="text-align:center;">
                
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="Button1" runat="server" Text="Serch"  class="Butconfrim"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim"/>
                    &nbsp;&nbsp;&nbsp;
                </td>
<td colspan="2"></td>
            </tr>
            <tr>
                <%--<td>
                    <br />
                </td>--%>
            </tr>
        </table>
   <%-- <asp:Button ID="Button1" runat="server" Text="test" />--%>

    <div>
       <asp:GridView ID="GridViewDie" runat="server" class="customers"></asp:GridView>
   </div>

</asp:Content>
