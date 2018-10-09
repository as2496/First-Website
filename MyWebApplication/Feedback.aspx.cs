using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows;

namespace MyWebApplication
{
    public partial class Links : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       // DataContext db = new DataContext("DataClassesSiteVisitor.dbml");
        DataClassesSiteVisitorDataContext dbContext = new DataClassesSiteVisitorDataContext();

        protected void ButtonPost_Click(object sender, EventArgs e)
        {
            //dbContext.CreatingFeedbackComment(TextBoxVisitorName.Text, TextBoxEmail.Text, TextBoxTitle.Text, TextBoxComment.Text, null);
            
                dbContext.CreatingFeedbackComment(TBVisitorName.Value, TBEmail.Value, TBTitle.Value, TAComment.Value, null);
                GridViewComment.DataBind();
                Response.Redirect(Request.Path);
        }

    }
}