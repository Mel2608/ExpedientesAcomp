using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using BL;

namespace UI
{
    public partial class Expedientes : System.Web.UI.Page
    {
        BLManejadorExpediente manejadorExp = new BLManejadorExpediente();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                StringBuilder tableHTML = manejadorExp.cargarDatosPrincipalesExpedientes();
                tablePlaceHolder.Controls.Add(new Literal { Text = tableHTML.ToString() });
            }
        }
    }
}