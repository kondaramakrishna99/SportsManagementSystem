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

public partial class Tournament : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void dropdownlist_location_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dropdownlist_location.Text.Equals("Non-DAIICT"))
            textbox_address.Enabled = true;
        else
            textbox_address.Enabled = false;
    }
    protected void btn_create_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CricketTeam.aspx");
    }
}
