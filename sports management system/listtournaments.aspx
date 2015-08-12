<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="listtournaments.aspx.cs" Inherits="listtournaments" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tournaments So Far</h3>
    <p>Select the team to modify&nbsp;&nbsp; :&nbsp;&nbsp; &nbsp;<asp:DropDownList 
            ID="dropdownlist_select" runat="server" Height="30px" 
            Width="133px" 
            onselectedindexchanged="dropdownlist_select_SelectedIndexChanged">
        <asp:ListItem>8-X</asp:ListItem>
        <asp:ListItem>interwing</asp:ListItem>
        <asp:ListItem>interbatch</asp:ListItem>
        <asp:ListItem>intercollege</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;<asp:Button ID="btn_modify" runat="server" onclick="btn_modify_Click" 
            Text="modify" />
    </p>

</asp:Content>

