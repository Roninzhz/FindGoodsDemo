<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditGoods.aspx.cs" Inherits="GoodManagerDemp.EditGoods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            【修改商品】<br />
            --------------------------------------------------------------------------------------------------------------<br />
            商品ID：<asp:Label ID="lblID" runat="server"></asp:Label>
            <br />
            商品类别：<asp:DropDownList ID="ddlType" runat="server" DataSourceID="SqlDataSource1" DataTextField="tName" DataValueField="tID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMDBConnectionString %>" SelectCommand="SELECT * FROM GoodsType"></asp:SqlDataSource>
            <br />
            编号：<asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
            <br />
            名称：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            价格：<asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            <br />
            入库数量：<asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            <br />
            销量：<asp:Label ID="lblSaleQty" runat="server"></asp:Label>
            <br />
            供应商城市：<asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            <br />
            运费：<asp:TextBox ID="txtFeight" runat="server"></asp:TextBox>
            <br />
            商品图片：<asp:FileUpload ID="fldImg" runat="server" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="img" runat="server" Width="143px" />
            <br />
            商品描述：<asp:TextBox ID="txtInfo" runat="server" CssClass="auto-style1" Height="98px" Width="258px"></asp:TextBox>
            <br />
            <asp:Button ID="btn_Edit" runat="server" Text="修改" OnClick="btn_Edit_Click" />
        </div>
        </form>
</body>
</html>
