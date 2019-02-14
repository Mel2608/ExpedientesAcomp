<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="TerapiaFisica.aspx.cs" Inherits="UI.TerapiaFisica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="ExpedientePrincipal.aspx">Expediente</a></li>
            <li class="breadcrumb-item"><a href="ListaConsultas.aspx">Lista de Consultas</a></li>
            <li class="breadcrumb-item"><a href="Consulta.aspx">Consulta</a></li>
            <li class="breadcrumb-item active" aria-current="page">Terapia Física</li>
        </ol>
    </nav>
    <div class="container">
        <br />
        <div class="form-row">
            <div class="form-group col-sm-1">
                <asp:Button type="button" class="btn btn-info" ID="citaslBtn" runat="server" Text="Citas" />
            </div>
        </div>
        <br />
        <asp:Literal ID="lblMensaje" runat="server" Visible="false"></asp:Literal>
        <div class="form-row">
            <asp:Label ID="lblTitulo" runat="server" Text="Terapia Física" Font-Bold="True" Font-Size="XX-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="lblDiagnosMedic" runat="server" Font-Bold="False" Text="Diágnostico Médico"></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtDiagMedico" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblDetalleAfecc" runat="server" Font-Bold="False" Text="¿Cómo, cuando, empezó su situación (afección) de salud?"></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtDetalleAfecc" runat="server" TextMode="MultiLine" BorderColor="#16ACB8" BorderStyle="Solid"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblSintomActuales" runat="server" Font-Bold="False" Text="Síntomas y Signos Actuales"></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtSintomActuales" runat="server" TextMode="MultiLine" BorderColor="#16ACB8" BorderStyle="Solid"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblObservacion" runat="server" Font-Bold="False" Text="Observación y Palpación"></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtObsPalpac" runat="server" TextMode="MultiLine" BorderColor="#16ACB8" BorderStyle="Solid"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblObjsTratamient" runat="server" Font-Bold="False" Text="Objetivos del Tratamiento"></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtObjsTratamiento" runat="server" TextMode="MultiLine" BorderColor="#16ACB8" BorderStyle="Solid"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblTratamientFisicoT" runat="server" Font-Bold="False" Text="Tratamiento Fisicoterapéutico"></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtTratamFiscoTerap" runat="server" TextMode="MultiLine" BorderColor="#16ACB8" BorderStyle="Solid"></asp:TextBox>
        </div>
        <br />

        <div class="form-group offset-sm-6">
            <asp:Button ID="guardarBtn" type="button" class="btn btn-danger" runat="server" Text="Guardar" ValidationGroup="guardar" />
        </div>
        <br />
        <br />

    </div>


</asp:Content>
