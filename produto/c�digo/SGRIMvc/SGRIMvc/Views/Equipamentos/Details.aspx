<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.EQUIPAMENTOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Detalhes</h2>

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
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.IDEquipamento }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

