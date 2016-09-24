<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RallyCap.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>

    Here is a sample list of games:<br />

    comboBox1.ValueMember = "Key";
comboBox1.DisplayMember = "Value";

comboBox1.Items.Add(new KeyValuePair<int, string>(102454, "Item1"));

</asp:Content>
