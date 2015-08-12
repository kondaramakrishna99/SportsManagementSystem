<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="tempRemovingUser.aspx.cs" Inherits="tempRemovingUser" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">

    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="UserName" 
        DataValueField="UserName" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    
    <br />
    <br />
    <asp:Button ID="button_Delete" runat="server" onclick="button_Delete_Click" 
        Text="delete" />
    <asp:Label ID="Label1" runat="server" Text="HAHAH"></asp:Label>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT [UserName] FROM [vw_aspnet_Users]">
    </asp:SqlDataSource>
    <br />

    </asp:Content>

