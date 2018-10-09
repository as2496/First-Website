<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCHitCount.ascx.cs" Inherits="MyWebApplication.UCHitCount" %>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="GeneralPage.css"  />
<table style="border-spacing: 0px;">
    <tr id="HitCountLabel1">
        <td ><span class="label label-pill label-success">Today Visit :</span> </td>
        <td style="text-align:right; width:auto">&nbsp;&nbsp;<span class="label label-primary"><asp:Label ID="lblTodayVisit" runat="server" /></span></td>
    </tr>
    <tr id="HitCountLabel2">
        <td><span class="label label-pill label-success">Total Visit :</span> </td>
        <td style="text-align:right;width:auto">&nbsp;&nbsp;<span class="label label-primary"><asp:Label ID="lblTotalVisit" runat="server" /></span></td>
    </tr>

</table>