<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication6._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
    <div class="row">
        <h1 class="page-header">.net 4.5新特性</h1>
        <h2>普通绑定</h2>
        <dl class="dl-horizontal">
            <asp:Repeater ID="RptPerson" runat="server">
                <ItemTemplate>
                    <dt>名称</dt>
                    <dd><%# Eval("Name") %></dd>
                </ItemTemplate>
            </asp:Repeater>
        </dl>
        <h2>1.强类型数据控件 ItemType="WebApplication6.Models.Person"</h2>
        <dl class="dl-horizontal">
            <asp:Repeater ID="RptPerson1" runat="server" ItemType="WebApplication6.Models.Person">
                <ItemTemplate>
                    <dt>名称</dt>
                    <dd><%# Item.Name%></dd>
                </ItemTemplate>
            </asp:Repeater>
        </dl>
        <h2>2.SelectMethod</h2>
        <dl class="dl-horizontal">
            <asp:Repeater ID="RptPerson2" runat="server" SelectMethod="GetPerson">
                <ItemTemplate>
                    <dt>名称</dt>
                    <dd><%# Eval("Name") %></dd>
                </ItemTemplate>
            </asp:Repeater>
        </dl>
        <h2>3 Data Annotations Validation 是针对数据控件的回传验证的，就不试了</h2>
    </div>
</asp:Content>
