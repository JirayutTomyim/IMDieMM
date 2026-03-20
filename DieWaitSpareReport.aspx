<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieWaitSpareReport.aspx.vb" Inherits="DieMaintenance.DieWaitSpareReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
                 <h1 style="text-align:center;color:white">Die Can Not Use</h1>
        </div>
    <table style="margin-left:5%; width:90%;font-size:90%;">
        <tr>
            <td >Die No. :</td>
            <td><asp:TextBox ID="TextDieName" placeholder="ระบุ Die_Name"  runat="server"></asp:TextBox></td>
            <td># :</td>
            <td><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No" runat="server" ></asp:TextBox></td>
            <td>Date :</td>
            <td><asp:TextBox ID="TextDate1" runat="server" Text="DD/MM/YY" TextMode="Date"></asp:TextBox></td>
            <td>to</td>
            <td><asp:TextBox ID="TextDate2" runat="server" Text="DD/MM/YY" TextMode="Date"></asp:TextBox></td>
            <td><asp:Button ID="btnSearch" runat="server" Text="Search" class="Butconfrim"/></td>
        </tr>
        <tr>
            <td><asp:Button ID="btngetData" runat="server" Text="Get" CssClass="button" Style="visibility:hidden " /></td>
            <td colspan="9" style="text-align:right;"><asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim" Style="width:7%;"/></td>
        </tr>
    </table>
    <div style="overflow: auto;width:90%;margin-left:5%;height:60vh;">
        <asp:GridView ID="GridReport" runat="server" class="customers" ></asp:GridView>

    </div>
    <div Style="text-align:center;width:90%;margin: 0% 5% 0% 5%;">
        <asp:Button ID="btnDownload" runat="server" Text="Download Excel"  OnClientClick="return confirm('Yes for Download Excel File /No for Cancel')" class="Butconfrim"/>
    </div>
           <script>
         function gridRowOnclick(element) {

             if (confirm("Are you searching Die:" + element.cells[3].innerHTML + " ?")) {
                 document.getElementById('<%=TextDieName.ClientID %>').value = element.cells[3].innerHTML;
                document.getElementById('<%=btngetData.ClientID %>').click();
             }
             else {

             }
         }
    </script>
</asp:Content>
