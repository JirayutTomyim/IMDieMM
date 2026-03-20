<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieTopWorse.aspx.vb" Inherits="DieMaintenance.DieTopWorse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
                 <h1 style="text-align:center;color:white">Die Report Top Worse</h1>
        </div>
     <table style="margin:0% 20% 0% 20%; width:60%;">
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
<%--                <td style="text-align:right"> Customer :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextCustomer" placeholder="ระบุชื่อลูกค้า" runat="server" TabIndex="1"></asp:TextBox></td>
            </tr>--%>
            <tr >
                <td style="text-align:right"> Die No. :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextDieName" placeholder="ระบุ Die_Name" runat="server" TabIndex="2" ></asp:TextBox></td>
            </tr>  
            <tr>
                <td style="text-align:right"># :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDieNo" placeholder="ระบุ Die_No"  runat="server" TabIndex="3"></asp:TextBox></td>

            </tr>
            <tr>
                <td style="text-align:right">Problem Reason :</td>
                 <td style="text-align:left"><asp:DropDownList ID="DrpReason" runat="server">
                     <asp:ListItem></asp:ListItem>
                    <asp:ListItem>ON Target</asp:ListItem>
                    <asp:ListItem>Repair</asp:ListItem>
                    <asp:ListItem>Die Complete</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
             <tr>
                 <td style="text-align:right">Problem From :</td>
                <td style="text-align:left"><asp:DropDownList ID="DrpPrbFrom" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>DM</asp:ListItem>
                    <asp:ListItem>PD</asp:ListItem>
                    <asp:ListItem>QC</asp:ListItem>
                    <asp:ListItem>MM</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList></td>
             </tr>
         <%-- <tr>
                 <td style="text-align:right">Problem From :</td>
                <td style="text-align:left"><asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Request-Finish</asp:ListItem>
                    <asp:ListItem>DieRepair-Finish</asp:ListItem>      
                </asp:DropDownList></td>
             </tr>--%>
         <tr>
                 <td style="text-align:right">Date :</td>
                <td style="text-align:left">
                    <asp:TextBox ID="TextDate1" runat="server" Text="DD/MM/YY" TextMode="Date"></asp:TextBox> to 
                    <asp:TextBox ID="TextDate2" runat="server" Text="DD/MM/YY" TextMode="Date"></asp:TextBox>
                </td>
             </tr>
            <tr style="text-align:center;">
                
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="Button1" runat="server" Text="Serch"  class="Butconfrim"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bntClear" runat="server" Text="Clear" class="Butconfrim"/>
                    &nbsp;&nbsp;&nbsp;
                </td>
<td colspan="2"></td>
            </tr>
            <tr>
                <%--<td>
                    <br />
                </td>--%>
            </tr>
        </table>
    <div style="overflow: auto;width:50%;margin-top:2%;margin-left:20%;height:40vh;">
        <asp:GridView ID="GridReport" runat="server" class="customers" ></asp:GridView>
    </div>

    <div>
                 <h1 style="text-align:center;color:white">Die Report Top Breakdown</h1>
        </div>
     <table style="margin:3% 20% 0% 20%; width:60%;">
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
<%--                <td style="text-align:right"> Customer :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextBox1" placeholder="ระบุชื่อลูกค้า" runat="server" TabIndex="1"></asp:TextBox></td>
            </tr>--%>
            <tr >
                <td style="text-align:right"> Die No. :</td>
                <td style="text-align:left"> <asp:TextBox ID="TextDieNameB" placeholder="ระบุ Die_Name" runat="server" TabIndex="2" ></asp:TextBox></td>
            </tr>  
            <tr>
                <td style="text-align:right"># :</td>
                <td style="text-align:left"><asp:TextBox ID="TextDieNoB" placeholder="ระบุ Die_No"  runat="server" TabIndex="3"></asp:TextBox></td>

            </tr>
            <tr>
                <td style="text-align:right">Problem Reason :</td>
                 <td style="text-align:left"><asp:DropDownList ID="DrpReasonB" runat="server">
                     <asp:ListItem></asp:ListItem>
                    <asp:ListItem>ON Target</asp:ListItem>
                    <asp:ListItem>Repair</asp:ListItem>
                    <asp:ListItem>Die Complete</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
             <tr>
                 <td style="text-align:right">Problem From :</td>
                <td style="text-align:left"><asp:DropDownList ID="DrpPrbFromB" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>DM</asp:ListItem>
                    <asp:ListItem>PD</asp:ListItem>
                    <asp:ListItem>QC</asp:ListItem>
                    <asp:ListItem>MM</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList></td>
             </tr>
         <tr>
                 <td style="text-align:right">Date :</td>
                <td style="text-align:left">
                    <asp:TextBox ID="txtDate3" runat="server" Text="DD/MM/YY" TextMode="Date"></asp:TextBox> to 
                    <asp:TextBox ID="txtDate4" runat="server" Text="DD/MM/YY" TextMode="Date"></asp:TextBox>
                </td>
             </tr>
            <tr style="text-align:center;">
                
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="BtnOK" runat="server" Text="Serch"  class="Butconfrim"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Clear" class="Butconfrim"/>
                    &nbsp;&nbsp;&nbsp;
                </td>
<td colspan="2"></td>
            </tr>
            <tr>
                <%--<td>
                    <br />
                </td>--%>
            </tr>
        </table>
    <div style="overflow: auto;width:50%;margin-top:2%;margin-left:20%;height:40vh;">
        <asp:GridView ID="GrdTopBreak" runat="server" class="customers" ></asp:GridView>
    </div>

</asp:Content>
