<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="WebForm1.aspx.vb" Inherits="DieMaintenance.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="color:aliceblue">
    ตัวอักษร <asp:TextBox ID="TxtBox" runat="server"></asp:TextBox>
    </div>
    <div style="color:aliceblue">
    ตัวเลข <asp:TextBox ID="TxtFlot" runat="server"></asp:TextBox>
        </div>

    <asp:DropDownList ID="DrpNo" runat="server">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
    </asp:DropDownList>

    <div style="margin-top:2%;text-align:center;">
        <asp:Button ID="input" runat="server" Text="ตุ่ม" />
    </div>
    <div style="margin-top:2%;text-align:center;">
        <asp:Button ID="Show" runat="server" Text="โช" />
    </div>

    <div style="margin-top:2%;text-align:center;">
        <asp:Button ID="BtnEdit" runat="server" Text="แก้ไข" />
    </div>

    <div style="background-color:aliceblue;">
    <asp:GridView ID="grdShow" runat="server"></asp:GridView>
</div>

</asp:Content>
