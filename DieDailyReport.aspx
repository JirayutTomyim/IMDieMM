<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieDailyReport.aspx.vb" Inherits="DieMaintenance.DieDailyReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
                 <h1 style="margin-left:25%;color:white">Die Daily Report</h1>
        </div>

    <h2 class="headDaily">
        <asp:Label ID="LabelDate" runat="server" Text="Label"></asp:Label>
        </h2> 
    <h2 class="headDailyIM">
            IM-LPB1</h2> 
    <div style="overflow: auto;width:60%;margin-left:5%;">
        <asp:GridView ID="GridReport" runat="server" class="customers" ></asp:GridView></div>
    <h2 class="headDailyIM">
            IM-LPB2</h2> 
     <div style="overflow: auto;width:60%;margin-left:5%;">
        <asp:GridView ID="GridReportIM2" runat="server" class="customers" ></asp:GridView></div>
    <h2 class="headDailyIM">
            IM-LPB3</h2> 
     <div style="overflow: auto;width:60%;margin-left:5%;">
        <asp:GridView ID="GridReportIM3" runat="server" class="customers" ></asp:GridView></div>

    <table style="margin:3% 0% 0% 5%; width:60%;font-size:90%;text-align:center;">
        <tr>
            <td>Date :</td>
            <td><asp:TextBox ID="TextDate1" runat="server" Text="DD/MM/YY" TextMode="Date"></asp:TextBox> 7.00</td>
            <td>To</td>
            <td><asp:TextBox ID="TextDate2" runat="server" Text="DD/MM/YY" TextMode="Date"></asp:TextBox> 7.00</td>
            <td><asp:Button ID="btnSearch" runat="server" Text="Search" class="Butconfrim"/></td>
        </tr>
        </table>
    <div style="overflow:auto;width:60%;margin-left:5%;height:30vh;margin-top:5%;">
         <asp:GridView ID="GridView1" runat="server" class="customers" ></asp:GridView>
        </div>
    <div style="overflow:auto;width:30%;margin-left:30%;height:60vh;margin-top:1%;">
        <asp:GridView ID="GridView2" runat="server" class="DailyGrids" ></asp:GridView>
    </div>
</asp:Content>
