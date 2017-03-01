<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TestDynamicHTMLValues.aspx.vb" Inherits="TestDynamicHTMLValues"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script type = "text/javascript">
    function GetCurrentTime() {
        document.getElementById("<%=btnSubmit.ClientID %>").click();
    }
</script>

</head>
<body>

<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="lblTime" runat="server" />
            <asp:Button ID="btnSubmit" runat="server" OnClick = "LoadNurses" style = "display:none" />
            <asp:RadioButtonList ID="rblRN" runat="server" EnableViewState="true"></asp:RadioButtonList>

        </ContentTemplate>
    </asp:UpdatePanel>
    <input type="button" class="btn btn-primary btn-rounded btn-xs" value = "Get Current Time" onclick = "GetCurrentTime()" />
</form>

</body>
</html>
