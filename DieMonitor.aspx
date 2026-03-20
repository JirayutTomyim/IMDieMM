<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DieMonitor.aspx.vb" Inherits="DieMaintenance.DieMonitor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Die Maintenance Web</title>
    <link href="~/MasterStyle/MasterStyleIM.css" rel="stylesheet" />
</head>
<body class="body">
    <form id="form1" runat="server">
        <div class="header"  ><img src="../Images/DieIM.png" style="height:60px;"/></div>
        <h2 class="headDie" style="text-align:center;width:20%;margin:1% 40% 0% 40%;border-radius:15px;">
            Die Room Status
        </h2>
         <table style="margin:1% 30% 0% 35%; width:30%;">
             <tr>
                 <td style="text-align:right;width:30%" >Die waitting Repair :</td>
                 <td style="width:30%"><asp:Label ID="labWait" runat="server" Text="Label"></asp:Label></td>
             </tr>
             <tr>
                 <td style="text-align:right;width:30%" >UNder Die Repair :</td>
                 <td style="width:30%"><asp:Label ID="labRep" runat="server" Text="Label"></asp:Label></td>
             </tr>
             </table>
         <div style=" text-align: center;margin: 1%;"> 
        <input id="btuHidegraph" type="button" value="Graph die Monitor" onclick="myFunction1()" class="hidegraph"/>
             </div>


             <div style=" text-align: center;margin: 1%;"> 
                  <div style="text-align:center">
<input id="btuTarget" type="button" value="วางแผนเวลาเริ่มซ่อม" onclick="myFunction4()" class="btnProblem"/></div>
                 
         <table id="DieTarget"style="margin:0% 20% 0% 37%; width:25%;display:none; " >


