using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TO;
using DAO;

namespace BL
{
    public class BLManejadorHistorialClinico
    {

        public BLHistorialClinico consultarHistorial(int idExped)
        {
            DAOHistorialClinico dao = new DAOHistorialClinico();
            return convert(dao.consultarHistorialClinico(idExped));
        }

        public void insertarActualizarHistorial(BLHistorialClinico blHist)
        {
            DAOHistorialClinico dao = new DAOHistorialClinico();
            dao.actualizarInsertarHistorial(convert(blHist));
        }

        public BLHistorialClinico convert(TOHistorialClinico to)
        {
            return new BLHistorialClinico(to.id_Historial, to.idExpediente, to.HTA, to.hTA, to.tabaco, to.cardiopatias,
                to.alergias, to.DM, to.alcohol, to.AIU, to.cancer, to.neuropatias, to.drogas, to.otrosPatologPerson, to.HTA_Fam, to.hTA_Fam,
                to.cardiopatias_Fam, to.DM_Fam, to.cancer_Fam, to.neuropatias_Fam, to.otrosHeredoFam, to.edad, to.trabajo, to.heredofamiliares,
                to.otros_Predisponentes, to.farmacos_utilizados, to.grupoSanguineo);
        }

        public TOHistorialClinico convert(BLHistorialClinico bl)
        {
            return new TOHistorialClinico(bl.id_Historial, bl.idExpediente, bl.HTA, bl.hTA, bl.tabaco, bl.cardiopatias,
                bl.alergias, bl.DM, bl.alcohol, bl.AIU, bl.cancer, bl.neuropatias, bl.drogas, bl.otrosPatologPerson, bl.HTA_Fam, bl.hTA_Fam,
                bl.cardiopatias_Fam, bl.DM_Fam, bl.cancer_Fam, bl.neuropatias_Fam, bl.otrosHeredoFam, bl.edad, bl.trabajo, bl.heredofamiliares,
                bl.otros_Predisponentes, bl.farmacos_utilizados, bl.grupoSanguineo);
        }
    }
}
