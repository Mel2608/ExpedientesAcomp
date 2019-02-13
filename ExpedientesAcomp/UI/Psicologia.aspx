<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Psicologia.aspx.cs" Inherits="UI.Psicologia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="ExpedientePrincipal.aspx">Expediente</a></li>
            <li class="breadcrumb-item"><a href="ListaConsultas.aspx">Lista de Consultas</a></li>
            <li class="breadcrumb-item"><a href="Consulta.aspx">Consulta</a></li>
            <li class="breadcrumb-item active" aria-current="page">Psicología</li>
        </ol>
    </nav>

    <div class="container" aria-multiline="True">
        <asp:Literal ID="lblMensaje" runat="server" Visible="false"></asp:Literal>
        <br />
        <div class="form-row">
            <asp:Label ID="lblTitulo" runat="server" Text="Psicología" Font-Bold="True" Font-Size="XX-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
        <br />
        <div>
            <asp:Label ID="lblDiagnosMedico" runat="server" Font-Bold="False" Text="Diagnóstico Médico: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtDiagnMedico" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblTratamientos" runat="server" Font-Bold="False" Text="Tratamientos: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtTratamientos" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}" Rows="3" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
          <div>
            <asp:Label ID="lblMotivoConsulta" runat="server" Font-Bold="False" Text="Motivo de consulta/ sintomatología: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtMotivoConsulta" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}" Rows="5" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
            <div>
            <asp:Label ID="lblComposiciónFamiliar" runat="server" Font-Bold="False" Text="Composición familiar: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtComposicFam" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}" Rows="5" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lblLaborEduc" runat="server" Font-Bold="False" Text="Aspectos Laborales y educativos: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtLaboralEducativ" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}" Rows="5" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblHistoria" runat="server" Font-Bold="False" Text="Historia Personal: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtHistPersonal" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}" Rows="8" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lblDiagPresuntiv" runat="server" Font-Bold="False" Text="Impresión Diágnostica presuntiva/Psicodinamia: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtDiagPresuntiv" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}" Rows="5" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
          <div>
            <asp:Label ID="lblObjsTerap" runat="server" Font-Bold="False" Text="Objetivos terapéuticos: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtObjsTerapeuticos" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}" Rows="5" TextMode="MultiLine"></asp:TextBox>
        </div>
         <br />
          <div>
            <asp:Label ID="lblTratamiento" runat="server" Font-Bold="False" Text="Tratamiento empleado: "></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtTratamiento" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>

              <br />
               <br />
                <div class="form-group offset-sm-6">
            <asp:Button ID="guardarBtn" type="button" class="btn btn-danger" runat="server" Text="Guardar"  ValidationGroup="guardar" />
        </div>
               <br />


    </div>

</asp:Content>
