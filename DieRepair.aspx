<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieRepair.aspx.vb" Inherits="DieMaintenance.DieRepair" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <h2 class="headDie">
            Die Repair
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
               <td style="text-align:right"> Reason Repair :</td>
                <td style="text-align:left"><asp:DropDownList ID="drpReasonRepair" runat="server">
                             <asp:ListItem>Repair</asp:ListItem>
                             <asp:ListItem>Service 100%</asp:ListItem>
                             <asp:ListItem>Check and Clean</asp:ListItem>
                    </asp:DropDownList></td>
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
                   <asp:Button ID="BtnPlan" runat="server" Text="Update Target Time" style="width:50%;" class="Butconfrim"/>
                </td>
                <td colspan="2" style="text-align:center;">
                       <%-- <asp:FileUpload ID="FileUpload" runat="server" />
                    <asp:Button ID="BUpload" runat="server" Text="UpLoad" />--%>
                    <div><asp:Button ID="bntOK" runat="server" Text="OK"  class="Butconfrim"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim"/></div>
                </td>
            </tr>
            <tr>
                <td><br /></td>
                
            </tr>
        </table>

    <div style="margin:0% 20% 0% 20%; width:60%;text-align:center;" class="customers" >
        <asp:GridView ID="GridShowShot" runat="server" Width="100%"></asp:GridView>
    </div>
   <div style="margin-top:5%;text-align:center;" >
       <asp:Image ID="ImBef" runat="Server" CssClass="rounded img-fluid" style="height:24vh;" />
    </div>
         <%--<%--<%--<div style="text-align:center">
<input id="btuTarget" type="button" value="Update Target Time" onclick="myFunction4()" class="btnProblem"/></div>
         <table id="DieTarget"style="margin:0% 20% 0% 30%; width:40%;" >
             <tr>
                 <td style="text-align:right;">Time Start :</td>
                 <td style="width:5%;"><asp:TextBox ID="TextDate2" runat="server" TextMode="Date">DD/MM/YY</asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList> : <asp:DropDownList ID="text" runat="server">
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList></td>
             </tr>
             <tr>
                 <%--<td colspan="2" style="text-align:center;"><asp:Button ID="BtnPlan" runat="server" Text="Update Target Time" class="Butconfrim"/></td>--%>
             <%--</tr>
            </table>--%>
 <%--<script>
     function myFunction4() {
         var x = document.getElementById("DieTarget");

         if (x.style.display === "none") {
             x.style.display = "block";
         } else {
             x.style.display = "none";
         }
     }
</script>--%>

        <div style="text-align:center;">
            <img src="Images/Repair.gif" />
        </div>
</asp:Content>
