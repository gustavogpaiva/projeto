<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.FUNCIONARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	mensagemSucesso
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <h2>Email enviado com sucesso, para voltar <%: Html.ActionLink("clique aqui", "Index") %></h2>

</asp:Content>
