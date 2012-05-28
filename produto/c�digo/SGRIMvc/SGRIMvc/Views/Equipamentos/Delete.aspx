<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.EQUIPAMENTOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Excluir</h2>

    <h3>Tem certeza que deseja excluir este registro?</h3>
    <fieldset>
        <legend>Equipamento</legend>
        
        <div class="display-label">ID do Equipamento</div>
        <div class="display-field"><%: Model.IDEquipamento %></div>
        
        <div class="display-label">Código do Patrimônio</div>
        <div class="display-field"><%: Model.Codigo_Patrimonio %></div>
        
        <div class="display-label">Tipo do Equipamento</div>
        <div class="display-field"><%: Model.Tipo_Equipamento %></div>
        
        <div class="display-label">Descrição do Equipamento</div>
        <div class="display-field"><%: Model.Descricao_Equipamento %></div>
        
        <div class="display-label">Status do Equipamento</div>
        <div class="display-field"><%: Model.Status_Equipamento %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>

</asp:Content>

