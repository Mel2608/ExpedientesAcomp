using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace UI
{
    public partial class ExpedientePrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BLManejadorExpediente manej = new BLManejadorExpediente();
                BLExpediente exped = manej.consultarExpediente(Convert.ToInt32(Session["idExpediente"]));

                //FECHA INGRESO
                txtDiaIngreso.Text = Convert.ToString(exped.FechaIngreso.Day);
                txtMesIngreso.Text = Convert.ToString(exped.FechaIngreso.Month);
                txtAnnoIngreso.Text = Convert.ToString(exped.FechaIngreso.Year);

                idText.Text = exped.cedula;
                firstNameText.Text = exped.primer_nombre;
                secondNameText.Text = exped.segundo_nombre;
                lastNameText.Text = exped.primer_apellido;
                lastNameText2.Text = exped.segundo_apellido;
                txtEdad.Text = Convert.ToString(calcularEdad(exped.fecha_nacimiento));
                diaText.Text = Convert.ToString(exped.fecha_nacimiento.Day);
                mesText.Text = Convert.ToString(exped.fecha_nacimiento.Month);
                AnnoText.Text = Convert.ToString(exped.fecha_nacimiento.Year);
                telefText.Text = exped.num_telefono;
                celularText.Text = exped.celular;
                otroTelefText.Text = exped.otro_telefono;
                domicilioText.Text = exped.domicilio;
                estadoCivilText.Text = exped.estado_civil;
                trabajoText.Text = exped.ocupacion;
                correoText.Text = exped.correo;
                sexoText.Text = exped.sexo;
                txtnombreContacto.Text = exped.nombreContacto;
                txtparentezco.Text = exped.parentezcoContacto;
                txtTelefContact1.Text = exped.telefContact1;
                txtTelefContact2.Text = exped.telefContact2;
                txtestadoPaciente.Text = exped.estado;
                txtencamado.Checked = exped.encamado;
                txtServicios.Text = exped.serviciosRecibe;
            }
        }



        protected void btnHistorialClinico_Click(object sender, EventArgs e)
        {
            Response.Redirect("HistorialClinico.aspx");
        }

        protected void guardarBtn_Click(object sender, EventArgs e)
        {
            BLManejadorExpediente manej = new BLManejadorExpediente();
            BLExpediente blExped = crearNuevoBL();
            manej.insertarActualizarExped(blExped);
            mensajeError.Text = "<div class=\"alert alert-success alert - dismissible fade show\" role=\"alert\"> <strong>¡Éxito! </strong>Los datos han sido guardados correctamente.<button type = \"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"> <span aria-hidden=\"true\">&times;</span> </button> </div>";
            mensajeError.Visible = true;
        }

        protected BLExpediente crearNuevoBL()
        {
            return new BLExpediente(
                 1, idText.Text.Trim(),firstNameText.Text.Trim(), secondNameText.Text.Trim(), lastNameText.Text.Trim(), lastNameText2.Text.Trim(),
                 new DateTime(Convert.ToInt32(AnnoText.Text.Trim()), Convert.ToInt32(mesText.Text.Trim()), Convert.ToInt32(diaText.Text.Trim())),
                 telefText.Text, celularText.Text, otroTelefText.Text, estadoCivilText.Text, trabajoText.Text, sexoText.Text, domicilioText.Text, 
                 new DateTime(Convert.ToInt32(txtAnnoIngreso.Text.Trim()), Convert.ToInt32(txtMesIngreso.Text.Trim()), Convert.ToInt32(txtDiaIngreso.Text.Trim())),
                 correoText.Text.Trim(), txtnombreContacto.Text.Trim(), txtparentezco.Text.Trim(), txtTelefContact1.Text.Trim(), 
                 txtTelefContact2.Text.Trim(), txtestadoPaciente.Text.Trim(), txtencamado.Checked, txtServicios.Text.Trim());
        }

        protected int calcularEdad(DateTime fechaNacimiento)
        {
            return DateTime.Today.AddTicks(-fechaNacimiento.Ticks).Year - 1;
        }
    }
}