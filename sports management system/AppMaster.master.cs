using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class AppMaster : System.Web.UI.MasterPage
{
	protected void Themepicker_Command(object sender, CommandEventArgs e)
	{
		//Set the StyleheetTheme in the user's profile to the selected value and 
        //reload the page so the change can be applied.
		Profile.StylesheetTheme = e.CommandName;		
		Response.Redirect(Request.FilePath, false);
	}
}
