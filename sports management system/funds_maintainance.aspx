<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="funds_maintainance.aspx.cs" Inherits="funds_maintainance" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">
&nbsp;<p style="vertical-align: middle; font-size: large; color: #397D47;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Infrastructure Repair<p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
        Place &nbsp;&nbsp; :         <asp:TextBox ID="txtbox_place" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle; text-align: justify;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reason&nbsp;&nbsp;&nbsp; :
        <asp:TextBox ID="txtbox_reason" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Started 
        Date &nbsp;&nbsp; :&nbsp;<asp:TextBox 
            ID="date_start" runat="server"></asp:TextBox>
        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" 
            TargetControlID="date_start">
        </cc1:CalendarExtender>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        End Date&nbsp;&nbsp;&nbsp; 
        :&nbsp;
        <asp:TextBox ID="date_end" runat="server"></asp:TextBox>
        &nbsp;<cc1:CalendarExtender ID="CalendarExtender2" runat="server" 
            TargetControlID="date_end">
        </cc1:CalendarExtender>
                                        </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount&nbsp;&nbsp;&nbsp; :&nbsp; 
        <asp:TextBox ID="txtbox_amount" runat="server"></asp:TextBox>
        </p>
    <p style="vertical-align: middle;">
        &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Agency&nbsp;&nbsp;&nbsp; :&nbsp;
        <asp:TextBox ID="txtbox_agency" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Repair in charge&nbsp;&nbsp;&nbsp; :&nbsp;
        <asp:TextBox ID="txtbox_repair" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_playerinfo" runat="server" Text="submit" Width="76px" />
    </p>
    <p style="vertical-align: middle;">
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>

