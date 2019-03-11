using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace UI
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void entrarBtn_Click(object sender, EventArgs e)
        {
            //try
            //{
                String idUsuario = txtId.Text.Trim();
                String contra = txtContra.Text.Trim();
                BLCuenta cuenta = new BLManejadorCuenta().buscarCuenta(idUsuario, contra);

                if (cuenta.id != null && !cuenta.id.Equals(""))
                {
                    //Session["iEmpleado"] = empleado.id;
                    //Session["rolEmpleado"] = empleado.rol;
                    if (cuenta.estado == true)
                    {
                        Session["empleado"] = cuenta;
                        if (cuenta.rol.Equals("Admin"))
                        {
                            Response.Redirect("Administrador.aspx");
                        }
                        else
                        {
                            Response.Redirect("PaginaPrincipal.aspx");
                        }
                    }
                    else
                    {
                        lblError.Text = "El usuario se encuentra deshabilitado";
                        lblError.Visible = true;
                    }
                }
                else
                {
                    lblError.Visible = true;
                }
            //}
            //catch (Exception)
            //{
            //    lblError.Text = "Error. Recargue la página";
            //    lblError.Visible = true;
            //}
        }
    }
}