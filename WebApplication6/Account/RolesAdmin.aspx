<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RolesAdmin.aspx.cs" Inherits="WebApplication6.Account.RolesAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>角色管理</h1>
        <div>
            <h2>角色创建
            </h2>
            <asp:Panel ID="Panel2" runat="server">
                <div>
                    <p>
                        角色创建
                    </p>
                    <div>
                        角色名称：<asp:TextBox ID="TextBoxRoleName" runat="server"></asp:TextBox>
                        <asp:Button ID="ButtonRolechuangjian" runat="server" Text="创建角色" OnClick="ButtonRolechuangjian_Click" ValidationGroup="cjjs" />
                        <br />
                        <asp:Label ID="Labelcjts" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxRoleName" CssClass="text-warning" ErrorMessage="RequiredFieldValidator" ValidationGroup="cjjs">您未输入需创建的角色名称。</asp:RequiredFieldValidator>
                    </div>
                </div>
            </asp:Panel>
            <hr />
            <asp:Panel ID="Panel1" runat="server">
                <div>
                    <p>
                        角色分配
                    </p>
                    <div>
                        用户名称：<asp:TextBox ID="yonghumingcheng" runat="server"></asp:TextBox>
                        角色名称：<asp:TextBox ID="juesemingcheng" runat="server"></asp:TextBox>
                        <asp:Button ID="Buttonjuesefenpei" runat="server" Text="划入角色" OnClick="Buttonjuesefenpei_Click" ValidationGroup="hrjs" />
                        <br />
                        <asp:Label ID="Labelhrts" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" CssClass="text-warning" ControlToValidate="yonghumingcheng" ValidationGroup="hrjs">您未输入用户名称。</asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" CssClass="text-warning" ControlToValidate="juesemingcheng" ValidationGroup="hrjs">您未输入角色名称。</asp:RequiredFieldValidator>
                    </div>
                </div>
            </asp:Panel>
            <hr />
            <asp:Panel ID="Panel3" runat="server">
                <div>
                    <p>
                        删除角色
                    </p>
                    <div>
                        角色名称：<asp:TextBox ID="TextBoxjueseshanchu" runat="server"></asp:TextBox>
                        <asp:Button ID="Buttonjueseshanchu" runat="server" Text="删除角色" OnClick="Buttonjueseshanchu_Click" ValidationGroup="scjs" />
                        <br />
                        <asp:Label ID="Labelscts" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxjueseshanchu" CssClass="text-warning" ErrorMessage="RequiredFieldValidator" ValidationGroup="scjs">您未输入需创建的角色名称。</asp:RequiredFieldValidator>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>

</asp:Content>
