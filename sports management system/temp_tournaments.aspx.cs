using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class temp_tournaments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FormView1.ChangeMode(FormViewMode.Insert);
    }

    protected void btn_newtournament_Click(object sender, EventArgs e)
    {
        para_insert.Visible = true;
    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        para_insert.Visible = false;
    }
    protected void btn_modifyteams_Click(object sender, EventArgs e)
    {
        Session["tournament"] = dropdown_tournament.SelectedValue;
       
        Response.Redirect("~/teams.aspx");
    }
    protected void btn_details_Click(object sender, EventArgs e)
    {
        para_viewdetails.Visible = true;
    }
}
