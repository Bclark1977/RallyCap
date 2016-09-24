<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventAdd.aspx.cs" Inherits="RallyCap.Events.EventAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function ToggleSeatSelection(onOrOff) {
            alert(onOrOff);
            var item = document.getElementById("divSeatSelection");
            
            item.style.display = onOrOff == "InPerson" ? "block" : "none";
        }

    </script>
    <div>
        <asp:Label runat="server" AssociatedControlID="lstEventType" CssClass="col-md-2 control-label">Game Date</asp:Label>
        <asp:Calendar runat="server" id="txtCalendar" ></asp:Calendar>
    </div>
    <div>
        
        <asp:Label runat="server" AssociatedControlID="lstEventType" CssClass="col-md-2 control-label">Game Type</asp:Label>
        <div class="input">
            <asp:ListBox runat="server" ID="lstEventType" Rows="1" SelectionMode="Single">
                <asp:ListItem Text="- Select type -" Value="" />
                <asp:ListItem Text="Hockey" />
                <asp:ListItem Text="BaseBall" />
                <asp:ListItem Text="Football" />
                <asp:ListItem Text="Soccer" />
            </asp:ListBox>
        </div>
    </div>
    <br />

    <div>
        <asp:Label runat="server" AssociatedControlID="lstCity" CssClass="col-md-2 control-label">City</asp:Label>

        <div class="input">
            <asp:ListBox runat="server" ID="lstCity" Rows="1" SelectionMode="Single">
                <asp:ListItem Text="- Select City -" />
                <asp:ListItem Text="Vancouver" />
                <asp:ListItem Text="Calgary" />
            </asp:ListBox>
        </div>
    </div>
    <br />
    <div>
        <asp:Label runat="server" AssociatedControlID="lstCity" CssClass="col-md-2 control-label">Attending</asp:Label>

        <div class="input">
            <asp:ListBox runat="server" ID="lstAttendeeType" Rows="1" SelectionMode="Single"  onchange="ToggleSeatSelection(this.value)">
                <asp:ListItem Text="Remote" value="Remote" />
                <asp:ListItem Text="In Person" value="InPerson" />                
            </asp:ListBox>
        </div>
    </div>
    <br />
    <div>

        <div id="divSeatSelection" style="display: none;">
            <asp:Label runat="server" AssociatedControlID="txtSection" CssClass="col-md-2 control-label">Seat Selection</asp:Label>
            <br clear="both" />
            <div class="input">
                <div>
                    <asp:Label Style="text-align: right;" runat="server" AssociatedControlID="txtSection" CssClass="col-md-2 control-label">Section</asp:Label>
                    <asp:TextBox runat="server" ID="txtSection" Width="100" />
                </div>
                <div>
                    <asp:Label Style="text-align: right;" runat="server" AssociatedControlID="txtRow" CssClass="col-md-2 control-label">Row</asp:Label>

                    <asp:TextBox runat="server" ID="txtRow" Width="100" />
                </div>
                <div>
                    <asp:Label Style="text-align: right;" runat="server" AssociatedControlID="txtSeat" CssClass="col-md-2 control-label">Seat</asp:Label>

                    <asp:TextBox runat="server" ID="txtSeat" Width="100" />
                </div>
            </div>
        </div>

    </div>

</asp:Content>
