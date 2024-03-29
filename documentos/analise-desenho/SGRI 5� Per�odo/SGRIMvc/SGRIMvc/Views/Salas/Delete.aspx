﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.SALAS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Excluir</h2>

    <h3>Tem certeza que deseja excluir este registro?</h3>
    <fieldset>
        <legend>Sala</legend>
        
        <div class="display-label">ID da Sala</div>
        <div class="display-field"><%: Model.IDSala %></div>
        
        <div class="display-label">Descrição da Sala</div>
        <div class="display-field"><%: Model.Descricao_Sala %></div>
        
        <div class="display-label">Localização da Sala</div>
        <div class="display-field"><%: Model.Localizacao_Sala %></div>
        
        <div class="display-label">Capacidade da Sala</div>
        <div class="display-field"><%: Model.Capacidade_Sala %></div>
        
        <div class="display-label">Tipo da Sala</div>
        <div class="display-field"><%: Model.Tipo_Sala %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>

</asp:Content>

