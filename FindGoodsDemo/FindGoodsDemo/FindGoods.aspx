﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindGoods.aspx.cs" Inherits="FindGoodsDemo.FindGoods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/FindGoods.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="background-color:#ffda79">
        搜索条件：<br />
        ----------------------------------------------------------------------------------------------------------------------<br />
        关键字：<asp:TextBox ID="txtGName" runat="server"></asp:TextBox>
        <br />
        <br />
        类别：<asp:DropDownList ID="ddlGType" runat="server" DataSourceID="sqlGType" DataTextField="tName" DataValueField="tID" OnDataBound="ddlGType_DataBound">
        </asp:DropDownList>
        <br />
        <br />
        价格区间：<asp:TextBox ID="txtPriceLow" runat="server" Width="56px"></asp:TextBox>
        -<asp:TextBox ID="txtPriceHigh" runat="server" Width="56px"></asp:TextBox>
        <br />
        <br />
        销售量：
         
        <asp:RadioButtonList ID="rdltSaleQty" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
            <asp:ListItem>显示全部</asp:ListItem>
            <asp:ListItem Value="19">20以下</asp:ListItem>
            <asp:ListItem Value="49">20-49</asp:ListItem>
            <asp:ListItem Value="50">50件以上</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="btnFind" runat="server" Text="搜索" OnClick="btnFind_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="sqlGType" runat="server" ConnectionString="<%$ ConnectionStrings:SMDBConnectionString %>" SelectCommand="SELECT * FROM [GoodsType]"></asp:SqlDataSource>
         <asp:SqlDataSource ID="sqlGoods" runat="server" ConnectionString="<%$ ConnectionStrings:SMDBConnectionString %>" SelectCommand="SELECT Goods.*,GoodsType.tName from [Goods]
            inner join [GoodsType] on Goods.tID=GoodsType.tID"></asp:SqlDataSource>
        <br />
        搜索结果：<br />
        -----------------------------------------------------------------------------------------------------------------------<asp:GridView ID="grdGoods" runat="server" AutoGenerateColumns="False" DataKeyNames="gdID" BorderWidth="0px" DataSourceID="sqlGoods" ShowHeader="False" AllowPaging="True" PageSize="3" EnableModelValidation="True">
            <Columns>
                <asp:ImageField DataImageUrlField="gdImage" ItemStyle-CssClass="center" DataImageUrlFormatString="goods/l{0}">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="gdID" ItemStyle-CssClass="name" DataNavigateUrlFormatString="" DataTextField="gdName" >
                </asp:HyperLinkField>
                <asp:TemplateField ItemStyle-CssClass="center">
                <ItemTemplate>
                    <asp:Label ID="IbPrice" runat="server" Text='<%#Eval("gdPrice","{0:C}") %>' CssClass="color" /><br /><br />
                     <asp:Label ID="IbCity" runat="server" Text='<%#Eval("gdCity") %>'/><br />
                    <img id="img" src="icon/mail.jpg" alt="" />
                     <asp:Label ID="IbFeight" runat="server" Text='<%#Eval("gdFeight","{0:C}") %>'/>
                </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField ItemStyle-CssClass="center">
                    <ItemTemplate>
                        销量：<asp:Label ID="IbSaleQty" runat="server" Text='<%#Eval("gdSaleQty") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField  DataField="tName" ItemStyle-CssClass="center"/>
            </Columns>
            <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>
        ----------------------------------<br />
    </form>
</body>
</html>
