<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="listteams.aspx.cs" Inherits="listteams" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">
&nbsp;<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Team List</h3>
    <p>Select the team to modify&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="dropdownlist_select" runat="server" Height="30px" 
            Width="125px">
            <asp:ListItem>Hwing</asp:ListItem>
            <asp:ListItem>Awing</asp:ListItem>
            <asp:ListItem>Bwing</asp:ListItem>
            <asp:ListItem>Cwing</asp:ListItem>
            <asp:ListItem>Dwing</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_modify" runat="server" onclick="btn_modify_Click" 
            Text="modify" Width="71px" />
        &nbsp;</p>
</asp:Content>

