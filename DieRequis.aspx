<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieRequis.aspx.vb" Inherits="DieMaintenance.DieRequis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2 class="headDie">
            PD Request
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
                <td style="text-align:right">Request Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextName" placeholder="ระบุ Reruest_Name" runat="server" TabIndex="6"></asp:TextBox></td>
            </tr>  
            <tr>
                <td style="text-align:right"># :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No"  runat="server" TabIndex="3"></asp:TextBox></td>
                <td style="text-align:right">Shot(K/Shot) :</td>
                <td style="text-align:left">
                    <asp:TextBox ID="Textshot" runat="server" placeholder="หน่วยเป็น K/shot"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right">Part Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextPartName" placeholder="ระบุ Part_Name"  runat="server" TabIndex="4"></asp:TextBox></td>
                <td style="text-align:right"> Reason Repair :</td>
                <td style="text-align:left">
                    <asp:DropDownList ID="drpReasonRepair" runat="server">
                             <asp:ListItem></asp:ListItem>
                             <asp:ListItem>Repair</asp:ListItem>
                             <asp:ListItem>Die Complete</asp:ListItem>
                             <asp:ListItem>ON Target</asp:ListItem>
                             <asp:ListItem>Repair die at machine</asp:ListItem>
                             <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
      <%--  <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>--%>
             <tr>
                 <td style="text-align:right">Drawing No. :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDrawingNo" placeholder="ระบุ Drawing_No" runat="server" TabIndex="5"></asp:TextBox></td>
            <td style="text-align:right;">Machine No. :</td>
                 <td style="width:5%;"><asp:TextBox ID="txtMc" runat="server" placeholder="ระบุ MC"></asp:TextBox></td>
             </tr>
            <tr style="text-align:center;">
                <td colspan="2"></td>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="Button1" runat="server" Text="OK"  class="Butconfrim"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim"/>
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            </table>
   <%-- <asp:Button ID="Button1" runat="server" Text="test" />--%>
      
       
  <div style="text-align:center">
         <input id="btuDieApp" type="button" value="ปัญหาจากการ Apperance" onclick="myFunction1()" class="btnProblem"/>
      </div>
         <table id= "DieApp"style="margin:0% 20% 0% 20%; width:70%;display:none;">
         <tr>
           <td>&nbsp;</td>
             <td class="Center">Appearance<br/>(การตรวจสอบ)</td>
             <td class="Center">Position/Loot part<br/>(ตำแหน่ง)</td>
             <td class="Center">Limit</td>
             <td class="Center">Item</td>
             <td class="Center">Cavity<br/>(ระบุเฉพาะตัวเลข)</td>
         </tr>
         <tr>
             <td class="Center">1</td>
             <td class="drpbox"><asp:DropDownList ID="drpApp1" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpPos1" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpLim1" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="DrpItem1" runat="server"></asp:DropDownList></td>
             <td style="text-align:center"><asp:TextBox ID="TextCav1" runat="server" class="txtBoxRequest"></asp:TextBox></td>
         </tr>
         <tr>
             <td class="Center">2</td>
             <td class="drpbox"><asp:DropDownList ID="drpApp2" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpPos2" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpLim2" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="DrpItem2" runat="server"></asp:DropDownList></td>
             <td style="text-align:center"><asp:TextBox ID="TextCav2" runat="server" class="txtBoxRequest"></asp:TextBox></td>
         </tr>
         <tr>
             <td class="Center">3</td>
             <td class="drpbox"><asp:DropDownList ID="drpApp3" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpPos3" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpLim3" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="DrpItem3" runat="server"></asp:DropDownList></td>
             <td style="text-align:center"><asp:TextBox ID="TextCav3" runat="server" class="txtBoxRequest"></asp:TextBox></td>
         </tr>
             <tr>
                 <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
             </tr>
             </table>

              <script>
                  function myFunction1() {
                      var x = document.getElementById("DieApp");

                      if (x.style.display === "none") {
                          x.style.display = "block";
                      } else {
                          x.style.display = "none";
                      }
                  }
