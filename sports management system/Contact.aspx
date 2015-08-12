<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" Title="Contact Us" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phMain" runat="Server">
	<h1>
		Contact Me</h1>
	<p>
		Integer purus. Nulla laoreet, felis et tristique laoreet, felis elit sollicitudin
		magna, id tincidunt dui ligula vitae arcu. Nulla ac felis. Donec quis augue id ligula
		faucibus pharetra. In gravida pharetra neque.</p>
	<div id="contactForm">
		<fieldset style="width: 300px;">
			<legend>Who you are</legend><asp:Label ID="Label1" runat="server" AssociatedControlID="txtName" Text="<u>N</u>ame" /><br />
			<asp:TextBox ID="txtName" runat="server" AccessKey="n" TabIndex="1" /><br />
			<asp:Label ID="Label2" runat="server" AssociatedControlID="txtEmail" Text="E<u>m</u>ail address" /><br />
			<asp:TextBox ID="txtEmail" runat="server" AccessKey="m" TabIndex="2" /><br />
			<asp:Label ID="Label3" runat="server" AssociatedControlID="txtZip" Text="P<u>o</u>stal code" /><br />
			<asp:TextBox ID="txtZip" runat="server" AccessKey="o" TabIndex="3" />
		</fieldset>		
		<fieldset style="width: 300px;">
			<legend>What you have to say</legend>
			<asp:Label ID="Label4" runat="server" AssociatedControlID="rblImportance" Text="Importance:" />
			<asp:RadioButtonList ID="rblImportance" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" TabIndex="4">
				<asp:ListItem Value="low">Low</asp:ListItem>
				<asp:ListItem Selected="True" Value="normal">Normal</asp:ListItem>
				<asp:ListItem Value="high">High</asp:ListItem>
			</asp:RadioButtonList><br /><br />
			<asp:Label ID="Label5" runat="server" AssociatedControlID="txtMessage" Text="Me<u>s</u>sage" /><br />
			<asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Columns="30" Rows="6" AccessKey="s" TabIndex="5" />			
		</fieldset>		
		<fieldset style="width:300px;">
			<legend>Subscribe to Newsletter?</legend>
			<asp:RadioButtonList ID="rblSubscribe" runat="server" TabIndex="6">
				<asp:ListItem Selected="True" Value="true">Sure.</asp:ListItem>
				<asp:ListItem Value="false">No, thanks.</asp:ListItem>
			</asp:RadioButtonList>
		</fieldset>		
		<div style="margin-top:1em;"><asp:Button ID="btnSubmit" runat="server" Text="Send" TabIndex="7" AccessKey="e" /></div>
	</div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="phSidebar">
	<h3>Other ways to contact me</h3>
	<div class="sbcontentcontainer">
		<p>Integer purus. Nulla laoreet, felis et tristique laoreet, felis elit sollicitudin
			magna, id tincidunt dui ligula vitae arcu. Nulla ac felis. Donec quis augue id ligula
			faucibus pharetra. In gravida pharetra neque.</p>
	</div>
	<h3>
		Links</h3>
	<div class="sbcontentcontainer">
		<ul>
			<li><a href="javascript:;">Lorem ipsum</a></li>
			<li><a href="javascript:;">Felis et tristique</a></li>
			<li><a href="javascript:;">Sollicitudin magna</a></li>
			<li><a href="javascript:;">Fusce lorem</a></li>
			<li><a href="javascript:;">Faucibus pharetra</a></li>
		</ul>
	</div>
</asp:Content>
