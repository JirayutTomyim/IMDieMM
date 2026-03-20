 <%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieFinish.aspx.vb" Inherits="DieMaintenance.DieFinish" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2 class="headDie">
            Finish Repair
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
                <td style="text-align:right">Location :</td>
                <td style="text-align:left"><asp:TextBox ID="TextLocation" placeholder="ระบุ Die Location" runat="server" TabIndex="7"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td style="text-align:right">Part Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextPartName" placeholder="ระบุ Part_Name" runat="server" TabIndex="4"></asp:TextBox></td>
                <td style="text-align:right">Problem From:</td>
            <td style="text-align:left;">
                <asp:DropDownList ID="DropProblemFrom" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>DM</asp:ListItem>
                    <asp:ListItem>PD</asp:ListItem>
                    <asp:ListItem>QC</asp:ListItem>
                    <asp:ListItem>MM</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
             <tr>
                 <td style="text-align:right">Drawing No. :</td>
                 <td style="text-align:left"><asp:TextBox ID="TextDrawingNo" placeholder="ระบุ Drawing_No" runat="server" TabIndex="5"></asp:TextBox></td>
                  <%--<td style="text-align:right">Problem :</td>
            <td style="text-align:left;"><asp:TextBox ID="TextRepairDetail" placeholder="ระบุรายละเอียดการแก้ปัญหา"  runat="server" TextMode="MultiLine--%>" style="width:90%;"></asp:TextBox></td>
                
            </tr>
            <tr style="text-align:center;">
                <td colspan="2"></td>
                <td colspan="2"></td>
            </tr>
            <tr style="text-align:center;">
                <td colspan="2" style="text-align:right">
                    Upload Pic Finish
                </td>
                <td colspan="2" style="text-align:center;">
                      <asp:FileUpload ID="FileUpload" runat="server" />
                    <asp:Button ID="BUpload" runat="server" Text="UpLoad" />
                    <div><asp:Button ID="bntOK" runat="server" Text="OK" class="Butconfrim" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim"/></div>
                </td>
            </tr>
            <tr>
                <td><br /></td>
            </tr>
        </table>
 <div style="text-align:center;margin-top:1%;"><asp:Image ID="ImgMqpr" runat="Server" CssClass="rounded img-fluid" style="height:24vh;" /></div> 

     <table style="margin:0% 20% 0% 20%; width:35%;">
            <tr>
                <td colspan="3" style="text-align:center;color:#740086;">หน้าโมล (Mold Surface)</td>
            </tr>
            <tr >
                <td style="text-align:center">ไม่พบเศษ Mat'l Leak ติดอยู่ ?</td>
                <td style="text-align:left"><asp:DropDownList ID="DrpMatLeak" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
                </tr>
         <tr>
                   <td style="text-align:center">ทำความสะอาดหน้า Mold ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpClean" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList> </td>
            </tr>
         <tr>
               <td colspan="5" style="text-align:center;color:#740086;">Guide pin/Bush , Taper lock</td>
            </tr>
            <tr >
                <td style="text-align:center">ไม่มีรอย Scratch/เสียหาย ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpScra" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList> </td>
                </tr>
         <tr >
                <td style="text-align:center">สะอาดและทาสารหล่อลื่น ?</td>
                <td style="text-align:left"><asp:DropDownList ID="DrpLu" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList> </td>
            </tr>  
          <tr>
                <td colspan="5" style="text-align:center;color:#740086;">ชุด Slide</td>
            </tr>
            <tr>
                <td style="text-align:center">ไม่พบเศษ Mat'l Leak ติดอยู่ ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpSlideLeak" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList>  </td>
                </tr>
         <tr>
                <td style="text-align:center">ไม่มีรอย Scratch/เสียหาย ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpSlideSc" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList> </td>
            </tr>
          <tr>
                <td style="text-align:center">สะอาดและทาสารหล่อลื่น ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpSlideLu" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
              </tr>
         <tr>
                <td colspan="5" style="text-align:center;color:#740086;">Cavity/Core insert</td>
            </tr>
            <tr>
                <td style="text-align:center">ไม่พบรอยบื่น/Dent ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpCaDent" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
                </tr>
         <tr>   
                <td style="text-align:center">ไม่พบรอยเสียดสี/Scratch ?</td>
                <td style="text-align:left;"><asp:DropDownList ID="DrpCaScr" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td> 
            </tr>
          <tr>
                <td style="text-align:center">ไม่พบรอยร้าว/Crack ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpCaCrack" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
              </tr>
         <tr>
                <td style="text-align:center">ไม่พบชิ้นส่วนงอ/Bend ?</td>
                <td style="text-align:left;"><asp:DropDownList ID="DrpCaBend" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td> 
            </tr>
          <tr>
                <td style="text-align:center">ไม่พบรอยสึกหรอ/Wear off ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpCaOff" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
              <tr>
               <td colspan="5" style="text-align:center;color:#740086;">ระบบหล่อเย็น</td>
            </tr>
            <tr>
                <td style="text-align:center">ไม่อุดตัน ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpCool" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
                </tr>
         <tr>
                <td style="text-align:center">เป่าลมครวจสอบความถูกต้องของการต่อ ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpJoint" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
          <tr>
                <td style="text-align:center">ข้อต่อแบบขันเกลียว ตัดสายก่อนต่อใหม่ ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpCable" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
              </tr>
         <tr>
                <td style="text-align:center">สายน้ำไม่ชำรุดหรือเสื่อมสภาพ ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpWatHose" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
          <tr>
                <td colspan="5" style="text-align:center;color:#740086;">ระบบ Ejector</td>
            </tr>
            <tr>
                <td style="text-align:center">E-pin ไม่มีรอย Scratch / Dent ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpEScr" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
                </tr>
         <tr>
                <td style="text-align:center">E-pin สะอาดและทาสารหล่อลื่น ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpElu" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
          <tr>
                <td style="text-align:center">ไม่มีสิ่งผิดปกติติดหลัง Plate ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrptopPlate" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
              </tr>
         <tr>
                <td style="text-align:center">P-Sensor สายไม่ชำรุด ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpPsen" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
               <tr>
                <td style="text-align:center">Ejector Plate Sensor สายไม่ชำรุด ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpEPsen" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
         <tr>
               <td colspan="5" style="text-align:center;color:#740086;">Sprue bush</td>
            </tr>
            <tr>
                <td style="text-align:center">ปากรูไม่เสียหายหรือเกิด under cut ?</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpUnder" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="NA"></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
            </tr>

            <tr style="text-align:center;">
                <td colspan="1"></td>
            </tr>
            <tr style="text-align:center;">
                <td colspan="1">
                    <%--<asp:Button ID="bntConfirm" runat="server" Text="Confirm" class="Butconfrim"/>--%>
               </td>
            </tr>
            <tr>
                <td><br /></td>
            </tr>
        </table>

    <table style="margin:1% 20% 0% 20%; width:35%;">
            <tr>
                <td colspan="3" style="text-align:center;" class="auto-style1">Check Pressure sensor</td>
            </tr>
            <tr >
                <td style="text-align:center">Pressure sensor Have(O)/No Have(X)</td>
                <td style="text-align:left"><asp:DropDownList ID="DrpPsenHave" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
                </tr>
                     <tr >
                <td style="text-align:center">Pressure sensor Good(O)/No Good(X)</td>
                <td style="text-align:left"><asp:DropDownList ID="DrpPsenUse" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
                </tr>
                     <tr >
                <td style="text-align:center">Problem</td>
                <td style="text-align:left">
                    <asp:TextBox ID="txtPsen" runat="server"></asp:TextBox>
                         </td>
                </tr>
                </table>

 <div style="text-align:center;margin-top:2vw"><asp:Button ID="Button1" runat="server" Text="Die Can Not Use" class="btnProblem"/></div>
  
        <div style="text-align:center;">
            <img src="Images/Finish.gif" />
        </div>
</asp:Content>