</script>
    <div style="text-align:center">
     <input id="btuSpec" type="button" value="ปัญหาจากการวัด Spec" onclick="myFunction2()" class="btnProblem"/> </div>
     <table id="DieSpec" style="margin:0% 20% 0% 20%; width:60%;display:none;">
         <tr>
          <td>&nbsp</td>
             <td class="Center">Spec<br />(การวัดขนาด)</td>
             <td class="Center">Position/Loot part<br/>(ตำแหน่ง)</td>
             <td class="Center">Limit</td>
             <td class="Center">Item</td>
             <td class="Center">Cavity<br/>(ระบุเฉพาะตัวเลข)</td>
         </tr>
         <tr>
             <td class="Center">1</td>
             <td class="drpbox"><asp:DropDownList ID="drpSpec1" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpPosSpec1" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpLimSpec1" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="DrpItemSpec1" runat="server"></asp:DropDownList></td>
             <td style="text-align:center"><asp:TextBox ID="TextCavSpec1" runat="server" class="txtBoxRequest"></asp:TextBox></td>
         </tr>
         <tr>
             <td class="Center">2</td>
             <td class="drpbox"><asp:DropDownList ID="drpSpec2" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpPosSpec2" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpLimSpec2" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="DrpItemSpec2" runat="server"></asp:DropDownList></td>
             <td style="text-align:center"><asp:TextBox ID="TextCavSpec2" runat="server" class="txtBoxRequest"></asp:TextBox></td>
         </tr>
         <tr>
             <td class="Center">3</td>
             <td class="drpbox"><asp:DropDownList ID="drpSpec3" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpPosSpec3" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="drpLimSpec3" runat="server"></asp:DropDownList></td>
             <td class="drpbox"><asp:DropDownList ID="DrpItemSpec3" runat="server"></asp:DropDownList></td>
             <td style="text-align:center"><asp:TextBox ID="TextCavSpec3" runat="server" class="txtBoxRequest"></asp:TextBox></td>
         </tr>
         <tr>
                 <td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
             </tr>
         </table>
<script>
               function myFunction2() {
                   var x = document.getElementById("DieSpec");

                   if (x.style.display === "none") {
                       x.style.display = "block";
                   } else {
                       x.style.display = "none";
                   }
               }
</script>
    <div style="text-align:center">
<input id="btuOther" type="button" value="ปัญหาอื่นๆ" onclick="myFunction3()" class="btnProblem"/></div>
         <table id="DieOther"style="margin:0% 20% 0% 20%; width:60%;display:none;" >
         <tr>
             <td class="Center">Other Case</td>
             <td class="drpbox">1.<asp:DropDownList ID="DrpOther1" runat="server" style="width:70%"></asp:DropDownList></td>      
              <td style="text-align:right">Remark :</td>
                <td style="text-align:left"><asp:TextBox ID="TextRemark" placeholder="ระบุ Problem record" runat="server" TextMode="MultiLine"></asp:TextBox></td>
         </tr>
             <tr>
                 <td></td>
                 <td class="drpbox">2.<asp:DropDownList ID="DrpOther2" runat="server" style="width:70%"></asp:DropDownList></td>
             </tr>
         </table>
 <script>
        function myFunction3() {
            var x = document.getElementById("DieOther");

            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
</script>
     <div style="text-align:center">
<input id="btuTarget" type="button" value="บันทึกเวลาเริ่มซ่อม" onclick="myFunction4()" class="btnProblem"/></div>
         <table id="DieTarget"style="margin:0% 20% 0% 35%; width:30%;display:none; " >
             <tr>
                 <td style="text-align:right;">Time Start :</td>
                 <td style="width:5%;"><asp:TextBox ID="TextDate" runat="server" TextMode="Date">DD/MM/YY</asp:TextBox>
                    <asp:DropDownList ID="textTimehr" runat="server"></asp:DropDownList> : <asp:DropDownList ID="textTimeMin" runat="server">
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList></td>
             </tr>
             <tr>
                 <td style="text-align:right;">Time Finish :</td>
                 <td style="width:5%;"><asp:TextBox ID="TextDateFi" runat="server" TextMode="Date">DD/MM/YY</asp:TextBox>
                    <asp:DropDownList ID="textTimehrFi" runat="server"></asp:DropDownList> : <asp:DropDownList ID="textTimeMinFi" runat="server">
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList></td>
             </tr>
              <tr>
                <td style="text-align:right">Name Update :</td>
                <td><asp:TextBox ID="TextNameTar" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                 <td colspan="2" style="text-align:center;"><asp:Button ID="BtnPlan" runat="server" Text="Update Plan" class="Butconfrim"/></td>
             </tr>
            </table>
 <script>
     function myFunction4() {
         var x = document.getElementById("DieTarget");

         if (x.style.display === "none") {
             x.style.display = "block";
         } else {
             x.style.display = "none";
         }
     }
</script>


        
                    <%--<asp:Button ID="bntConfirm" runat="server" Text="Confirm" class="Butconfrim"/>--%>
                    <%--<asp:Button ID="test" runat="server" Text="test" />   --%>      

 <div style="text-align:center;">
           <img src="Images/Request.gif" /> </div>
</asp:Content>
