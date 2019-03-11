<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="HistorialClinico.aspx.cs" Inherits="UI.HistorialClinico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="ExpedientePrincipal.aspx">Expediente</a></li>
            <li class="breadcrumb-item active" aria-current="page">Historial Clínico</li>
        </ol>
    </nav>
    <div class="container">
          <br />
         <asp:Literal ID="lblMensaje" runat="server" Visible="false"></asp:Literal>
        <div class="form-row">
            <asp:Label ID="titulo" runat="server" Text="Historial Clínico" Font-Bold="True" Font-Size="XX-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />

        <br />
            <div class="form-row">
            <asp:Label ID="subGeneral" runat="server" Text="General" Font-Bold="True" Font-Size="Larger" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="lblGrupoSanguineo" runat="server" Text="Grupo Sanguíneo"></asp:Label>
            <asp:TextBox ID="txtGrupoSanguineo" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
        <br />
          <br />
            <div class="form-row">
            <asp:Label ID="lblPatologPers" runat="server" Text="Antecedentes Patológicos Personales" Font-Bold="True" Font-Size="Larger" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
        <div class="form-row">
                <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="HTACheck" runat="server" Text="HTA" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
                <br />
                <br />
                <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="alergiasCheck" runat="server" Text="Alergias" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            <br />
                <br />
             <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="CancerCheck" runat="server" Text="Cáncer" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            </div>
        <div class="form-row">
                <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="hhTA" runat="server" Text="hTA" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
                <br />
                <br />
                 <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="dmCheck" runat="server" Text="DM" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            <br />
                <br />
             <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="neuropatiaCheck" runat="server" Text="Neuropatías" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            </div>
        <div class="form-row">
                <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="tabacoCheck" runat="server" Text="Tabaco" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
                <br />
                <br />
                 <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="alcoholCheck" runat="server" Text="Alcohol" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            <br />
                <br />
             <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="drogasCheck" runat="server" Text="Drogas" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            </div>
        <div class="form-row">
            <div class="form-group col-sm-4">
                 <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="cardioCheck" runat="server" Text="Cardiopatías" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            <div class="form-group col-sm-4">
                 <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="AIUCheck" runat="server" Text="AIU" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            <div class="form-group col-sm-4">
                </div>
            </div>
              <div class="form-group">
            <asp:Label ID="lblOtrosPatologPerson" runat="server" Text="Otros: " Font-Bold="True"></asp:Label>
             <asp:TextBox type="text" class="form-control" ID="txtOtrosPatologPerson" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
        <br />
        <br />
            <div class="form-row">
            <asp:Label ID="lblPatologHeredoFam" runat="server" Text="Antecedentes Patológicos Heredo Familiares" Font-Bold="True" Font-Size="Larger" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
         <div class="form-row">
                <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="htaFamCheck" runat="server" Text="HTA" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
                <br />
                <br />
                 <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="cardiopatiaFamCheck" runat="server" Text="Cardiopatías" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            <br />
                <br />
             <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="cancerFamCheck" runat="server" Text="Cáncer" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            </div>
        <br />
         <div class="form-row">
                <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="hhTAFamCheck" runat="server" Text="hTA" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
                <br />
                <br />
                 <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="DMFamCheck" runat="server" Text="DM" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            <br />
                <br />
             <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="neuropatiaFamCheck" runat="server" Text="Neuropatías" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            </div>
         <div class="form-group">
            <asp:Label ID="lblOtrosPatologHeredoFam" runat="server" Text="Otros: " Font-Bold="True"></asp:Label>
             <asp:TextBox type="text" class="form-control" ID="txtOtrosPatologHeredoFam" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
         <br />
         <br />
             
            <div class="form-row">
            <asp:Label ID="lblFactoresPredisponent" runat="server" Text="Factores Predisponentes" Font-Bold="True" Font-Size="Larger" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
        <div class="form-row">
                <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="factEdadCheck" runat="server" Text="Edad" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
                <br />
                <br />
                 <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="factTrabajoCheck" runat="server" Text="Trabajo" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            <br />
                <br />
             <div class="form-group col-sm-4">
                    <asp:CheckBox class="form-check-input" type="checkbox" value="" ID="factHeredoFam" runat="server" Text="Heredofamiliares" onkeypress="if (event.keyCode == 13) { return false;}"/>
                </div>
            </div>
         <div class="form-group">
            <asp:Label ID="lblOtrosFactPredisponent" runat="server" Text="Otros: " Font-Bold="True"></asp:Label>
             <asp:TextBox type="text" class="form-control" ID="txtOtrosFactPredisponen" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
         <br />
         <br />
         <div class="form-group">
              <asp:Label ID="lblFarmacosUtilizados" runat="server" Text="Fármacos Utilizados" Font-Bold="True" Font-Size="Larger" ForeColor="#16ACB8"></asp:Label>
             <br />
              <asp:TextBox type="text" class="form-control" ID="txtFarmacosUtilizados" runat="server" TextMode="MultiLine" BorderColor="#16ACB8" BorderStyle="Solid"></asp:TextBox>
        </div>
         <br />
         <br />
          <div class="form-group offset-sm-6">
            <asp:Button ID="guardarBtn" type="button" class="btn btn-danger" runat="server" Text="Guardar"  ValidationGroup="guardar" OnClick="guardarBtn_Click" />
        </div>
        <br />

    </div>


</asp:Content>
