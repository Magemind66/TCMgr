﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeskTop.aspx.cs" Inherits="TCMgr.DeskTop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="refresh" content="500">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/><title>我的桌面</title>
    <link href="themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
    <script src="JS/common.js" type="text/javascript"></script>
    <script type="text/javascript" src="/JS/zDialog.js"></script>   
    <script type="text/javascript">
        $(window).resize(function () {
            var width = $(window).width() - 10;
            var height = $(window).height() - 10;

            $('#cc').width(width);
            $('#cc').height(height);
            $('#cc').layout();   //窗口改变大小时加载  
        });
    </script>
    
</head>
<body >
    <form id="form1" runat="server">
    <div id="cc" style="width:98%; height:100%">
        <table style="width:100%; height:100%">
        <tr>
            <td style="width:60%; height:100%">
                <div id="list" class="easyui-panel" title="房屋信息" style="padding:5px;"  data-options="fit:true,iconCls:'icon-save',collapsible:true,closable:true">
                    <asp:GridView ID="gvList" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" 
                        Width="524px" HorizontalAlign="Center" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="序号" />
                            <asp:BoundField DataField="FlatsID" HeaderText="楼栋号" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RoomID" HeaderText="房间号" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RoomStatus" HeaderText="是否出租" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FlatsAddr" HeaderText="楼栋地址" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:TCMgrConnectionString %>" 
                        SelectCommand="select a.ID,a.FlatsID,a.RoomID,(case when a.RoomStatus='0' then '否' else '是' end) as RoomStatus,b.FlatsAddr from dbo.tabRoom a left join dbo.tabFlatsAdmin b on a.FlatsID=b.FlatsID">
                    </asp:SqlDataSource>
                </div>
            </td>
            <td style="width:40%; height:100%">
                <div id="note" class="easyui-panel" title="通知" style="padding:5px;"  data-options="fit:true,iconCls:'icon-save',collapsible:true,closable:true">
                    <ul>
                        <li>easyui is a collection of user-interface plugin based on jQuery.</li>
                        <li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
                        <li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
                        <li>complete framework for HTML5 web page.</li>
                        <li>easyui save your time and scales while developing your products.</li>
                        <li>easyui is very easy but powerful.</li>
                    </ul>
                </div>
            </td>
        </tr>
        
        </table>
    </div>
    </form>
</body>
</html>
