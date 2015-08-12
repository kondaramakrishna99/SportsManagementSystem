<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="temp_tournaments.aspx.cs" Inherits="temp_tournaments" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">
    &nbsp; <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tournaments</h3>
    <p>Select the tournament :
        <asp:DropDownList ID="dropdown_tournament" runat="server" Height="35px" Width="123px" 
            DataSourceID="SqlDataSource2" DataTextField="t_name" 
            DataValueField="t_name" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sportsConnectionString %>" 
            SelectCommand="SELECT DISTINCT [t_name] FROM [tournaments]">
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_newtournament" runat="server" 
            onclick="btn_newtournament_Click" Text="New tournament" Width="104px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_details" runat="server" Text="view Details" Width="77px" 
            onclick="btn_details_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_modifyteams" runat="server" onclick="btn_modifyteams_Click" 
            Text="modify teams" Width="78px" />
    </p>
    <p id="para_viewdetails" runat="server" visible="false">
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sportsConnectionString %>" 
            DeleteCommand="DELETE FROM [tournaments] WHERE [t_name] = @t_name" 
            InsertCommand="INSERT INTO [tournaments] ([t_name], [date_start], [date_end], [place]) VALUES (@t_name, @date_start, @date_end, @place)" 
            SelectCommand="SELECT * FROM [tournaments] WHERE ([t_name] = @t_name)" 
            
            UpdateCommand="UPDATE [tournaments] SET [date_start] = @date_start, [date_end] = @date_end, [place] = @place WHERE [t_name] = @t_name">
            <SelectParameters>
                <asp:ControlParameter ControlID="dropdown_tournament" Name="t_name" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="t_name" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="date_start" Type="DateTime" />
                <asp:Parameter Name="date_end" Type="DateTime" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="t_name" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="t_name" Type="String" />
                <asp:Parameter Name="date_start" Type="DateTime" />
                <asp:Parameter Name="date_end" Type="DateTime" />
                <asp:Parameter Name="place" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="t_name" DataSourceID="SqlDataSource3" Height="155px" 
            Width="290px">
            <Fields>
                <asp:BoundField DataField="t_name" HeaderText="tornament name" ReadOnly="True" 
                    SortExpression="t_name" />
                <asp:BoundField DataField="date_start" HeaderText="starting date" 
                    SortExpression="date_start" />
                <asp:BoundField DataField="date_end" HeaderText="ending date" 
                    SortExpression="date_end" />
                <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    </p> 
    
    <p id="para_insert" runat="server" visible="false">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="t_name" 
        DataSourceID="SqlDataSource1" style="margin-right: 106px" Height="300px" 
        Width="350px" onitemupdated="FormView1_ItemUpdated">
        <EditItemTemplate>
            t_name:
            <asp:Label ID="t_nameLabel1" runat="server" Text='<%# Eval("t_name") %>' />
            <br />
            date_start:
            <asp:TextBox ID="date_startTextBox" runat="server" 
                Text='<%# Bind("date_start") %>' />
            <br />
            date_end:
            <asp:TextBox ID="date_endTextBox" runat="server" 
                Text='<%# Bind("date_end") %>' />
            <br />
            place:
            <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
         <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      <h3>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CREATE TOURNAMENT&nbsp;</h3>
             <p>
                 &nbsp;</p>
             <p>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tournament Name&nbsp; :<asp:TextBox ID="textbox_tournament" runat="server" 
                     Width="125px" Text='<%# Bind("t_name") %>'></asp:TextBox>
             </p>
             <p>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Place &nbsp; :
                 <asp:TextBox ID="textbox_address" runat="server" Enabled="true" Width="125px" Text='<%# Bind("place") %>'></asp:TextBox>
             </p>
             <p>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start Date &nbsp;:
                 <asp:TextBox ID="date_start" runat="server" Width="125px" Text='<%# Bind("date_start") %>'></asp:TextBox>
                 <cc1:CalendarExtender ID="CalendarExtender1" runat="server" 
                     TargetControlID="date_start">
                 </cc1:CalendarExtender>
             </p>
             <p>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Date&nbsp; :
                 <asp:TextBox ID="date_end" runat="server" Width="125px" Text='<%# Bind("date_end") %>'></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<cc1:CalendarExtender ID="CalendarExtender2" runat="server" 
                     TargetControlID="date_end">
                 </cc1:CalendarExtender>
             </p>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
             &nbsp;
             </p>
        </InsertItemTemplate>
        <ItemTemplate>
            t_name:
            <asp:Label ID="t_nameLabel" runat="server" Text='<%# Eval("t_name") %>' />
            <br />
            date_start:
            <asp:Label ID="date_startLabel" runat="server" 
                Text='<%# Bind("date_start") %>' />
            <br />
            date_end:
            <asp:Label ID="date_endLabel" runat="server" Text='<%# Bind("date_end") %>' />
            <br />
            place:
            <asp:Label ID="placeLabel" runat="server" Text='<%# Bind("place") %>' />
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:sportsConnectionString %>" 
        SelectCommand="SELECT * FROM [tournaments]" 
        DeleteCommand="DELETE FROM [tournaments] WHERE [t_name] = @t_name" 
        InsertCommand="INSERT INTO [tournaments] ([t_name], [date_start], [date_end], [place]) VALUES (@t_name, @date_start, @date_end, @place)" 
        UpdateCommand="UPDATE [tournaments] SET [date_start] = @date_start, [date_end] = @date_end, [place] = @place WHERE [t_name] = @t_name">
        <DeleteParameters>
            <asp:Parameter Name="t_name" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="date_start" Type="DateTime" />
            <asp:Parameter Name="date_end" Type="DateTime" />
            <asp:Parameter Name="place" Type="String" />
            <asp:Parameter Name="t_name" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="t_name" Type="String" />
            <asp:Parameter Name="date_start" Type="DateTime" />
            <asp:Parameter Name="date_end" Type="DateTime" />
            <asp:Parameter Name="place" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    </p>
    </asp:Content>

