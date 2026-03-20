<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DieMasterPage/DieMaster.Master" CodeBehind="DieMainpageSpare.aspx.vb" Inherits="DieMaintenance.MainpageDiaeSpare" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
                 <h1 style="margin-left:24%;color:white">Mainpage Spare part</h1>
        </div>
    <div style="margin-left:21%;" >
        <div style="display: inline-block;width:45%;vertical-align: top;">
            <div class="mainpageBTN">
           <a href="AddPartMaster.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Add Spare Part Master</h4>
           </a>
        </div>
            <div class="mainpageBTN">
                <a href="PartHistory.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Die Part History</h4>
           </a>
            </div>
             <div class="mainpageBTN">
           <a href="PartCurrentUse.aspx" style="text-decoration: none;">
               <h4 class="butDiemain">Spare Current Life</h4>
           </a>
        </div>
            </div>
        </div>
</asp:Content>
