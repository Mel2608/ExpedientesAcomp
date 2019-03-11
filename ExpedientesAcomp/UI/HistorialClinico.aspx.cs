using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace UI
{
    public partial class HistorialClinico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BLManejadorHistorialClinico manej = new BLManejadorHistorialClinico();
                BLHistorialClinico hist = manej.consultarHistorial(Convert.ToInt32(Session["idExpediente"]));

                txtGrupoSanguineo.Text = hist.grupoSanguineo;
                HTACheck.Checked = hist.HTA;
                alergiasCheck.Checked = hist.alergias;
                CancerCheck.Checked = hist.cancer;
                hhTA.Checked = hist.hTA;
                dmCheck.Checked = hist.DM;
                neuropatiaCheck.Checked = hist.neuropatias;
                tabacoCheck.Checked = hist.tabaco;
                alcoholCheck.Checked = hist.alcohol;
                drogasCheck.Checked = hist.drogas;
                txtOtrosPatologPerson.Text = hist.otrosPatologPerson;
                htaFamCheck.Checked = hist.HTA_Fam;
                cardiopatiaFamCheck.Checked = hist.cardiopatias_Fam;
                cancerFamCheck.Checked = hist.cancer_Fam;
                hhTAFamCheck.Checked = hist.hTA_Fam;
                DMFamCheck.Checked = hist.DM_Fam;
                neuropatiaFamCheck.Checked = hist.neuropatias_Fam;
                txtOtrosPatologHeredoFam.Text = hist.otrosHeredoFam;
                factEdadCheck.Checked = hist.edad;
                factTrabajoCheck.Checked = hist.trabajo;
                factHeredoFam.Checked = hist.heredofamiliares;
                txtOtrosFactPredisponen.Text = hist.otros_Predisponentes;
                txtFarmacosUtilizados.Text = hist.farmacos_utilizados;
            }
        }

        protected void guardarBtn_Click(object sender, EventArgs e)
        {
            BLManejadorHistorialClinico manej = new BLManejadorHistorialClinico();
            BLHistorialClinico blHist = crearNuevoBL();
            manej.insertarActualizarHistorial(blHist);
            lblMensaje.Text = "<div class=\"alert alert-success alert - dismissible fade show\" role=\"alert\"> <strong>¡Éxito! </strong>Los datos han sido guardados correctamente.<button type = \"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"> <span aria-hidden=\"true\">&times;</span> </button> </div>";
            lblMensaje.Visible = true;
        }

        protected BLHistorialClinico crearNuevoBL()
        {
            return new BLHistorialClinico(1, Convert.ToInt32(Session["idExpediente"]), HTACheck.Checked, hhTA.Checked, tabacoCheck.Checked,
                cardioCheck.Checked, alergiasCheck.Checked, dmCheck.Checked, alcoholCheck.Checked, AIUCheck.Checked, CancerCheck.Checked,
                neuropatiaCheck.Checked, drogasCheck.Checked, txtOtrosPatologPerson.Text.Trim(), htaFamCheck.Checked, hhTAFamCheck.Checked,
                cardiopatiaFamCheck.Checked, DMFamCheck.Checked, cancerFamCheck.Checked, neuropatiaFamCheck.Checked,
                txtOtrosPatologHeredoFam.Text.Trim(), factEdadCheck.Checked, factTrabajoCheck.Checked, factHeredoFam.Checked,
                txtOtrosFactPredisponen.Text.Trim(), txtFarmacosUtilizados.Text.Trim(), txtGrupoSanguineo.Text.Trim());
        }
    }
}