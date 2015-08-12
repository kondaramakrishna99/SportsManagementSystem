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
using System.Web.Security;

public partial class tempRemovingUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void button_Delete_Click(object sender, EventArgs e)
    {
       // Label1.Text = Membership.GetNumberOfUsersOnline().ToString();
        // = User.Identity.Name.ToString();
        MembershipUser user = Membership.GetUser(DropDownList1.SelectedValue);
        Label1.Text = user.UserName.ToString();
        Membership.DeleteUser(user.UserName);
        DropDownList1.DataBind();


    }
}
