﻿<%@ Page Title="OpenID Provider rejects No-Encryption Association Sessions over http"
	Language="C#" MasterPageFile="~/OP/ProviderTests.master" AutoEventWireup="true"
	CodeFile="AssociateHttpNoEncryption.aspx.cs" Inherits="OP_AssociateHttpNoEncryption" %>

<asp:Content ContentPlaceHolderID="TestBody" runat="Server">
	<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
		<asp:View ID="View1" runat="server">
			<asp:Panel runat="server" DefaultButton="beginButton">
				<asp:Label ID="Label1" runat="server" Text="OpenID Identifier:" /> <asp:TextBox ID="identifierBox"
					runat="server" />
				<asp:Button ID="beginButton" runat="server" Text="Begin" OnClick="beginButton_Click" />
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="identifierBox"
					ErrorMessage="Enter an identifier first."></asp:RequiredFieldValidator>
				<asp:Label ID="errorLabel" runat="server" EnableViewState="False" ForeColor="Red"
					Visible="False" />
			</asp:Panel>
		</asp:View>
		<asp:View ID="View2" runat="server">
			Provider endpoint: <asp:Label ID="endpointLabel" runat="server" EnableViewState="false" />
			<br />
			Result: <asp:Label ID="resultLabel" runat="server" EnableViewState="False" />
			<br />
			Details:<br />
			<asp:Label ID="detailsLabel" runat="server" EnableViewState="false" />
		</asp:View>
	</asp:MultiView>
</asp:Content>