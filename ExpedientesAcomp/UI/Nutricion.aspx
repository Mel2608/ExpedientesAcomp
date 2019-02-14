<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Nutricion.aspx.cs" Inherits="UI.Nutricion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="ExpedientePrincipal.aspx">Expediente</a></li>
            <li class="breadcrumb-item"><a href="ListaConsultas.aspx">Lista de Consultas</a></li>
            <li class="breadcrumb-item"><a href="Consulta.aspx">Consulta</a></li>
            <li class="breadcrumb-item active" aria-current="page">Nutrición</li>
        </ol>
    </nav>

    <div class="container" aria-multiline="True">
        <asp:Literal ID="lblMensaje" runat="server" Visible="false"></asp:Literal>
        <br />
        <div class="form-row">
            <asp:Label ID="lblTitulo" runat="server" Text="Nutrición" Font-Bold="True" Font-Size="XX-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
        <br />
        <div class="form-row">
            <asp:Label ID="lblDatosAntropom" runat="server" Text="1. Datos antropométricos:" Font-Bold="True" Font-Size="X-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
        <div class="form-row">
            <asp:Label ID="lblPeso" runat="server" Text="Peso (kg):" Font-Bold="True" Font-Size="Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="TxtPesoResult">Resultado </label>
                <asp:TextBox type="text" class="form-control" ID="TxtPesoResult" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
                <label for="txtPesoEvaluacion">Evaluación</label>
                <asp:TextBox type="text" class="form-control" ID="txtPesoEvaluacion" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <asp:Label ID="lblTalla" runat="server" Text="Talla (cm):" Font-Bold="True" Font-Size="Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="txtTallaResult">Resultado </label>
                <asp:TextBox type="text" class="form-control" ID="txtTallaResult" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
                <label for="txtTallaEvaluacion">Evaluación</label>
                <asp:TextBox type="text" class="form-control" ID="txtTallaEvaluacion" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <asp:Label ID="lblImc" runat="server" Text="IMC (kg/m^2):" Font-Bold="True" Font-Size="Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="txtIMCResult">Resultado </label>
                <asp:TextBox type="text" class="form-control" ID="txtIMCResult" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
                <label for="txtIMCEvaluacion">Evaluación</label>
                <asp:TextBox type="text" class="form-control" ID="txtIMCEvaluacion" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <asp:Label ID="lblPesoIdeal" runat="server" Text="Peso ideal (kg):" Font-Bold="True" Font-Size="Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="txtPesoIdealResult">Resultado </label>
                <asp:TextBox type="text" class="form-control" ID="txtPesoIdealResult" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
                <label for="txtPesoIdealEvaluac">Evaluación</label>
                <asp:TextBox type="text" class="form-control" ID="txtPesoIdealEvaluac" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="form-row">
            <asp:Label ID="lblRefClinicas" runat="server" Text="2. Referencias Clínicas:" Font-Bold="True" Font-Size="X-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="lblAPP" runat="server" Font-Bold="False" Text="APP:"></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtAPP" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblAHF" runat="server" Font-Bold="False" Text="AHF:"></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtAHF" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblMedicamentos" runat="server" Font-Bold="False" Text="Medicamentos:"></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtMedicamentos" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblCirugias" runat="server" Font-Bold="False" Text="Cirugías:"></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtCirugias" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
        <br />
        <div class="form-row">
            <asp:Label ID="lblReferenDiet" runat="server" Text="3. Referencias dietéticas:" Font-Bold="True" Font-Size="X-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="lblFrecCon" runat="server" Font-Bold="True" Text="Frecuencia de consumo:"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="lblFrecCon1" runat="server" Font-Bold="False" Text="¿Hay algún alimento(s) que no le guste comer?"></asp:Label>
            <asp:CheckBoxList ID="checkAlimentoNoGuste" runat="server">
                <asp:ListItem>Si</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="txtCualNoGusta">¿Cuáles(es)?</label>
                <asp:TextBox type="text" class="form-control" ID="txtCualNoGusta" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
                <label for="txtPorqueNoGust">¿Por qué?</label>
                <asp:TextBox type="text" class="form-control" ID="txtPorqueNoGust" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
        </div>
        <br />
        <div>
            <asp:Label ID="lblAlimPref" runat="server" Font-Bold="False" Text="¿Cuáles son sus alimentos preferidos?"></asp:Label>
        </div>
        <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtAlimentosPref" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblTomaAgua" runat="server" Font-Bold="False" Text="¿Toma agua?"></asp:Label>
        </div>

        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>Si</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:CheckBoxList>

        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="txtVasosAlDia">¿Cuántos vasos al día?</label>
                <asp:TextBox type="text" class="form-control" ID="txtVasosAlDia" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
            </div>
        </div>
        <br />
        <div>
            <asp:Label ID="lblLight" runat="server" Font-Bold="False" Text="¿Consume productos 'Light', 'bajos en grasa', 'libres de azúcar', integrales?"></asp:Label>
            <asp:CheckBoxList ID="checkLight" runat="server">
                <asp:ListItem>Si</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="txtCualLight">¿Cuáles(es)?</label>
                <asp:TextBox type="text" class="form-control" ID="txtCualLight" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
                <label for="txtLightPorque">¿Por qué?</label>
                <asp:TextBox type="text" class="form-control" ID="txtLightPorque" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="txtAlimentosCaenMal">¿Cuáles(es) alimentos le 'cae(n) mal'?</label>
                <asp:TextBox type="text" class="form-control" ID="txtAlimentCaenMal" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
                <label for="txtPorqueAlimentCaenMal">¿Por qué?</label>
                <asp:TextBox type="text" class="form-control" ID="txtPorqueAlimentCaenMal" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
        </div>
        <br />
        <asp:Label ID="lblLicor" runat="server" Font-Bold="False" Text="¿Toma licor?"></asp:Label>
        <asp:CheckBoxList ID="checkLicor" runat="server">
            <asp:ListItem>Si</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:CheckBoxList>
        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="txtLicorSemana">¿Cuántas veces a la semana?</label>
                <asp:TextBox type="text" class="form-control" ID="txtLicorSemana" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
                <label for="txtTipoCantidadLicor">¿Qué tipo y cantidad?</label>
                <asp:TextBox type="text" class="form-control" ID="txtTipoCantidadLicor" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
        </div>
        <br />
        <br />
        <div>
            <asp:Label ID="lblFuma" runat="server" Font-Bold="False" Text="¿Fuma?"></asp:Label>
        </div>
        <asp:CheckBoxList ID="checkFuma" runat="server">
            <asp:ListItem>Si</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:CheckBoxList>
        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="txtSemanaFuma">¿Cuántos veces a la semana?</label>
                <asp:TextBox type="text" class="form-control" ID="txtSemanaFuma" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
            </div>
        </div>
        <br />
        <div class="form-row">
            <asp:Label ID="lblActividadFísica" runat="server" Text="4. Actividad Física:" Font-Bold="True" Font-Size="X-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
        <br />
         <asp:Label ID="lblRealizaActFisic" runat="server" Font-Bold="False" Text="¿Realiza actividad física?"></asp:Label>
        <asp:CheckBoxList ID="checkActiFisica" runat="server">
            <asp:ListItem>Si</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:CheckBoxList>
        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="txtFrecuenciaActFisica">¿Con qué frecuencia?</label>
                <asp:TextBox type="text" class="form-control" ID="txtFrecuenciaActFisica" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
                <label for="txtTipoActividad">¿Qué tipo de actividad?</label>
                <asp:TextBox type="text" class="form-control" ID="txtTipoActividad" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
        </div>
        <br />
           <div class="form-row">
            <asp:Label ID="lblDxNutric" runat="server" Text="5. D(x) Nutricional:" Font-Bold="True" Font-Size="X-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
             <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtEvolucion" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}" Rows="8" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
          <div class="form-row">
            <asp:Label ID="lblREE" runat="server" Text="6. REE:" Font-Bold="True" Font-Size="X-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
         <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="txtREE">kcal-d</label>
                <asp:TextBox type="text" class="form-control" ID="txtREE" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
            </div>
        </div>
         <br />
           <div class="form-row">
            <asp:Label ID="lblRecomendNutric" runat="server" Text="7. Recomendaciones nutricionales" Font-Bold="True" Font-Size="X-Large" ForeColor="#16ACB8"></asp:Label>
        </div>
             <div class="form-group ">
            <asp:TextBox type="text" class="form-control" ID="txtRecomendNutric" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}" Rows="8" TextMode="MultiLine"></asp:TextBox>
        </div>
        <%--proxima cita--%>
        <br />
        <br />
        <div class="form-group offset-sm-6">
            <asp:Button ID="guardarBtn" type="button" class="btn btn-danger" runat="server" Text="Guardar" ValidationGroup="guardar" />
        </div>
        <br />
    </div>
</asp:Content>
