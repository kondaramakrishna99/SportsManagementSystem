<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="Tournament.aspx.cs" Inherits="Tournament" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">

    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      <h3>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  CREATE TOURNAMENT&nbsp;</h3></p>
                                        <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Tournament Name&nbsp; :<asp:TextBox ID="textbox_tournament" runat="server" Width="125px"></asp:TextBox>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Location&nbsp; :&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="dropdownlist_location" runat="server" Height="30px" Width="125px" 
            AutoPostBack="True" 
            onselectedindexchanged="dropdownlist_location_SelectedIndexChanged">
            <asp:ListItem>DA-IICT</asp:ListItem>
            <asp:ListItem>Non-DAIICT</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp; :         
        <asp:TextBox ID="textbox_address" runat="server" Width="125px" Enabled="False"></asp:TextBox>
        (if Non-DAIICT)</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sports&nbsp; :&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" 
            Width="124px">
            <asp:ListItem>cricket</asp:ListItem>
            <asp:ListItem>chess</asp:ListItem>
            <asp:ListItem>badminton</asp:ListItem>
            <asp:ListItem>basketball</asp:ListItem>
            <asp:ListItem>volleyball</asp:ListItem>
            <asp:ListItem>tabletennis</asp:ListItem>
            <asp:ListItem>football</asp:ListItem>
        </asp:ListBox>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Start Date &nbsp;:
        <asp:TextBox ID="date_start" runat="server" Width="125px" ></asp:TextBox>
        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Animated="False" 
            TargetControlID="date_start" CssClass="MyCalendar">
        </cc1:CalendarExtender>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        End Date&nbsp; :
        <asp:TextBox ID="date_end" runat="server" Width="125px"></asp:TextBox>
        <cc1:CalendarExtender ID="CalendarExtender2" runat="server" 
            TargetControlID="date_end" CssClass="MyCalendar" >
        </cc1:CalendarExtender>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_create" runat="server" Height="27px" Text="create" 
            Width="80px" onclick="btn_create_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
       
</asp:Content>

