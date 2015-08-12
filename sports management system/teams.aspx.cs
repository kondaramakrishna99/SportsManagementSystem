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
using System.Data.SqlClient;

public partial class teams : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_tournament.Text = Session["tournament"].ToString();
       
    }


    protected void FormView1_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn_insert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        string DBConnectionString = @"Data Source=SYLAR\SQLEXPRESS;Initial Catalog=sports;Integrated Security=True";
        con.ConnectionString = DBConnectionString;
        
            con.Open();

            string query = "insert into dbo.tournament_teams values (@t_name,@team_name,@sport)";
            SqlCommand command = new SqlCommand(query, con);
            command.CommandType = CommandType.Text;
            command.Parameters.Add(new SqlParameter("@t_name", SqlDbType.NVarChar, 50));
            command.Parameters.Add(new SqlParameter("@team_name", SqlDbType.NVarChar, 50));
            command.Parameters.Add(new SqlParameter("@sport", SqlDbType.NVarChar, 20));
           // command.Parameters.Add(new SqlParameter("@team_id", SqlDbType.Int));
            
            command.Parameters["@t_name"].Value = Session["tournament"].ToString();
            command.Parameters["@team_name"].Value = textbox_teamname.Text;
            command.Parameters["@sport"].Value = textbox_sport.Text;
           // command.Parameters["@team_id"].Value = textbox_teamID.Text;

            string query1 = "SELECT team_id FROM dbo.tournament_teams where team_id="+textbox_teamname.Text;

            SqlCommand cmd = new SqlCommand(query1, con);

            cmd.CommandType = CommandType.Text;
         //   command.Parameters.Add(new SqlParameter("@team_id1", SqlDbType.Int));
         //   command.Parameters["@team_id"].Value = textbox_teamID.Text;
            DataSet ds = new DataSet();
            string present = "false";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            foreach(DataRow row in dt.Rows)
                foreach (DataColumn col in dt.Columns)
                {

                    if (!row.IsNull(col))
                        present = "true";
                    lbl_tournament.Text = "already teamid present";
                }
            if (present=="false")
            {
                command.ExecuteNonQuery();
                lbl_tournament.Text = "inserted";
            }
        con.Close();
        //textbox_teamID.Text = null;
        textbox_teamname.Text = null;
        textbox_sport.Text = null;


    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        //textbox_teamID.Text = null;
        textbox_teamname.Text = null;
        textbox_sport.Text = null;
    }
    protected void btn_create_Click(object sender, EventArgs e)
    {
        para_createteam.Visible = true;
    }
    protected void btn_details_Click(object sender, EventArgs e)
    {
        para_details.Visible = true;
    }
    protected void btn_players_Click(object sender, EventArgs e)
    {
        Session["team"] = dropdown_teams.SelectedValue;
        
    }



    protected void SqlDataSource1_Unload(object sender, EventArgs e)
    {
        dropdown_teams.DataBind();
    }
}
