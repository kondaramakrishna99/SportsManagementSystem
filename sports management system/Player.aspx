<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="Player.aspx.cs" Inherits="Player" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">
&nbsp;<p style="vertical-align: middle; font-size: large; color: #397D47;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PLAYER&nbsp;INFO<p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
        Name&nbsp;&nbsp; :         <asp:TextBox ID="txtbox_name" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle; text-align: justify;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        ID&nbsp;&nbsp;&nbsp; :
        <asp:TextBox ID="txtbox_id" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact num&nbsp;&nbsp;&nbsp; :&nbsp;<asp:TextBox 
            ID="txtbox_contact" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Room num&nbsp;&nbsp;&nbsp; 
        :&nbsp;
        <asp:TextBox ID="txtbox_roomno" runat="server"></asp:TextBox>
        &nbsp;</p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Height&nbsp;&nbsp;&nbsp; :&nbsp;
        <asp:TextBox ID="txtbox_height" runat="server"></asp:TextBox>
        cms</p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Weight&nbsp;&nbsp;&nbsp; :&nbsp;
        <asp:TextBox ID="txtbox_weight" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        mdetails&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" 
            Width="150px">
            <asp:ListItem>student</asp:ListItem>
            <asp:ListItem>professor</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Status&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="dropdownlist_status" runat="server" Height="25px" 
            Width="150px">
            <asp:ListItem>normal[not banned]</asp:ListItem>
            <asp:ListItem>banned</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_playerinfo" runat="server" Text="submit" Width="76px" 
            onclick="btn_playerinfo_Click" />
    </p>
    <p style="vertical-align: middle;">
        &nbsp;</p>
    <p style="vertical-align: middle;">
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>

