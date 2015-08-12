<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="NewItem.aspx.cs" Inherits="NewItem" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">
&nbsp;<p style="vertical-align: middle; font-size: large; color: #397D47;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New&nbsp; Purchased Item
        <p runat="server"
                                            style="vertical-align: middle;" id="para_item">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Item Name&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="dropdownlist_items" runat="server" Height="25px" 
                                                Width="125px">
                                                <asp:ListItem>bats</asp:ListItem>
                                                <asp:ListItem>volleyball</asp:ListItem>
                                                <asp:ListItem>basketbal</asp:ListItem>
                                            </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;
    </p>
                                    <p runat="server" id="para_clickhere" visible=true style="vertical-align: middle;">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            if item required is not present&nbsp; in the list
                                            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">CLICK 
                                            HERE</asp:LinkButton>
    </p>
                                    <p runat="server" visible="false" id="para_newItem"  style="vertical-align: middle;">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            Item Name&nbsp;&nbsp; :
                                            <asp:TextBox ID="txtbox_newItem" runat="server"></asp:TextBox>
    </p>
                                    <p runat="server" visible="false" id="para_sport"  
                                        style="vertical-align: middle;">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sport related&nbsp;&nbsp;&nbsp; 
                                            :
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle; text-align: justify;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;quantity&nbsp;&nbsp; :         
        <asp:TextBox ID="txtbox_quantity" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cost per piece&nbsp;&nbsp; :&nbsp;<asp:TextBox 
            ID="txtbox_costperpiece" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;purchase date&nbsp;&nbsp;&nbsp; 
        :&nbsp;
        <asp:TextBox ID="date_purchase" runat="server"></asp:TextBox>
        &nbsp;<cc1:CalendarExtender ID="CalendarExtender1" runat="server" 
            TargetControlID="date_purchase">
        </cc1:CalendarExtender>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Seller Details&nbsp;&nbsp;&nbsp; :&nbsp;
        <asp:TextBox ID="txtbox_sellerDetails" runat="server"></asp:TextBox>
        </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Remarks&nbsp;&nbsp;&nbsp; :&nbsp;
        <asp:TextBox ID="txtbox_remarks" runat="server"></asp:TextBox>
    </p>
    <p style="vertical-align: middle;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_playerinfo" runat="server" Text="submit" Width="76px" />
    </p>
    <p style="vertical-align: middle;">
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

