<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="teams.aspx.cs" Inherits="teams" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">
    <br />
    Select teams for tournament :
    <asp:Label runat="server" ID="lbl_tournament"  ></asp:Label>
&nbsp;<br />
    <br />
 
     <p>
                &nbsp;Available teams : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList 
                    ID="dropdown_teams" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="team_name" DataValueField="team_name" Height="35px" 
                    Width="118px" AutoPostBack="True">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:sportsConnectionString %>" 
                    onunload="SqlDataSource1_Unload" 
                    SelectCommand="SELECT [team_name] FROM [tournament_teams] WHERE ([t_name] = @t_name)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Session[&quot;tournament&quot;]" Name="t_name" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;</p>
                                        <p>
                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            <asp:Button ID="btn_create" runat="server" Text="create New Team" 
                                                onclick="btn_create_Click" Width="99px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btn_details" runat="server" Text="view Details" Width="76px" 
                                                onclick="btn_details_Click" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btn_players" runat="server" onclick="btn_players_Click" 
                                                Text="modify players" Width="95px" />
                                        </p>
                                        <p id=para_details runat="server" visible="false">
                                        
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:sportsConnectionString %>" 
                                                DeleteCommand="DELETE FROM [tournament_teams] WHERE [t_name] = @t_name" 
                                                InsertCommand="INSERT INTO [tournament_teams] ([team_name], [t_name], [sport]) VALUES (@team_name, @t_name, @sport)" 
                                                SelectCommand="SELECT * FROM [tournament_teams] WHERE ([team_name] = @team_name)" 
                                                UpdateCommand="UPDATE [tournament_teams] SET [team_name] = @team_name, [sport] = @sport WHERE [t_name] = @t_name">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="dropdown_teams" Name="team_name" 
                                                        PropertyName="SelectedValue" Type="String" />
                                                </SelectParameters>
                                                <DeleteParameters>
                                                    <asp:Parameter Name="t_name" Type="String" />
                                                </DeleteParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="team_name" Type="String" />
                                                    <asp:Parameter Name="sport" Type="String" />
                                                    <asp:Parameter Name="t_name" Type="String" />
                                                </UpdateParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="team_name" Type="String" />
                                                    <asp:Parameter Name="t_name" Type="String" />
                                                    <asp:Parameter Name="sport" Type="String" />
                                                </InsertParameters>
                                            </asp:SqlDataSource>
                                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                                DataKeyNames="team_name" DataSourceID="SqlDataSource2" Height="121px" 
                                                Width="161px">
                                                <Fields>
                                                    <asp:BoundField DataField="team_name" HeaderText="TeamName" ReadOnly="True" 
                                                        SortExpression="team_name" />
                                                    <asp:BoundField DataField="t_name" HeaderText="Tournamentname" 
                                                        SortExpression="t_name" />
                                                    <asp:BoundField DataField="sport" HeaderText="sport" SortExpression="sport" />
                                                    <asp:CommandField ShowEditButton="True" />
                                                </Fields>
                                            </asp:DetailsView>
                                        </p>
      <p id="para_createteam" runat="server" visible="false">
      <h3>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CREATE TEAMSnbsp;&nbsp;&nbsp;&nbsp; CREATE TEAMSp;&nbsp;&nbsp;&nbsp;&nbsp; CREATE TEAMSnbsp;&nbsp;&nbsp;&nbsp; CREATE TEAMSp;&nbsp;&nbsp;&nbsp;&nbsp; CREATE TEAMS</h3>
                <p>
                    &nbsp;</p>
             <p>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TeamName &nbsp; :<asp:TextBox 
                     ID="textbox_teamname" runat="server" 
                     Width="125px"> </asp:TextBox>
             </p>
             <p>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sport &nbsp;:
                 <asp:TextBox ID="textbox_sport" runat="server" Width="125px" >
                     </asp:TextBox>
               
             </p>
    <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="btn_insert" runat="server" Height="25px" 
                    onclick="btn_insert_Click" Text="insert" Width="80px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_cancel" runat="server" Height="24px" 
                    onclick="btn_cancel_Click" Text="cancel" Width="70px" />
                </p>
                </p>
    &nbsp;</asp:Content>

