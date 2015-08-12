using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Base class for all pages in the application.
/// </summary>
public class PageBase : Page
{
	/// <summary>
	/// Override the Page.StyleSheetTheme property to use the current user's profile.
	/// </summary>
	/// <remarks>The reason for using the <see cref="Page.StyleSheetTheme" /> property instead of 
	/// <see cref="Page.Theme" /> is the resulting output:
	/// StyleSheetTheme CSS files get output at the very beginning of the &lt;head&gt; element in the source, 
	/// whereas Theme CSS files get output at the end. We're using IE-specific conditional comments in the 
	/// masterpage that *must* be interpreted after the main style sheet, so we have to output the link to the 
	/// main style sheet as early as possible.</remarks>
	public override string StyleSheetTheme
	{
		get
		{
			return HttpContext.Current.Profile["StylesheetTheme"].ToString();
		}
		set
		{
			HttpContext.Current.Profile["StylesheetTheme"] = value;
		}
	}
}
