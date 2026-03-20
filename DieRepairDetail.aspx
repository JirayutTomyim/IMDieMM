<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieRepairDetail.aspx.vb" Inherits="DieMaintenance.DieRepairDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="headRepairDetail">
            Die Repair Detail
        </h2>
     <div>
        <table style="margin:0% 20% 0% 10%; width:80%;text-align:center;">
            <tr>
                <td></td>
            </tr>
            <tr >
                <td style="text-align:right"> Customer :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextCustomer" placeholder="ระบุชื่อลูกค้า" runat="server" TabIndex="1"></asp:TextBox></td>
                 <td style="text-align:right"> Case Repair Spare :</td>
                <td style="text-align:left"><asp:DropDownList ID="DrpCase" runat="server">
                    <asp:ListItem Value="No Repair"></asp:ListItem>
                    <asp:ListItem Value="Repair"></asp:ListItem>
                    <asp:ListItem Value="Change Spare"></asp:ListItem>
                    </asp:DropDownList></td>
                 <td style="text-align:center"><asp:Button ID="Button1" runat="server" Text="confirm" /></td>
            </tr>
            <tr >
                <td style="text-align:right">Die Name :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextDieName" placeholder="ระบุ Mold_Name" runat="server" TabIndex="2"></asp:TextBox></td>
                 <td style="text-align:right">Spare Name :</td>
                <td style="text-align:left"><asp:DropDownList ID="DrpPartName" runat="server"></asp:DropDownList> </td>
                <td>Cav.</td>
                <td style="text-align:left"><asp:DropDownList ID="DrpCavNo" runat="server"></asp:DropDownList> </td>
                <td>Insert No</td>
                <td style="text-align:left"><asp:DropDownList ID="DrpInsertNo" runat="server"></asp:DropDownList> </td>
            </tr>  
            <tr>
                <td style="text-align:right"> Die No. :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextDieNo" placeholder="ระบุ Mold_No" runat="server" TabIndex="3"></asp:TextBox></td>
               <td style="text-align:right">Repair Details :</td>
                <td style="text-align:left;"><asp:TextBox ID="TextRepairDetail" placeholder="ระบุรายละเอียดการแก้ปัญหา"  runat="server" TextMode="MultiLine" style="width:90%;"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align:right">Part Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextPartName" placeholder="ระบุ Part_Name" runat="server" TabIndex="4"></asp:TextBox></td>
                <td style="text-align:right"> Name : </td>
                <td style="text-align:left;"><asp:TextBox ID="TextEmpNo" placeholder="ระบุ Emp No." runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td style="text-align:right">Drawing No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDrawingNo" placeholder="ระบุ Drawing_No" runat="server" TabIndex="5"></asp:TextBox></td>   
                 <td colspan="2"> <asp:FileUpload ID="FileUpload" runat="server" />
                    <asp:Button ID="BUpload" runat="server" Text="UpLoad" /></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="btnClear" runat="server" Text="Clear" class="Butconfrim"/></td>
                <%--<td colspan="2" ><asp:Button ID="btnCheck" runat="server" Text="Check" class="Butconfrim"/></td>--%>
                <td colspan="2"><asp:Button ID="bntOk" runat="server" Text="Ok" class="Butconfrim"/></td>
                 <td colspan="2"><asp:Button ID="serch" runat="server" Text="Drawing" class="Butconfrim"/></td>
            </tr>
        </table>
    </div>
    <div style="margin:0% 20% 0% 20%; width:60%;text-align:center;">
            <asp:GridView ID="GridRePairHistory" runat="server" class="customers"></asp:GridView>
    </div>
    <div style="margin-top:5%;text-align:center;" >

       <asp:Image ID="ImBef" runat="Server" CssClass="rounded img-fluid" style="height:24vh;" />
    </div>

</asp:Content>
