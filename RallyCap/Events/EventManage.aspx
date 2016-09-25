<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventManage.aspx.cs" Inherits="RallyCap.Events.EventManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  
    <a href="EventAdd">Attend New Event</a> <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            You are not attending any events.
        </EmptyDataTemplate>
        <Columns>
            <asp:BoundField DataField="GameId" HeaderText="GameId" Visible="false" SortExpression="GameId" />
            <asp:BoundField DataField="GameDate" HeaderText="GameDate" SortExpression="GameDate" />
            <asp:BoundField DataField="HomeTeam" HeaderText="HomeTeam" SortExpression="HomeTeam" />
            <asp:BoundField DataField="VisitorTeam" HeaderText="VisitorTeam" SortExpression="VisitorTeam" />
            <asp:BoundField DataField="HomeTeamName" HeaderText="HomeTeamName" SortExpression="HomeTeamName" />
            <asp:BoundField DataField="AwayTeamName" HeaderText="AwayTeamName" SortExpression="AwayTeamName" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" Visible="false" SortExpression="UserId" />
            <asp:BoundField DataField="GameId1" HeaderText="GameId1" Visible="false" SortExpression="GameId1" />
            <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
            <asp:BoundField DataField="Row" HeaderText="Row" SortExpression="Row" />
            <asp:BoundField DataField="Seat" HeaderText="Seat" SortExpression="Seat" />
            <asp:BoundField DataField="FanTeam" HeaderText="Favored Team" SortExpression="FanTeam" />
        </Columns>
    </asp:GridView>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RallyCap %>" SelectCommand="select * from vw_Game Game inner join tbl_Game_Attendee attendee on  attendee.GameId = game.GameId"></asp:SqlDataSource>

    
</asp:Content>
