<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="temp_players.aspx.cs" Inherits="temp_players" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" 
        DataKeyNames="player_id" DataSourceID="SqlDataSource1" Height="300px" 
        Width="400px">
        <EditItemTemplate>
            player_id:
            <asp:Label ID="player_idLabel1" runat="server" 
                Text='<%# Eval("player_id") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            contact:
            <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
            <br />
            room:
            <asp:TextBox ID="roomTextBox" runat="server" Text='<%# Bind("room") %>' />
            <br />
            height:
            <asp:TextBox ID="heightTextBox" runat="server" Text='<%# Bind("height") %>' />
            <br />
            weight:
            <asp:TextBox ID="weightTextBox" runat="server" Text='<%# Bind("weight") %>' />
            <br />
            mdetails:
            <asp:TextBox ID="mdetailsTextBox" runat="server" 
                Text='<%# Bind("mdetails") %>' />
            <br />
            status:
            <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            &nbsp;<p style="vertical-align: middle; font-size: large; color: #397D47;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PLAYER&nbsp;INFO<p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
        Name&nbsp;&nbsp; :         <asp:TextBox ID="txtbox_name" runat="server" Text='<%# Bind("name") %>' ></asp:TextBox>
    </p>
    <p style="vertical-align: middle; text-align: justify;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        ID&nbsp;&nbsp;&nbsp; :
        <asp:TextBox ID="txtbox_id" runat="server"  Text='<%# Bind("player_id") %>' ></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact num&nbsp;&nbsp;&nbsp; :&nbsp;<asp:TextBox 
            ID="txtbox_contact" runat="server" Text='<%# Bind("contact") %>'></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Room num&nbsp;&nbsp;&nbsp; 
        :&nbsp;
        <asp:TextBox ID="txtbox_roomno" runat="server" Text='<%# Bind("room") %>'></asp:TextBox>
        &nbsp;</p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Height&nbsp;&nbsp;&nbsp; :&nbsp;
        <asp:TextBox ID="txtbox_height" runat="server" Text='<%# Bind("height") %>'></asp:TextBox>
        cms</p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Weight&nbsp;&nbsp;&nbsp; :&nbsp;
        <asp:TextBox ID="txtbox_weight" runat="server" Text='<%# Bind("weight") %>'></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mdetails&nbsp;&nbsp;&nbsp; :&nbsp; <asp:TextBox ID="txtbox_mdetails" runat="server" Text='<%# Bind("mdetails") %>'></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Status&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; <asp:TextBox ID="txtbox_status" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
    </p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" Width="76px"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </InsertItemTemplate>
        <ItemTemplate>
            player_id:
            <asp:Label ID="player_idLabel" runat="server" Text='<%# Eval("player_id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            contact:
            <asp:Label ID="contactLabel" runat="server" Text='<%# Bind("contact") %>' />
            <br />
            room:
            <asp:Label ID="roomLabel" runat="server" Text='<%# Bind("room") %>' />
            <br />
            height:
            <asp:Label ID="heightLabel" runat="server" Text='<%# Bind("height") %>' />
            <br />
            weight:
            <asp:Label ID="weightLabel" runat="server" Text='<%# Bind("weight") %>' />
            <br />
            mdetails:
            <asp:Label ID="mdetailsLabel" runat="server" Text='<%# Bind("mdetails") %>' />
            <br />
            status:
            <asp:Label ID="statusLabel" runat="server" Text='<%# Bind("status") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:sportsConnectionString %>" 
        DeleteCommand="DELETE FROM [players] WHERE [player_id] = @player_id" 
        InsertCommand="INSERT INTO [players] ([player_id], [name], [contact], [room], [height], [weight], [mdetails], [status]) VALUES (@player_id, @name, @contact, @room, @height, @weight, @mdetails, @status)" 
        SelectCommand="SELECT * FROM [players]" 
        UpdateCommand="UPDATE [players] SET [name] = @name, [contact] = @contact, [room] = @room, [height] = @height, [weight] = @weight, [mdetails] = @mdetails, [status] = @status WHERE [player_id] = @player_id">
        <DeleteParameters>
            <asp:Parameter Name="player_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="contact" Type="Int32" />
            <asp:Parameter Name="room" Type="String" />
            <asp:Parameter Name="height" Type="String" />
            <asp:Parameter Name="weight" Type="Single" />
            <asp:Parameter Name="mdetails" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="player_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="player_id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="contact" Type="Int32" />
            <asp:Parameter Name="room" Type="String" />
            <asp:Parameter Name="height" Type="String" />
            <asp:Parameter Name="weight" Type="Single" />
            <asp:Parameter Name="mdetails" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

