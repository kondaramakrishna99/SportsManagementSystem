<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" AutoEventWireup="true" CodeFile="RegisterNewUser.aspx.cs" Inherits="RegisterNewUser" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" Runat="Server">
<div id="new user">
<h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NEW USER WIZARD&nbsp;&nbsp;&nbsp;&nbsp; </h3>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="356px" 
        Width="398px" ContinueDestinationPageUrl="~/Default.aspx">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</div>
</asp:Content>

