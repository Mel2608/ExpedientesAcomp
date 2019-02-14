<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="HojaEvolucion.aspx.cs" Inherits="UI.HojaEvaluacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="ExpedientePrincipal.aspx">Expediente</a></li>
            <li class="breadcrumb-item"><a href="ListaConsultas.aspx">Lista de Consultas</a></li>
            <li class="breadcrumb-item"><a href="Consulta.aspx">Consulta</a></li>
            <li class="breadcrumb-item active" aria-current="page">Hoja Evolución</li>
        </ol>
    </nav>

    <div class="container" aria-multiline="True">
        <asp:Literal ID="lblMensaje" runat="server" Visible="false"></asp:Literal>
        <br />
        <div class="form-row">
            <asp:Label ID="lblTitulo" runat="server" Text="Hoja de Evolución" Font-Bold="True" Font-Size="XX-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="lblNombre" runat="server" Font-Bold="False" Text="Nombre Completo: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtNombre" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblDiagnostico" runat="server" Font-Bold="False" Text="Diágnostico Médico: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtDiagnostico" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblEvolucion" runat="server" Font-Bold="False" Text="Evolución: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtEvolucion" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}" Rows="20" TextMode="MultiLine"></asp:TextBox>
        </div>

        <br />
        <br />
        <div class="form-group offset-sm-6">
            <asp:Button ID="guardarBtn" type="button" class="btn btn-danger" runat="server" Text="Guardar" ValidationGroup="guardar" />
        </div>
        <br />



    </div>
</asp:Content>
