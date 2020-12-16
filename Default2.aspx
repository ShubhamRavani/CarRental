<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1" PopupButtonID="TextBox1" />
    </div>
    </form>
</body>
</html>
