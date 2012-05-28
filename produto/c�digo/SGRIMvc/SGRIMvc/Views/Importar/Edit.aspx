<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Importar Professores e Funcionários
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Importar Professores e Funcionários</h2>

    <form action="\Importar\ImportaProfessores" method="post" enctype="multipart/form-data"/>
    <label>Arquivo: <input type="file" name="file" /></label>
    <input type="submit" value="Carregar"  />

</asp:Content>
