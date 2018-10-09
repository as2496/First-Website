<%@ Page Title="" Language="C#" MasterPageFile="~/MyWebPageMaster.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="MyWebApplication.Links" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div id="feedbackPage"><h2>Your Feedback Is Valuable</h2></div>
       
        <table id="CommentArea" border-style: none;>

        <tr><td style="width: 144px"><h2>*<span class="label label-primary">User Name</span></h2></td><td class="CommentAreaTextBox" ><input type="text" id="TBVisitorName" Class="form-control" style="height:40px; width:185px;" runat="server"/></td><td><div id="ErrorAlertName" class="ErrorMessage"></div></td></tr>
        <tr><td style="width: 144px"><h2>*<span class="label label-primary">Email Address</span></h2></td><td class="CommentAreaTextBox"><input ID="TBEmail" type="email"  Class="form-control" style="height:40px; width:185px" runat="server"/></td></tr>
        <tr><td style="width: 144px"><h2>*<span class="label label-primary">Feedback Topic</span></h2></td><td class="CommentAreaTextBox"><input ID="TBTitle" type="text"  Class="form-control" style="height:40px; width:185px" runat="server"></td></tr>
        <tr><td style="width: 144px"><h2>*<span class="label label-primary">Feedback</span></h2></td><td class="CommentAreaTextBox"><textarea ID="TAComment" Class="form-control" style="height:74px; width:300px" runat="server"></textarea></td></tr>
        </table>

        <%--<button type="button" class="btn btn-success" onclick="ButtonPost_Click" style="margin-left: 170px">Success</button>style="margin-left: 170px; margin-top:50px; margin-bottom:20px; width: 126px;"--%>
             <input id="btnPost" type="button" class="btn btn-success"  value="Post" style="margin-top:10px; margin-left:180px"/>&nbsp<asp:Button ID="ButtonPost" runat="server" Text="Post" OnClick="ButtonPost_Click" style="display:none;"/>
              <input type="checkbox" onclick="deleteChkFunc()" />Check here to Modify
                  
            &nbsp;<div style="width:400px; margin-left:180px">
                  <div id="box" style="width:0px;height:20px" class="progress-bar progress-bar-striped active">
                  <p id="demo"></p>
                  </div>
                  </div>

         

    <div style="position:relative">
        <img id="feedback" src="images/grey.jpg" class="img-responsive"/>
        <asp:GridView ID="GridViewComment" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="mydatagrid" PagerStyle-CssClass="pager"
            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" FooterStyle-CssClass="FooterStyle" AllowPaging="True" PageSize="5" DataKeyNames="FeedbackTime">
            
            <Columns>
                <asp:BoundField DataField="VisitorName" HeaderText="Visitor Name" SortExpression="VisitorName" />
                <asp:BoundField DataField="VisitorCommentTitle" HeaderText="Feedback Title" SortExpression="VisitorCommentTitle" />
                <asp:BoundField DataField="VisitorComment" HeaderText="Visitor Comment" SortExpression="VisitorComment" />
                <asp:BoundField DataField="FeedbackTime" HeaderText="Feedback Time" SortExpression="FeedbackTime" />
                <asp:CommandField  ShowEditButton="true" ShowDeleteButton="True"/>
            </Columns>

<FooterStyle CssClass="FooterStyle"></FooterStyle>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>

<RowStyle CssClass="rows"></RowStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SiteDBConnectionString %>" SelectCommand="SELECT [VisitorName], [VisitorCommentTitle], [VisitorComment], [FeedbackTime], [VisitorImage] FROM [VisitorsFeedBack] ORDER BY CAST(FeedbackTime AS datetime) DESC"
            UpdateCommand="UPDATE [VisitorsFeedBack] SET [VisitorName]=@VisitorName, [VisitorCommentTitle]=@VisitorCommentTitle, [VisitorComment]=@VisitorComment, [VisitorImage]=null WHERE [VisitorName] IS NOT NULL,[VisitorCommentTitle] IS NOT NULL,[VisitorComment] IS NOT NULL,[FeedbackTime] IS NOT NULL" DeleteCommand="DELETE FROM [VisitorsFeedBack] WHERE [FeedbackTime] = @FeedbackTime"></asp:SqlDataSource>
    </div>
        
    </form>
    </asp:Content>
