<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="person_payment.aspx.cs" Inherits="person_payment" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">
&nbsp;<p style="vertical-align: middle; font-size: large; color: #397D47;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payment as Salaries<p style="vertical-align: middle;">
        &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
        Name&nbsp;&nbsp; :         <asp:TextBox ID="txtbox_name" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle; text-align: justify;">
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; amount paid&nbsp;&nbsp;&nbsp;:
        <asp:TextBox ID="txtbox_amount" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle; text-align: justify;">
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; date of payment&nbsp;&nbsp;&nbsp; :<asp:TextBox 
            ID="date_payment" runat="server"></asp:TextBox>
        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" 
            TargetControlID="date_payment">
        </cc1:CalendarExtender>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        purpose&nbsp;&nbsp;&nbsp; 
        :&nbsp;
        <asp:TextBox ID="txtbox_purpose" runat="server"></asp:TextBox>
        &nbsp;</p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tournament&nbsp;&nbsp;&nbsp; :&nbsp;         <asp:TextBox ID="txtbox_tournament" runat="server"></asp:TextBox>
        </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btn_submit" runat="server" Text="submit" Width="76px" />
    </p>
    <p style="vertical-align: middle;">
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

