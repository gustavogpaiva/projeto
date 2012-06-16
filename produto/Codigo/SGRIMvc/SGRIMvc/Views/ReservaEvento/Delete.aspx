<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.RESERVA_EVENTOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cancelar Reserva</h2>

    <h3>Tem certeza que deseja cancelar esta reserva?</h3>
    <fieldset>
        <legend>Campos</legend>
        
        <div class="display-label">IDReserva_Evento</div>
        <div class="display-field"><%: Model.IDReserva_Evento %></div>
        
        <div class="display-label">Nome_Evento</div>
        <div class="display-field"><%: Model.Nome_Evento %></div>
        
        <div class="display-label">Data_Evento</div>
        <div class="display-field"><%: Model.Data_Evento %></div>
        
        <div class="display-label">Prorfessores_Evento</div>
        <div class="display-field"><%: Model.Prorfessores_Evento %></div>
        
        <div class="display-label">Sala_Evento</div>
        <div class="display-field"><%: Model.Sala_Evento %></div>
        
        <div class="display-label">Equipamentos_Evento</div>
        <div class="display-field"><%: Model.Equipamentos_Evento %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>

</asp:Content>

