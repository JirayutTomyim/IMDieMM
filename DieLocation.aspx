<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieLocation.aspx.vb" Inherits="DieMaintenance.DieLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2 class="headDie">
            Die Location
        </h2>
    <table style="margin:0% 30% 0% 20%; width:50%;">
        <tr>
            <td><br /></td>
        </tr>
        <tr >
            <td style="text-align:right">Customer :</td>
            <td></td>
            <td style="text-align:left"> <asp:TextBox ID="TextCus" placeholder="ระบุ Customer Name" runat="server" TabIndex="1"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr >
            <td style="text-align:right">Die No. :</td>
            <td></td>
            <td style="text-align:left"> <asp:TextBox ID="TextDieName" placeholder="ระบุ Die_Name" runat="server" TabIndex="2"></asp:TextBox></td>
            <td><asp:Button ID="btnSearch" runat="server" Text="Search" class="Butconfrim" Style="width:60%;"/></td>
        </tr>
        <tr>
            <%--<td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>--%>
            
        </tr>
        <tr>
            <td style="text-align:right"># :</td>
            <td></td>
            <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No" runat="server" TabIndex="3"></asp:TextBox></td>
            <td ><asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim" Style="width:60%;"/></td>
        </tr>
      <%--  <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            
        </tr>--%>
        <tr>
            <td style="text-align:right">PartName :</td>
            <td></td>
            <td><asp:TextBox ID="TextPartName" placeholder="ระบุ PartName" runat="server" TabIndex="4"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td style="text-align:right">Drawing No :</td>
            <td></td>
            <td><asp:TextBox ID="TextDrw" placeholder="ระบุ Drawing No" runat="server" TabIndex="5"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td style="text-align:right">Location :</td>
            <td></td>
            <td><asp:TextBox ID="TextLocation" placeholder="ระบุ Location" runat="server" TabIndex="6"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td><br /></td>
        </tr>
    </table>
    <div>
             <asp:GridView ID="GridDieLocation" runat="server" class="customers" style="margin:2% 20% 0% 20%; width:60%;"></asp:GridView>
    </div>

    <div style="text-align:center;margin:2% 0% 2% 0%;"> 
        <input id="btuOnOffLayOut" type="button" value="Show/Hide Layout" onclick="myFunction()"/>

                <div id="myDIV" style="display:none;margin-top:2%;" >
                    <img src="Images/DieLayoutIM.png" height="500" width="800"/>
                </div>
<script>
    function myFunction() {
        var x = document.getElementById("myDIV");

        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
</script> 
    </div>
    <div >
        <table class="TableLocation">
            <tr>
                <td style="width:45%;vertical-align:top;">
                    <h4 style="margin:1% 0% 3% 0%;text-align:center;">Stand By</h4>
                    <asp:GridView ID="GridStandBy" runat="server" CssClass="customers" ></asp:GridView>
                </td>
            </tr>
        </table>
        <table class="TableLocation">
            <tr style="margin-left:40%;">
                <td style="width:45%;vertical-align:top;">
                    <h4 style="margin:3% 0% 3% 0%;text-align:right;">Setup</h4>
                    <asp:GridView ID="GridRuning" runat="server" CssClass="customers" Style="margin-left:52%;" ></asp:GridView>
                </td>
            </tr>
        </table>

    </div>
    <div style="text-align:center;">
         <asp:Button ID="butRefresh" runat="server" Text="Refresh" />
    </div>
    
</asp:Content>
