<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieHubMainPage.aspx.vb" Inherits="DieMaintenance.DieHubMainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:10%;" >
        <div style="display: inline-block;width:45%;vertical-align: top;">
            <div class="mainpageBTN">
           <a href="DieRequis.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die Request-PD (แจ้งซ่อมแม่พิมพ์)</h4>
           </a>
           </div>
            <div class="mainpageBTN">
           <a href="DieRepair.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die Repair-DM (เริ่มซ่อมแม่พิมพ์)</h4>
           </a>
        </div>
            <div class="mainpageBTN">
                <a href="DieRepairDetail.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die Repair Detail (บันทึกการซ่อม)</h4>
           </a>
            </div>
             <div class="mainpageBTN">
           <a href="DieFinish.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die Finish-DM (ซ่อมแม่พิมพ์เสร็จ,จัดเก็บ)</h4>
           </a>
        </div>
            <div class="mainpageBTN">
            <a href="DieOut.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Setup-PD (นำแม่พิมพ์ไป Setup)</h4>
           </a>
        </div>
        <div class="mainpageBTN">
            <a href="DieChangeLocation.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Change Location (แม่พิมพ์เปลี่ยนเครื่อง Run)</h4>
           </a>
        </div>
             <div class="mainpageBTN">
            <a href="UpdateLocation.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Change Status (เปลี่ยน Status ของแม่พิมพ์)</h4>
           </a>
        </div>
            <div class="mainpageBTN">
            <a href="DieRepairOnMc.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Start repair on MC (เริ่มซ่อมบนเครื่อง)</h4>
           </a>
        </div>
            <div class="mainpageBTN">
            <a href="DieFinishOnMc.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Finish Repair on MC (ซ่อมเสร็จบนเครื่อง)</h4>
           </a>
        </div>
        </div>
        <div style="display: inline-block;width:45%;padding-left:5%;vertical-align: top;">
            <div class="mainpageBTN">
            <a href="DieMonitor.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die Room Status (สถานะแม่พิมพ์ในห้อง Die)</h4>
           </a>
           </div>
           <div class="mainpageBTN">
            <a href="DieLocation.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die Location (สถานะแม่พิมพ์นอกห้อง Die)</h4>
           </a>
           </div>
           <div class="mainpageBTN">
           <a href="DieReport.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die Report (ข้อมูลการซ่อมแซมแม่พิมพ์)</h4>
           </a>
           </div>
             <div class="mainpageBTN">
           <a href="DieTopWorse.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die Report Top worse (ข้อมูลที่ใช้เวลาซ่อทนาน)</h4>
           </a>
           </div>
             <div class="mainpageBTN">
           <a href="DiePicture.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die Report Picture(รูปการซ่อมแม่พิมพ์)</h4>
           </a>
           </div>
            <div class="mainpageBTN">
           <a href="DieReceive.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Add New Die (เพิ่มแม่พิมพ์)</h4>
           </a>
        </div>
             <div class="mainpageBTN">
           <a href="RepPsen.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Report Pressure sensor</h4>
           </a>
        </div>
            <%-- <div class="mainpageBTN">
           <a href="AddPartMaster.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Add New insert drawing</h4>
           </a>
        </div>--%>
            <div class="mainpageBTN">
           <a href="DieAppHowTo.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Checking Web and How to use (ตรวจสอบและวิธีการใช้งานเว็บไซต์)</h4>
           </a>
        </div>
                  <div class="mainpageBTN">
           <a href="DiereportOnMc.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die report on MC (ข้อมูลซ่อมแม่พิมพ์บนเครื่อง)</h4>
           </a>
        </div>
       <div class="mainpageBTN">
           <a href="DieWaitSpareReport.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die Can Not Use (ข้อมูลแม่พิมพ์ไม่สามารถใช้งาน)</h4>
           </a>
        </div>
        </div> 
    </div>
              <div style="width:45vw;height:25vw;margin:3% 0% 0% 10%;opacity:0.95;background-color:whitesmoke;display:inline-block;">
                   <canvas id="myChart" style="height:80%;width:80%; vertical-align: top;"></canvas>
             </div>
            <div  style="display:inline-block;width:20%;margin:0% 0% 0% 5%;">
                <asp:GridView ID="GridSum" runat="server" class="customgrids"></asp:GridView>
            </div>
                

    <script src="Scripts/Chart.js"></script>
    <script src="Scripts/Chart.min.js"></script>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>

    <script>

        //function random_rgba() {
        //    var o = Math.round, r = 255, s = Math.random;
        //    return 'rgba(' + o(r() * s) + ',' + o(r() * s) + ',' + o(r() * s) + ',' + '1' + ')';
        //}

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
            var colorSet = ['rgb(224,224,224,1)', 'rgb(50,150,255,1)', 'rgb(96,96,96,1)', 'rgb(255,153,51,1)']

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
            var MaterialInStockCtx = document.getElementById("myChart");
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
                        fontColor: "Black",
                        text: "Current Die Status"
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

        showChartMaterialInStock();

    </script>





</asp:Content>
