<%@ Page Title="" Language="C#" MasterPageFile="~/MyWebPageMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MyWebApplication.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="contact">
        <h2>Contact Me</h2>
    <h5><img src="images/MailBox.png" alt="@_Image"/>P.O. BOX</h5>
        <p>
        40 Grove Street<br />
        Apt- 4, Kearny<br />
        New Jersey 07032</p>
    
    <h5><img src="images/email.png" alt="@_Image"/>EMAIL TO</h5>
    <p>
        <strong>Professional:</strong> <a href="mailto:as2496@njit.edu">as2496@njit.edu</a><br /> 
        <strong>Personal:</strong>   <a href="mailto:anushree.saha22@gmail.com">anushree.saha22@gmail.com</a>     
    </p>
        <h5><img src="images/phone.png" alt="@_Image"/>CALL</h5>
    <p>
        <abbr title="Phone"><strong>Mobile:</strong></abbr>
        +1 551-998-2172
    </p>
      </div>
</asp:Content>
