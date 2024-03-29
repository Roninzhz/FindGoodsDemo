﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddGoods.aspx.cs" Inherits="GoodManagerDemp.AddGoods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            【添加商品】<br />
            --------------------------------------------------------------------------------------------------------------<br />
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
            供应商城市：<asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            <br />
            运费：<asp:TextBox ID="txtFeight" runat="server"></asp:TextBox>
            <br />
            商品图片：<asp:FileUpload ID="fldImg" runat="server" />
            <br />
            商品描述：<asp:TextBox ID="txtInfo" runat="server" CssClass="auto-style1" Height="98px" Width="258px"></asp:TextBox>
            <br />
            <asp:Button ID="btn_Add" runat="server" Text="添加" OnClick="btn_Add_Click" />
        </div>
    </form>
</body>
</html>
