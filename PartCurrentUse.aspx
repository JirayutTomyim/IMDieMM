<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="PartCurrentUse.aspx.vb" Inherits="DieMaintenance.PartCurrentUse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
                 <h1 style="margin-left:22%;color:white">Spare part Current Life</h1>
        </div>
    <table style="margin-left:15%; width:50%;font-size:90%;">
        <tr>
            <td >Die No. :</td>
            <td><asp:TextBox ID="TextDieName" placeholder="ระบุ Die_Name"  runat="server"></asp:TextBox></td>
            <td># :</td>
            <td><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No" runat="server" ></asp:TextBox></td>
            <%--<td>Date :</td>
            <td><asp:TextBox ID="TextDate1" runat="server" Text="DD/MM/YY" TextMode="Date"></asp:TextBox></td>
            <td>to</td>
            <td><asp:TextBox ID="TextDate2" runat="server" Text="DD/MM/YY" TextMode="Date"></asp:TextBox></td>--%>
            <td><asp:Button ID="btnSearch" runat="server" Text="Search" class="Butconfrim"/></td>
        </tr>
        <tr>
            <td><asp:Button ID="btngetData" runat="server" Text="Get" CssClass="button" Style="visibility:hidden " /></td>
            <td colspan="9" style="text-align:right;"></td>
        </tr>
    </table>
    <div style="overflow: auto;width:70%;margin-left:5%;height:60vh;">
        <asp:GridView ID="grdCurrentUse" runat="server" class="customers" ></asp:GridView>
    </div>
</asp:Content>
