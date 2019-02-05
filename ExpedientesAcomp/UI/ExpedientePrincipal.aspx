<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ExpedientePrincipal.aspx.cs" Inherits="UI.ExpedientePrincipal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>--%>


<%--<%@ Page Title="Expediente" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="expediente.aspx.cs" Inherits="UI.expediente" %>--%>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="PaginaPrincipal.aspx">Principal</a></li>
            <li class="breadcrumb-item active" aria-current="page">Expediente</li>
        </ol>
    </nav>


    <div class="container">

        <br />
        <br />
        <br />
        <div class="form-row">
            <div class="form-group col-sm-11">
                <asp:Button type="button" class="btn btn-light" ID="btnHistorialClinico" runat="server"  Text="Historial Clínico" />

            </div>
            <div class="form-group col-sm-1">
                <asp:Button type="button" class="btn btn-light" ID="historialBtn" runat="server" Text="Consultas"  />
            </div>
        </div>
        <br />

        <asp:Literal ID="mensajeError" runat="server" Visible="false"></asp:Literal>
        <br />

        <div class="form-row">
            <asp:Label ID="titulo" runat="server" Text="Datos Personales" Font-Bold="True" Font-Size="XX-Large" ForeColor="#16ACB8"></asp:Label>
            <br />
            <br />
            <br />
        </div>
         

          <div>
            <asp:Label ID="lblFechaIngreso" runat="server" Font-Bold="True" Text="Fecha de Ingreso"></asp:Label>
        </div>
        <div class="form-row">
            <div class="form-group col-sm-4">
                <label for="txtDiaIngreso">Día</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDiaIngreso" ErrorMessage="Campo obligatorio" ValidationGroup="guardar" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<label for="txtDiaIngreso"><asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtDiaIngreso" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d*\.?\d*" ValidationGroup="guardar">Únicamente números</asp:RegularExpressionValidator>
                </label>
                <asp:TextBox type="text" class="form-control" ID="txtDiaIngreso" runat="server" MaxLength="2" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>

            </div>

            <div class="form-group col-sm-4">
                <label for="txtMesIngreso">Mes</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtMesIngreso" ErrorMessage="Campo obligatorio" ValidationGroup="guardar" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<label for="txtMesIngreso"><asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtMesIngreso" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d*\.?\d*" ValidationGroup="guardar">Únicamente números</asp:RegularExpressionValidator>
                </label>
                <asp:TextBox type="text" class="form-control" ID="txtMesIngreso" runat="server" MaxLength="2" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>

            </div>
            <div class="form-group col-sm-4">
                <label for="txtAnnoIngreso">Año</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtAnnoIngreso" ErrorMessage="Campo obligatorio" ValidationGroup="guardar" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txtAnnoIngreso" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d*\.?\d*" ValidationGroup="guardar">Únicamente números</asp:RegularExpressionValidator>
                <asp:TextBox type="text" class="form-control" ID="txtAnnoIngreso" runat="server" MaxLength="4" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>

            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="firstNameText">Primer Nombre</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstNameText" ErrorMessage="Campo obligatorio" ValidationGroup="guardar" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="firstNameText" ErrorMessage="Únicamente letras" ValidationExpression="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+" ValidationGroup="guardar" ForeColor="#FF3131"></asp:RegularExpressionValidator>
                <asp:TextBox type="text" class="form-control" ID="firstNameText" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>

            </div>
            <div class="form-group col-sm-6">
                <label for="secondNameText">Segundo Nombre</label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="secondNameText" ErrorMessage="Únicamente letras" ValidationExpression="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+" ValidationGroup="guardar" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:TextBox type="text" class="form-control" ID="secondNameText" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="lastNameText">Primer Apellido</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastNameText" ErrorMessage="Campo obligatorio" ValidationGroup="guardar" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="lastNameText" ErrorMessage="Únicamente letras" ValidationExpression="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+" ValidationGroup="guardar" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:TextBox type="text" class="form-control" ID="lastNameText" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>

            </div>
            <div class="form-group col-sm-6">
                <label for="lastNameText2">Segundo Apellido</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="lastNameText2" ErrorMessage="Campo obligatorio" ValidationGroup="guardar" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="secondNameText" ErrorMessage="Únicamente letras" ValidationExpression="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+" ValidationGroup="guardar" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:TextBox type="text" class="form-control" ID="lastNameText2" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>

            </div>
        </div>


        <div class="form-row">
            <div class="form-group col-sm-6">
                <label for="idText">Cédula</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="idText" ErrorMessage="Campo obligatorio" ValidationGroup="guardar" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox type="text" class="form-control" ID="idText" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
            </div>
            <div class="form-group col-sm-6">
                <label for="edadTxt">Edad</label>
                <br />
                <asp:TextBox type="text" class="form-control" ID="txtEdad" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" Enabled="False"></asp:TextBox>
            </div>
        </div>

         <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Fecha de Nacimiento"></asp:Label>
        </div>
        <div class="form-row">
            <div class="form-group col-sm-4">
                <label for="diaText">Día</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="diaText" ErrorMessage="Campo obligatorio" ValidationGroup="guardar" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<label for="diaText"><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="diaText" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d*\.?\d*" ValidationGroup="guardar">Únicamente números</asp:RegularExpressionValidator>
                </label>
                <asp:TextBox type="text" class="form-control" ID="diaText" runat="server" MaxLength="2" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>

            </div>

            <div class="form-group col-sm-4">
                <label for="mesText">Mes</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mesText" ErrorMessage="Campo obligatorio" ValidationGroup="guardar" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<label for="mesText"><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="mesText" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d*\.?\d*" ValidationGroup="guardar">Únicamente números</asp:RegularExpressionValidator>
                </label>
                <asp:TextBox type="text" class="form-control" ID="mesText" runat="server" MaxLength="2" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>

            </div>
            <div class="form-group col-sm-4">
                <label for="annoText">Año</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="AnnoText" ErrorMessage="Campo obligatorio" ValidationGroup="guardar" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="AnnoText" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d*\.?\d*" ValidationGroup="guardar">Únicamente números</asp:RegularExpressionValidator>
                <asp:TextBox type="text" class="form-control" ID="AnnoText" runat="server" MaxLength="4" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>

            </div>
        </div>
         <div class="form-row">
           <div class="form-group col-sm-4">
     
            <label for="phoneText">Teléfono</label>
            <asp:TextBox type="text" class="form-control" ID="telefText" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>

        <div class="form-group col-sm-4">
            <label for="tel2">Celular</label>
            <asp:TextBox type="text" class="form-control" ID="celularText" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>

        <div class="form-group col-sm-4">
            <label for="descripcionTel2">Otro teléfono</label>
            <asp:TextBox type="text" class="form-control" ID="otroTelefText" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
               </div>

        <div>
            <asp:Label ID="lblDomicilio" runat="server" Font-Bold="False" Text="Domicilio"></asp:Label>
        </div>
        <div class="form-group ">
           <asp:TextBox type="text" class="form-control" ID="otrasText" runat="server" TextMode="MultiLine" BorderColor="#16ACB8" BorderStyle="Solid"></asp:TextBox>
        </div>
          <div>
            <asp:Label ID="lblContacto" runat="server" Font-Bold="False" Text="Contacto de Emergencia"></asp:Label>
        </div>
         <div class="form-group ">
                    <asp:TextBox type="text" class="form-control" ID="txtContacto" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
        </div>
         

          <div class="form-row">
        <div class="form-group col-sm-6">
            <label for="estadoCivilText">Estado Civil</label>
            <asp:TextBox type="text" class="form-control" ID="estadoCivilText" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>
          <%--  <a href="ExpedientePrincipal.aspx">ExpedientePrincipal.aspx</a>--%>
        </div>


        <div class="form-group col-sm-6">
            <label for="trabajoText">Ocupación</label>
            <asp:TextBox type="text" class="form-control" ID="trabajoText" runat="server" BorderColor="#16ACB8" BorderStyle="Solid" onkeypress="if (event.keyCode == 13) { return false;}"></asp:TextBox>

        </div>
</div>

        <div class="form-group col-sm-4">
            <label for="sexoText">Sexo</label>
            <asp:DropDownList ID="sexoText" class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" runat="server">
                <asp:ListItem>M</asp:ListItem>
                <asp:ListItem>F</asp:ListItem>
            </asp:DropDownList>

        </div>

        <div class="form-group offset-sm-6">
            <asp:Button ID="guardarBtn" type="button" class="btn btn-danger" runat="server" Text="Guardar"  ValidationGroup="guardar" />
        </div>
 
    <br />


    <br />
    <br />
    <br />
</asp:Content>


