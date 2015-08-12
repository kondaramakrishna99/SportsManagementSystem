<%@ Page Language="C#" MasterPageFile="~/AppMaster.master" Title="My Publications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phSidebar" runat="Server">
	<h3>My favorite authors</h3>	
	<div class="sbcontentcontainer">
		<asp:BulletedList ID="favAuthors" runat="server" DataSourceID="authorsDS" DisplayMode="HyperLink" DataTextField="authorname" DataValueField="authorurl" ToolTip="Author's web site">
		</asp:BulletedList>
		<br />
		<p>The above list is dynamically created from the database.</p>
	</div>
	<asp:SqlDataSource runat="server" ID="authorsDS" ConnectionString="<%$ ConnectionStrings:pubsConnectionString %>"
		ProviderName="<%$ ConnectionStrings:pubsConnectionString.ProviderName %>" SelectCommand="SELECT TOP 5 au_fname + ' ' + au_lname as authorname, 'javascript:;' as authorurl FROM authors" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="Server">
	<h1>My Publications</h1>
	<p>Pellentesque quis dolor risus congue rhoncus. Vestibulum ante ipsum primis in faucibus orci luctus et
		ultrices posuere cubilia Curae; Nulla elementum urna in velit. Integer vel ipsum.
		Quisque eget tellus. Phasellus rhoncus, libero et tristique euismod, sem wisi imperdiet
		felis, vitae dignissim diam erat sed nisl. Nunc rutrum erat ut wisi.</p>
	<asp:GridView ID="gvBooks" SkinID="booksSkin" runat="server" DataSourceID="booksDS" EmptyDataText="There are no data records to display." AutoGenerateColumns="false" summary="Table listing my my best selling publications." Caption="My best selling books" CaptionAlign="top">
		<Columns>			
			<asp:BoundField DataField="title" SortExpression="title" HeaderText="Title" />						
			<asp:BoundField DataField="notes" SortExpression="notes" HeaderText="Description" />
			<asp:BoundField DataField="price" SortExpression="price" DataFormatString="{0:C}" HeaderText="Price" HtmlEncode="false" ItemStyle-Width="50px" />
		</Columns>
	</asp:GridView>	
	<p>The above table is read from the "pubs" database.</p>
	<asp:SqlDataSource ID="booksDS" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString %>" ProviderName="<%$ ConnectionStrings:pubsConnectionString.ProviderName %>" SelectCommand="SELECT TOP 8 [title], [price], [notes] FROM [titles] ORDER BY [pubdate]" />
</asp:Content>
