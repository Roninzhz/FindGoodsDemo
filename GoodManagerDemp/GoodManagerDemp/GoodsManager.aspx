﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoodsManager.aspx.cs" Inherits="GoodManagerDemp.GoodsManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            【商品管理】<br />
            ----------------------------------------------------------------------------------------------------------------------<br />
            <asp:Button ID="btnAdd" runat="server"  Text="添加商品" OnClick="btnAdd_Click" />
        </div><br /><br />
        <div>
            <asp:GridView ID="grdGoods" runat="server" AutoGenerateColumns="false" DataKeyNames="gdID" BorderWidth="1px" AllowPaging="true" DataSourceID="sqlGoods" PageSize="5">
                <HeaderStyle CssClass="hstyle" />
                <Columns>
                    <asp:BoundField DataField="gdCode" ItemStyle-CssClass="center" HeaderText="编号" />
                    <asp:BoundField DataField="tName" ItemStyle-CssClass="center" HeaderText="类别" />
                    <asp:HyperLinkField DataNavigateUrlFields="gdID" ItemStyle-CssClass="name" HeaderText="名称" DataTextField
                        ="gdName" DataNavigateUrlFormatString="" />
                    <asp:BoundField DataField="gdPrice" ItemStyle-CssClass="center" HeaderText="价格" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="gdQuantity" ItemStyle-CssClass="center" HeaderText="库存量" />
                    <asp:BoundField DataField="gdAddTime" ItemStyle-CssClass="center" HeaderText="上架时间" DataFormatString="{0:d}" />
                    <asp:TemplateField HeaderText="编辑" ItemStyle-CssClass="center">
                        <ItemTemplate>
                            <a href='EditGoods.aspx?gdid=<%#Eval("gdID")%>'>
                                <asp:Image ID="Image1" runat="server" CssClass="noborder" ToolTip="编辑商品" ImageUrl="icon/mod.gif" />
                            </a>&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton2" runat="server" ToolTip="删除商品" ImageUrl="icon/delete.gif" CommandName="delete" OnClientClick="return confirm('确定要删除该商品？');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
            </asp:GridView>
            <asp:SqlDataSource ID="sqlGoods" runat="server" ConnectionString="<%$ConnectionStrings:smdb%>" SelectCommand="select Goods.*,tName from Goods join GoodsType on Goods.tID=GoodsType.tID order by gdAddTime" DeleteCommand="delete from Goods where gdID=@gdID">
                <DeleteParameters>
                    <asp:Parameter Name="gdID" Type="Int32" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div> 
    </form>
</body>
</html>
