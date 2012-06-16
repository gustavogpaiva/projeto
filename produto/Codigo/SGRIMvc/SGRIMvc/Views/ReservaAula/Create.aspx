<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.RESERVA_AULAS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IDReserva_Aula) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IDReserva_Aula) %>
                <%: Html.ValidationMessageFor(model => model.IDReserva_Aula) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Data_Reserva) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Data_Reserva) %>
                <%: Html.ValidationMessageFor(model => model.Data_Reserva) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Professor_Aula) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Professor_Aula) %>
                <%: Html.ValidationMessageFor(model => model.Professor_Aula) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Disciplina_Aula) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Disciplina_Aula) %>
                <%: Html.ValidationMessageFor(model => model.Disciplina_Aula) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Horario_Aula) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Horario_Aula) %>
                <%: Html.ValidationMessageFor(model => model.Horario_Aula) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Dia_Aula) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Dia_Aula) %>
                <%: Html.ValidationMessageFor(model => model.Dia_Aula) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Equipamento_Aula) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Equipamento_Aula) %>
                <%: Html.ValidationMessageFor(model => model.Equipamento_Aula) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Sala_Aula) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Sala_Aula) %>
                <%: Html.ValidationMessageFor(model => model.Sala_Aula) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

