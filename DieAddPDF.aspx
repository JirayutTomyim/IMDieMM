<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieAddPDF.aspx.vb" Inherits="DieMaintenance.DieAddPDF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3 class="headDie"> Add Insert PDF</h3>
    </div>
    <table style="margin:0% 20% 0% 20%; width:70%;">
            <tr>
                <td><br /></td>
            </tr>
            <tr >
                <td style="text-align:right"> Customer :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextCustomer" placeholder="ระบุชื่อลูกค้า" runat="server" TabIndex="1"></asp:TextBox></td>
                <td style="text-align:right"> Part Name :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextSpareName" runat="server" TabIndex="6"></asp:TextBox></td>
                <td style="text-align:center;"><asp:Button ID="bntAddNew" runat="server" Text="Add New" class="Butconfrim"/></td>
            </tr>
            <tr >
                <td style="text-align:right"> Die Name :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextDieName" placeholder="ระบุ Die_Name" runat="server" TabIndex="2"></asp:TextBox></td>
                <td style="text-align:right">Cavity No. :</td>
                <td style="text-align:left"><asp:FileUpload ID="FilePdfUpload" runat="server" /></td>
               <%-- <td style="text-align:center;" ><asp:Button ID="bntEdit" runat="server" Text="Edit" class="Butconfrim"/></td>--%>
            </tr>  
            <tr>
                <td style="text-align:right">Die No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No" runat="server" TabIndex="3"></asp:TextBox></td>
                <td style="text-align:right">Insert No. :</td>
                <td style="text-align:left"></td>
                <td style="text-align:center;"><asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim"/></td>
            </tr>
            <tr>
                <td style="text-align:right">Part Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextPartName" placeholder="ระบุ Part_Name" runat="server" TabIndex="4"></asp:TextBox></td>
                 <td style="text-align:right">PartStatus :</td>
              <td></td>
                <td style="text-align:center;"><asp:Button ID="btnSearch" runat="server" Text="Search" class="Butconfrim"/></td>
            </tr>
             <tr>
                <td style="text-align:right">Drawing No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDrawingNo" placeholder="ระบุ Drawing_No" runat="server" TabIndex="5"></asp:TextBox></td>
                 <td></td>
                <td><asp:TextBox ID="TextPartID" runat="server" Style="display:none"></asp:TextBox></td>
                <td><asp:Button ID="btngetData" runat="server" Text="Get" CssClass="button" Style="visibility:hidden " /></td>
             
            </tr>  
            <tr style="text-align:center;">
                <td colspan="2"></td>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
</asp:Content>
