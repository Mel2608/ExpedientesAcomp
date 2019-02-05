using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class BLHistorialClinico
    {
        public int id_Historial { get; set; }
        public string cedula { get; set; }
        public bool HTA { get; set; }
        public bool hTA { get; set; }
        public bool tabaco { get; set; }
        public bool cardiopatias { get; set; }
        public bool alergias { get; set; }
        public bool DM { get; set; }
        public bool alcohol { get; set; }
        public bool AIU { get; set; }
        public bool cancer { get; set; }
        public bool neuropatias { get; set; }
        public bool drogas { get; set; }
        public string otrosPatologPerson { get; set; }
        public bool HTA_Fam { get; set; }
        public bool hTA_Fam { get; set; }
        public bool cardiopatias_Fam { get; set; }
        public bool DM_Fam { get; set; }
        public bool cancer_Fam { get; set; }
        public bool neuropatias_Fam { get; set; }
        public string otrosHeredoFam { get; set; }
        public bool edad { get; set; }
        public bool trabajo { get; set; }
        public bool heredofamiliares { get; set; }
        public string otros_Predisponentes { get; set; }
        public string farmacos_utilizados { get; set; }

        public BLHistorialClinico ()
        {

        } 

        public BLHistorialClinico(int id_Historial, string cedula, bool HTA, bool hTA, bool tabaco, bool cardio, bool alergias, bool DM, bool alcohol, bool AIU, bool cancer, bool neuropatias, bool drogas, 
            string otrosPatologPerson, bool HTA_Fam, bool hTA_Fam, bool cardio_Fam, bool DM_Fam, bool cancer_Fam, bool neuro_Fam, string otrosHeredoFam, bool edad, 
            bool trabajo, bool heredoFamil, string otros_Predisponentes, string farmacos)
        {

        }


    }
}
