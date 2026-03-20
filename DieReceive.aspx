<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieReceive.aspx.vb" Inherits="DieMaintenance.DieReceive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div>
        <h3 class="headDie"> Add New Die</h3>
    </div>
    <table style="margin:0% 20% 0% 20%; width:70%;">
            <tr>
                <td><br /></td>
            </tr>
            <tr >
                <td style="text-align:right"> Customer :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextCustomer" placeholder="ระบุชื่อลูกค้า" runat="server" TabIndex="1"></asp:TextBox></td>
                <td style="text-align:right"> Maker :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextMaker" placeholder="ระบุ Makee" runat="server" TabIndex="6"></asp:TextBox></td>
                <td style="text-align:center;"><asp:Button ID="bntAddNew" runat="server" Text="Add New" class="Butconfrim"/></td>
            </tr>
            <tr >
                <td style="text-align:right"> Die Name :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextDieName" placeholder="ระบุ Die_Name" runat="server" TabIndex="2"></asp:TextBox></td>
                <td style="text-align:right">Cavity No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextCavity" placeholder="ระบุจำนวน Cavity" runat="server" TabIndex="7"></asp:TextBox></td>
                <td style="text-align:center;" ><asp:Button ID="bntEdit" runat="server" Text="Edit" class="Butconfrim"/></td>
            </tr>  
            <tr>
                <td style="text-align:right">Die No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No" runat="server" TabIndex="3"></asp:TextBox></td>
                <td style="text-align:right">Division :</td>
                <td style="text-align:left"><asp:TextBox ID="TextInvoice" placeholder="ระบุ Invoice" runat="server" TabIndex="8"></asp:TextBox></td>
                <td style="text-align:center;"><asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim"/></td>
            </tr>
            <tr>
                <td style="text-align:right">Part Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextPartName" placeholder="ระบุ Part_Name" runat="server" TabIndex="4"></asp:TextBox></td>
                <td style="text-align:right">Owner :</td>
                <td style="text-align:left"><asp:TextBox ID="TextOwner" placeholder="ระบุ Owner" runat="server" TabIndex="9"></asp:TextBox></td>
                <td style="text-align:center;"><asp:Button ID="btnSearch" runat="server" Text="Search" class="Butconfrim"/></td>
            </tr>
             <tr>
                <td style="text-align:right">Drawing No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDrawingNo" placeholder="ระบุ Drawing_No" runat="server" TabIndex="5"></asp:TextBox></td>
                 <td style="text-align:right">Asset No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextAssetNo" placeholder="ระบุ Asset_No" runat="server" TabIndex="10"></asp:TextBox></td>
                <td><asp:Button ID="btngetData" runat="server" Text="Get" CssClass="button" Style="visibility:hidden " /></td>
             
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td style="text-align:right">Short Control :</td>
               <td style="text-align:left"><asp:TextBox ID="txtShot" placeholder="ระบุ Shot Control" runat="server" TabIndex="10"></asp:TextBox></td>
            </tr>
        <tr>
                <td></td>
                <td></td>
                <td style="text-align:right">Short Before use program :</td>
               <td style="text-align:left"><asp:TextBox ID="txtShotBefore" placeholder="ระบุ Shot total" runat="server" TabIndex="10"></asp:TextBox></td>
            </tr>
        <tr>
            <td></td>
            <td></td>
            <td style="text-align:right">Location condition book :</td>
            <td style="text-align:left"><asp:TextBox ID="txtCondi" placeholder="ระบุที่เก็บ Condition" runat="server" TabIndex="10"></asp:TextBox></td>
        </tr>

         <tr style="text-align:center;">
                <td colspan="4">
            </tr>
         <%--<tr style="text-align:center;">
               <td style="text-align:right">Drawing Insert Name. :</td>
               <td style="text-align:left"><asp:TextBox ID="TextBox2" placeholder="ระบุ Shot total" runat="server" TabIndex="10"></asp:TextBox></td>
                <td colspan="2">File PDF <asp:FileUpload ID="FilePdfUpload" runat="server" /></td>
            </tr>--%>

            <tr style="text-align:center;">
                <td colspan="2">
                </td>
                <td colspan="2">*ไม่สามรถ Edit Die Name,Die No. ได้</td>
            </tr>
        </table>
     <table style="margin:0% 20% 0% 20%; width:70%;">
          <tr style="text-align:center;">
               
               <%--<td style="text-align:left"><asp:TextBox ID="TextDrawingName" placeholder="ระบุชื่อ PDF file" runat="server" TabIndex="10"></asp:TextBox></td>--%>
                <td style="text-align:center;">File PDF <asp:FileUpload ID="FilePdfUpload" runat="server" /></td>
            </tr>
             <tr>
                
                 <td style="text-align:center;"><asp:Button ID="Button1" runat="server" Text="Up Load PDF" />&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Edit PDF" /></td>
             </tr>
         </table>
        <table style="margin:0% 20% 0% 20%; width:70%;height:50px;">
            <tr>
                <th >
                    <asp:FileUpload ID="FileUploadExcel" runat="server" CssClass="textbox" Width="25%" />
                    <asp:DropDownList ID="drpSheet" runat="server" AutoPostBack="True" CssClass="textbox" Width="10%"></asp:DropDownList>
                    <asp:Button ID="btnUpload" runat="server" Text="Confirm" Cssclass="textbox"/>
                    <asp:Button ID="ButtonShowTable" runat="server" Text="Upload" Cssclass="textbox"/>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnDownload" runat="server" Text="Download" Cssclass="textbox"/>
                </th>
            </tr>
        </table>
   <div>
       <asp:GridView ID="GridViewDie" runat="server" class="customers"></asp:GridView>
   </div>
     <script>
        function gridRowOnclick(element) {
            
            if (confirm("Are you sure to Edit Die:" + element.cells[0].innerHTML + " ?")) {
                document.getElementById('<%=TextDieName.ClientID %>').value = element.cells[0].innerHTML;
                document.getElementById('<%=btngetData.ClientID %>').click();
            }
            else {

            }
        }
    </script>
</asp:Content>
