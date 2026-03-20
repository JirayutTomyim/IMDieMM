<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieAppHowTo.aspx.vb" Inherits="DieMaintenance.DieAppHowTo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2 class="headDie" style="text-align:center;width:40%;margin:1% 0% 0% 20%;border-radius:15px;">
            Checking and How to use Website
        </h2>
    <div style=" text-align: left;margin: 2% 0% 1% 10%;"> 
        <input id="btuDieRequest" type="button" value="Die Request How to" onclick="myFunction1()" class="btnHowTo"/>

                <div id="DieRequest" style="display:none;margin-top:2%;" >
                    <img src="Images/DieRequest.JPG" style="width:90%;"/>
                </div>
     <script>
    function myFunction1() {
        var x = document.getElementById("DieRequest");

        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
</script>
    </div>
        <div  style=" text-align: left;margin: 1% 0% 1% 10%;"> 
        <input id="btuDieRePair" type="button" value="Die Repair How to" onclick="myFunction2()" class="btnHowTo"/>

                <div id="DieRePair" style="display:none;margin-top:2%;" >
                    <img src="Images/DieRepair.JPG" style="width:90%;"/>
                </div>
     <script>
         function myFunction2() {
             var x = document.getElementById("DieRePair");

             if (x.style.display === "none") {
                 x.style.display = "block";
             } else {
                 x.style.display = "none";
             }
         }
</script> 
    </div>
    <div  style=" text-align: left;margin: 1% 0% 1% 10%;">
                <input id="btuDieFinish" type="button" value="Die Finish How to" onclick="myFunction3()"class="btnHowTo"/>

                <div id="DieFinish" style="display:none;margin-top:2%;" >
                    <img src="Images/DieFinish.JPG" style="width:90%;"/>
                </div>
     <script>
         function myFunction3() {
             var x = document.getElementById("DieFinish");

             if (x.style.display === "none") {
                 x.style.display = "block";
             } else {
                 x.style.display = "none";
             }
         }
</script> 
    </div>
    <div  style=" text-align: left;margin: 1% 0% 1% 10%;">
                <input id="btuDieSetUp" type="button" value="Die SetUp How to" onclick="myFunction4()"class="btnHowTo"/>

                <div id="DieSetUp" style="display:none;margin-top:2%;" >
                    <img src="Images/DieSetUp.JPG" style="width:90%;"/>
                </div>
     <script>
         function myFunction4() {
             var x = document.getElementById("DieSetUp");

             if (x.style.display === "none") {
                 x.style.display = "block";
             } else {
                 x.style.display = "none";
             }
         }
</script> 
    </div>
    <div  style=" text-align: left;margin: 1% 0% 1% 10%;">
                <input id="btuChangeLocation" type="button" value="Change Location How to" onclick="myFunction5()"class="btnHowTo"/>

                <div id="ChangeLocation" style="display:none;margin-top:2%;" >
                    <img src="Images/ChangeLocation.JPG" style="width:90%;"/>
                </div>
     <script>
         function myFunction5() {
             var x = document.getElementById("ChangeLocation");

             if (x.style.display === "none") {
                 x.style.display = "block";
             } else {
                 x.style.display = "none";
             }
         }
</script> 
    </div>
    <div  style=" text-align: left;margin: 1% 0% 2% 10%;">
                <input id="btuLocation" type="button" value="Die Location How to" onclick="myFunction6()"class="btnHowTo"/>

                <div id="Location" style="display:none;margin-top:2%;" >
                    <img src="Images/DieLocation.JPG" style="width:90%;"/>
                </div>
     <script>
         function myFunction6() {
             var x = document.getElementById("Location");

             if (x.style.display === "none") {
                 x.style.display = "block";
             } else {
                 x.style.display = "none";
             }
         }
</script> 
    </div>

    <table>
      <tr>
                <td colspan="5" style="text-align:center;color:#740086;">Checking Website 2 time/year</td>
            </tr>
        <tr>
                <td style="text-align:center">Request repair</td>
                <td style="text-align:left"><asp:TextBox ID="TxtDate" runat="server" TextMode="Date">DD/MM/YY</asp:TextBox></td>
                </tr>
          <tr>
                <td style="text-align:center">Request repair</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpReq" runat="server"> <asp:ListItem></asp:ListItem>
                 
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
                </tr>
         <tr>   
                <td style="text-align:center">Start repair</td>
                <td style="text-align:left;"><asp:DropDownList ID="DrpStart" runat="server"> <asp:ListItem></asp:ListItem>
                   
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td> 
            </tr>
          <tr>
                <td style="text-align:center">Repair detail</td>
                <td style="text-align:left"> <asp:DropDownList ID="DrpDet" runat="server"> <asp:ListItem></asp:ListItem>
                   
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td>
              </tr>
         <tr>
                <td style="text-align:center">repair finish</td>
                <td style="text-align:left;"><asp:DropDownList ID="DrpFin" runat="server"> <asp:ListItem></asp:ListItem>
                  
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td> 
            </tr>
           <tr>
                <td style="text-align:center">Mold setup</td>
                <td style="text-align:left;"><asp:DropDownList ID="DrpSet" runat="server"> <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="O"></asp:ListItem>
                    <asp:ListItem Value="X"></asp:ListItem>
                    </asp:DropDownList></td> 
            </tr>
        <tr>
                <td style="text-align:center">Repair ID</td>
                <td style="text-align:left;">
                    <asp:TextBox ID="TxtRepID" runat="server"></asp:TextBox> </td> 
            </tr>
        <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="ButOK" runat="server" Text="OK"  class="Butconfrim"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </tr>
          </table>
   <div>
             <asp:GridView ID="GridDieLocation" runat="server" class="customers" style="margin:2% 20% 0% 20%; width:60%;"></asp:GridView>
    </div>
</asp:Content>
