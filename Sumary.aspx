<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="Sumary.aspx.vb" Inherits="DieMaintenance.Sumary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="headDie" style="text-align:center;width:20%;margin:1% 40% 2% 30%;border-radius:15px;">Summary Report</h2>
       <div style="text-align:center;margin:0% 30% 0% 25%;width:30%;">
        <table style="width:100%;">
            <tr>
                <th><h4 class="headDie" style="font-size:20px;width:100%;margin:0% 0% 0% 0%;text-align:center;border-radius:0;background-color:black;">Monthly</h4></th>
                <%--<th><h4 class="headDie" style="font-size:20px;width:100%;margin:0%;text-align:center;border-radius:0;background-color:black;">Group</h4></th>--%>
            </tr>
            <tr>
                <td><asp:DropDownList ID="drpMonth" runat="server" Width="60%" style="font-size:20px;">

                    <asp:ListItem>January</asp:ListItem>
                    <asp:ListItem>February</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                    </asp:DropDownList></td>
               <%-- <td><asp:DropDownList ID="drpGroup" runat="server" Width="40%" style="font-size:20px;">
                             <asp:ListItem>All</asp:ListItem>
                             <asp:ListItem>PLM</asp:ListItem>
                             <asp:ListItem>NBM</asp:ListItem>
                             <asp:ListItem>HFM</asp:ListItem>
                            <asp:ListItem>SFN</asp:ListItem>
                    </asp:DropDownList></td>--%>

            </tr>
            <tr>
                <td style="text-align:center;">
                    <asp:Button ID="bntOK" runat="server" Text="OK" class="Butconfrim" style="width:40%;"/>
                    <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                 </td>
                 <%--<td>
                    <asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim" style="width:40%;"/>
                </td>--%>
            </tr>
        </table>
    </div>
    <div style="text-align:center;margin:3% 30% 0% 20%;width:40%;">
        <table style="width:100%;">
            <tr>
                <td>การซ่อมทั้งหมด</td>
                <td><asp:Label ID="LabelCountCases" runat="server" Text=""></asp:Label></td>
                <td>ครั้ง</td>
            </tr>
            <tr>
                <td>BreakDown Time</td>
                <td><asp:Label ID="LabelBreakDownTime" runat="server" Text=""></asp:Label></td>
                <td>Hr</td>
            </tr>
        </table>
    </div>
        <div style="display:inline-block;width:30%;margin:3% 0% 5% 0%;vertical-align:top;">
            <table style="width:100%;">
                <tr>
                    <th><h3>REASON REQUESTS</h3></th>
                </tr>
                <tr>
                    <td><asp:GridView ID="GridCountCases" runat="server" class="customers"></asp:GridView></td>
                </tr>
            </table>
        </div>
        <div style="width:50%;height:100%;opacity:0.95;background-color:white;display:inline-block;margin-top:3%;">
                   <canvas id="myChartRequest" style="border: 1px solid #000000;height:100%;width:50%;"></canvas>
             </div>

        <div style="display:inline-block;width:30%;margin:3% 0% 5% 0%;vertical-align:top;">
            <table style="width:100%;">
                <tr>
                    <th><h3>CASE PROBLEM APPERANCE</h3></th>
                </tr>
                <tr>
                    <td><asp:GridView ID="GrdCase" runat="server" class="customers"></asp:GridView></td>
                </tr>
            </table>
        </div>

        <div style="width:50%;height:100%;opacity:0.95;background-color:white;display:inline-block;margin-top:3%;">
                   <canvas id="myChartRepairCase" style="border: 1px solid #000000;height:100%;width:50%;"></canvas>
             </div>

     <div style="display:inline-block;width:30%;margin:3% 0% 5% 0%;vertical-align:top;">
            <table style="width:100%;">
                <tr>
                    <th><h3>CASE PROBLEM SPEC</h3></th>
                </tr>
                <tr>
                    <td><asp:GridView ID="GridSpec" runat="server" class="customers"></asp:GridView></td>
                </tr>
            </table>
        </div>

        <div style="width:50%;height:100%;opacity:0.95;background-color:white;display:inline-block;margin-top:3%;">
                   <canvas id="myChartSpec" style="border: 1px solid #000000;height:100%;width:50%;"></canvas>
             </div>

    <div style="display:inline-block;width:30%;margin:3% 0% 5% 0%;vertical-align:top;">
            <table style="width:100%;">
                <tr>
                    <th><h3>CASE PROBLEM OTHER</h3></th>
                </tr>
                <tr>
                    <td><asp:GridView ID="GridOther" runat="server" class="customers"></asp:GridView></td>
                </tr>
            </table>
        </div>

        <div style="width:50%;height:100%;opacity:0.95;background-color:white;display:inline-block;margin-top:3%;">
                   <canvas id="myChartOther" style="border: 1px solid #000000;height:100%;width:50%;"></canvas>
             </div>



         <script src="Scripts/Chart.js"></script>
    <script src="Scripts/Chart.min.js"></script>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>

    <script>
        function showChartDataRequest() {

            /*    ========    Set Parameter/Data   =======  */
            var chartLabel = []
            var chartSubLabel = []
            var chartManQty = []

            chartLabel = jQuery.parseJSON('<%=JSON_Label_DataRequest%>')
            chartSubLabel = jQuery.parseJSON('<%=JSON_SubLabel_DataRequest %>')
            chartManQty = jQuery.parseJSON('<%=JSON_ArrayOfData_DataRequest %>')

            //alert(chartLabel)
            //alert(chartSubLabel)
            //alert(chartManQty)

            /*    ========    Set Color parameter   =======  */
            var colorSet = ['rgb(68,176,65,1)'/*Running*/, 'rgb(50,150,255,1)'/*Standby*/, 'rgb(96,96,96,1)'/*Under*/, 'rgb(255,38,38,1)'/*Wait*/]

            var setDataSet = []
            for (i = 0; i < (chartSubLabel.length); i++) {
                setDataSet.push({
                    label: chartSubLabel[i],
                    data: chartManQty[i],
                    backgroundColor: colorSet,
                    fontColor: "white",
                    borderColor: "black",
                    borderWidth: 1
                })
            }

            /*    ========    Set chart   =======  */
            var MaterialInStockCtx = document.getElementById("myChartRequest");
            var ctx1 = MaterialInStockCtx.getContext('2d');
            if (window.MaterialInStockCtx) {
                window.MaterialInStockCtx.destroy();
            }

            window.MaterialInStockChart = new Chart(ctx1, {
                type: "doughnut",
                data: {
                    labels: chartLabel,
                    datasets: setDataSet
                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        fontSize: 20,
                        fontColor: "white",
                        text: ""
                    },
                    legend: {
                        display: true //show legend at the top of a chart
                    },
                    tooltips: {
                        enabled: true //not show tooltips when hover a chart
                    },
                    plugins: { //setup chartjs-plugin-labels plug in 
                        labels: [
                            {
                                render: 'label',
                                position: 'outside'
                            },
                            {
                                render: 'value'
                            }
                        ],
                    }

                }

            });
        }

        </script>

    <script>
        function showChartDataRepair() {

            /*    ========    Set Parameter/Data   =======  */
            var chartLabel = []
            var chartSubLabel = []
            var chartManQty = []

            chartLabel = jQuery.parseJSON('<%=JSON_Label_DataRepair%>')
            chartSubLabel = jQuery.parseJSON('<%=JSON_SubLabel_DataRepair %>')
            chartManQty = jQuery.parseJSON('<%=JSON_ArrayOfData_DataRepair %>')


            //alert(chartLabel)
            //alert(chartSubLabel)
            //alert(chartManQty)

            /*    ========    Set Color parameter   =======  */

            var colorSet = ['rgb(68,176,65,1)'/*Running*/, 'rgb(50,150,255,1)'/*Standby*/, 'rgb(96,96,96,1)'/*Under*/, 'rgb(255,38,38,1)'/*Wait*/]

            var setDataSet = []
            for (i = 0; i < (chartSubLabel.length); i++) {
                setDataSet.push({
                    label: chartSubLabel[i],
                    data: chartManQty[i],
                    backgroundColor: colorSet,
                    fontColor: "white",
                    borderColor: "black",
                    borderWidth: 1
                })
            }

            /*    ========    Set chart   =======  */
            var MaterialInStockCtx = document.getElementById("myChartRepairCase");
            var ctx1 = MaterialInStockCtx.getContext('2d');
            if (window.MaterialInStockCtx) {
                window.MaterialInStockCtx.destroy();
            }

            window.MaterialInStockChart = new Chart(ctx1, {
                type: "doughnut",
                data: {
                    labels: chartLabel,
                    datasets: setDataSet
                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        fontSize: 20,
                        fontColor: "white",
                        text: ""
                    },
                    legend: {
                        display: true //show legend at the top of a chart
                    },
                    tooltips: {
                        enabled: true //not show tooltips when hover a chart
                    },
                    plugins: { //setup chartjs-plugin-labels plug in 
                        labels: [
                            {
                                render: 'label',
                                position: 'outside'
                            },
                            {
                                render: 'value'
                            }
                        ],
                    }

                }

            });
        }
        </script>

    <script>
        function showChartSpec() {

            /*    ========    Set Parameter/Data   =======  */
            var chartLabel = []
            var chartSubLabel = []
            var chartManQty = []

            chartLabel = jQuery.parseJSON('<%=JSON_Label_DataSpec%>')
            chartSubLabel = jQuery.parseJSON('<%= JSON_SubLabel_DataSpec %>')
            chartManQty = jQuery.parseJSON('<%=JSON_ArrayOfData_DataSpec %>')


            //alert(chartLabel)
            //alert(chartSubLabel)
            //alert(chartManQty)

            /*    ========    Set Color parameter   =======  */

            var colorSet = ['rgb(68,176,65,1)'/*Running*/, 'rgb(50,150,255,1)'/*Standby*/, 'rgb(96,96,96,1)'/*Under*/, 'rgb(255,38,38,1)'/*Wait*/]

            var setDataSet = []
            for (i = 0; i < (chartSubLabel.length); i++) {
                setDataSet.push({
                    label: chartSubLabel[i],
                    data: chartManQty[i],
                    backgroundColor: colorSet,
                    fontColor: "white",
                    borderColor: "black",
                    borderWidth: 1
                })
            }

            /*    ========    Set chart   =======  */
            var MaterialInStockCtx = document.getElementById("myChartSpec");
            var ctx1 = MaterialInStockCtx.getContext('2d');
            if (window.MaterialInStockCtx) {
                window.MaterialInStockCtx.destroy();
            }

            window.MaterialInStockChart = new Chart(ctx1, {
                type: "doughnut",
                data: {
                    labels: chartLabel,
                    datasets: setDataSet
                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        fontSize: 20,
                        fontColor: "white",
                        text: ""
                    },
                    legend: {
                        display: true //show legend at the top of a chart
                    },
                    tooltips: {
                        enabled: true //not show tooltips when hover a chart
                    },
                    plugins: { //setup chartjs-plugin-labels plug in 
                        labels: [
                            {
                                render: 'label',
                                position: 'outside'
                            },
                            {
                                render: 'value'
                            }
                        ],
                    }

                }

            });
        }
        </script>

    <script>
        function showChartOther() {

            /*    ========    Set Parameter/Data   =======  */
            var chartLabel = []
            var chartSubLabel = []
            var chartManQty = []

            chartLabel = jQuery.parseJSON('<%=JSON_Label_DataOther%>')
            chartSubLabel = jQuery.parseJSON('<%= JSON_SubLabel_DataOther %>')
            chartManQty = jQuery.parseJSON('<%=JSON_ArrayOfData_DataOther %>')

            //alert(chartLabel)
            //alert(chartSubLabel)
            //alert(chartManQty)

            /*    ========    Set Color parameter   =======  */

            var colorSet = ['rgb(68,176,65,1)'/*Running*/, 'rgb(50,150,255,1)'/*Standby*/, 'rgb(96,96,96,1)'/*Under*/, 'rgb(255,38,38,1)'/*Wait*/]

            var setDataSet = []
            for (i = 0; i < (chartSubLabel.length); i++) {
                setDataSet.push({
                    label: chartSubLabel[i],
                    data: chartManQty[i],
                    backgroundColor: colorSet,
                    fontColor: "white",
                    borderColor: "black",
                    borderWidth: 1
                })
            }

            /*    ========    Set chart   =======  */
            var MaterialInStockCtx = document.getElementById("myChartOther");
            var ctx1 = MaterialInStockCtx.getContext('2d');
            if (window.MaterialInStockCtx) {
                window.MaterialInStockCtx.destroy();
            }

            window.MaterialInStockChart = new Chart(ctx1, {
                type: "doughnut",
                data: {
                    labels: chartLabel,
                    datasets: setDataSet
                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        fontSize: 20,
                        fontColor: "white",
                        text: ""
                    },
                    legend: {
                        display: true //show legend at the top of a chart
                    },
                    tooltips: {
                        enabled: true //not show tooltips when hover a chart
                    },
                    plugins: { //setup chartjs-plugin-labels plug in 
                        labels: [
                            {
                                render: 'label',
                                position: 'outside'
                            },
                            {
                                render: 'value'
                            }
                        ],
                    }

                }

            });
        }
        showChartDataRequest();
        showChartDataRepair();
        showChartSpec();
        showChartOther();
        </script>
</asp:Content>