<%--<table style="margin:0% 20% 0% 20%; width:60%;">--%>
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
                <%--<td style="text-align:right">Request Name :</td>--%>
                <%--<td style="text-align:left"><asp:TextBox ID="TextName" placeholder="ระบุ Reruest_Name" runat="server" TabIndex="6"></asp:TextBox></td>--%>
            </tr>  
            <tr>
                <td style="text-align:right"># :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No"  runat="server" TabIndex="3"></asp:TextBox></td>
                <%--<td style="text-align:right">Shot(K/Shot) :</td>--%>
              <%--  <td style="text-align:left">
                    <asp:TextBox ID="Textshot" runat="server" placeholder="หน่วยเป็น K/shot"></asp:TextBox>
                </td>--%>
            </tr>
            <tr>
                <td style="text-align:right">Part Name :</td>
                <td style="text-align:left"><asp:TextBox ID="TextPartName" placeholder="ระบุ Part_Name"  runat="server" TabIndex="4"></asp:TextBox></td>
               <%-- <td style="text-align:right"> Reason Repair :</td>
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
            <%--<td style="text-align:right;">Machine No. :</td>
                 <td style="width:5%;"><asp:TextBox ID="txtMc" runat="server" placeholder="ระบุ MC"></asp:TextBox></td>--%>
             </tr>
             <tr style ="width:50%">
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
                <div id="DieRequest" style="display:none;margin-top:1%;" >
                   <div style="width:40%;height:15%;margin:0% 30% 0% 30%;opacity:0.95;background-color:white;">
                   <canvas id="myChart" style="border: 1px solid #000000;height:100%;"></canvas>
             </div>
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



            <%--<div style="width:40%;height:15%;margin:3% 30% 0% 30%;opacity:0.95;background-color:white;">
                   <canvas id="myChart" style="border: 1px solid #000000;height:100%;"></canvas>
             </div>--%>
       <div style="text-align:center;margin-top:1%;">
            <%--<asp:Button ID="butRefresh" runat="server" Text="Refresh" class="Butconfrim"/>--%>
           <%-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <asp:Button ID="butBack" runat="server" Text="Back" class="Butconfrim"/>
        </div>
         <table style="margin:1% 30% 0% 35%; width:30%;"">
               <tr>
                   <td style="text-align:center;"><asp:Button ID="Button1" runat="server" Text="Load table wait Repair" class="Butconfrim"/></td>
                   <td style="text-align:center;"><asp:Button ID="Button2" runat="server" Text="Load table Repair" class="Butconfrim"/></td>
               </tr>
           </table>
         <div style="display: inline-block;width: 45%;">
                <h4 class="DieRoomHead">Wait Repair</h4>
            </div>
       <div style="display:inline-block;width:45%;text-align:right;" >
                <h4 class="DieUnderRepair">Under Repair</h4>
         </div>
        <div style="text-align:center;vertical-align:top;">            
            <table style=" width:100%;margin-top:0%;background:none;border:none;">
               <tr style="vertical-align:top;">
                    <td>
                        <asp:GridView ID="gidWaitRepair" runat="server" class="customers" Style="width:100%;margin-top:0%;border: 5px ridge;"></asp:GridView>
                    </td>
                    <td>
                        <asp:GridView ID="gidUnderRepair" runat="server" class="customers" Style="width:100%;margin-top:0%;border: 5px ridge;"></asp:GridView>
                    </td>
                </tr>
            </table>
        </div>

    <script src="Scripts/Chart.js"></script>
    <script src="Scripts/Chart.min.js"></script>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>

    <script>

        function random_rgba() {
            var o = Math.round, r = Math.random, s = 255;
            return 'rgba(' + o(r() * s) + ',' + o(r() * s) + ',' + o(r() * s) + ',' + '1' + ')';
        }

        function showChartMaterialInStock() {

            /*    ========    Set Parameter/Data   =======  */
            var chartLabel = []
            var chartSubLabel = []
            var chartManQty = []

           chartLabel = jQuery.parseJSON('<%=JSON_Label_MaterialInStock%>')
            chartSubLabel = jQuery.parseJSON('<%=JSON_SubLabel_MaterialInStock %>')
            chartManQty = jQuery.parseJSON('<%=JSON_ArrayOfData_MaterialInStock %>')

            //alert(chartLabel)
            //alert(chartSubLabel)
            //alert(chartManQty)

            /*    ========    Set Color parameter   =======  */
            var colorSet = []
            colorSet.push('rgb(255,145,0,1)')

            if (colorSet.length < chartSubLabel.length) {
                for (i = colorSet.length; i < chartSubLabel.length; i++) {
                    colorSet.push(random_rgba())
                }
            }

            var setDataSet = []
            for (i = 0; i < (chartSubLabel.length); i++) {
                setDataSet.push({
                    label: chartSubLabel[i],
                    data: chartManQty[i],
                    backgroundColor: colorSet[i],
                    fontColor: "black",
                    borderColor: "black",
                    borderWidth: 1
                })
            }

            /*    ========    Set chart   =======  */
            var MaterialInStockCtx = document.getElementById("myChart");
            var ctx1 = MaterialInStockCtx.getContext('2d');

            if (window.MaterialInStockCtx) {
                window.MaterialInStockCtx.destroy();
            }

            window.MaterialInStockChart = new Chart(ctx1, {
                type: "bar",
                data: {
                    labels: chartLabel,
                    datasets: setDataSet
                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        fontSize: 20,
                        fontColor: "black",
                    },
                    scales: {
                        yAxes: [
                            {
                                stacked: true,
                                ticks: {
                                    beginAtZero: true,
                                    fontColor: "black",
                                    min:0 ,max:24 ,stepSize: 2
                                },
                                scaleLabel: {
                                    display: true,
                                    labelString: 'Amount'
                                },
                            }
                        ],

                        xAxes: [{
                            stacked: true,
                            ticks: {
                                autoSkip: false,
                                fontColor: "black",
                            },
                            barPercentage: 0.2
                        }]

                    }
                }
            });
        }

        showChartMaterialInStock();

    </script>
        <%-- <asp:Button ID="Button1" runat="server" Text="Test" />--%>
    </form>
</body>
</html>
