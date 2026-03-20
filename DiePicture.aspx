<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DiePicture.aspx.vb" Inherits="DieMaintenance.DiePicture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="headDie">
            Repair Picture
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
            <td style="text-align:right"># :</td>
            <td></td>
            <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No" runat="server" TabIndex="3"></asp:TextBox></td>
            <td ><asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim" Style="width:60%;"/></td>
        </tr>
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
            <td style="text-align:right">Repair ID :</td>
            <td></td>
            <td><asp:TextBox ID="TextRepID" placeholder="ระบุ Repair ID" runat="server" TabIndex="6"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
             <td colspan="4"><br /></td>
        </tr>
        </table>
    <div style="overflow: auto;width:90%;margin-left:5%;height:60vh;margin-top:5%;">
        <asp:GridView ID="GridPic" runat="server" class="customers" >
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="Picture" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </div>

    <table style="margin:5% 0% 0% 5%;">
        <thead style="background-color:orange">
            <tr>
                <td style="text-align:center;">
                    Before
                </td>
                <td style="text-align:center;">
                    After
                </td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <asp:Image ID="ImBef" runat="server" />
                    </td>
                <td>
                    <asp:Image ID="ImAf" runat="server" />
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
