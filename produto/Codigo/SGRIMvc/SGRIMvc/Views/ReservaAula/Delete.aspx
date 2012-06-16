<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.RESERVA_AULAS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cancelar</h2>

    <h3>Tem certeza que deseja cancelar esta reserva?</h3>
    <fieldset>
        <legend>Campos</legend>
        
        <div class="display-label">IDReserva Aula</div>
        <div class="display-field"><%: Model.IDReserva_Aula %></div>
        
        <div class="display-label">Data da Reserva</div>
        <div class="display-field"><%: Model.Data_Reserva %></div>
        
        <div class="display-label">Professor_Aula</div>
        <div class="display-field"><%: Model.Professor_Aula %></div>
        
        <div class="display-label">Disciplina_Aula</div>
        <div class="display-field"><%: Model.Disciplina_Aula %></div>
        
        <div class="display-label">Horario_Aula</div>
        <div class="display-field"><%: Model.Horario_Aula %></div>
        
        <div class="display-label">Dia_Aula</div>
        <div class="display-field"><%: Model.Dia_Aula %></div>
        
        <div class="display-label">Equipamento_Aula</div>
        <div class="display-field"><%: Model.Equipamento_Aula %></div>
        
        <div class="display-label">Sala_Aula</div>
        <div class="display-field"><%: Model.Sala_Aula %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>

</asp:Content>

