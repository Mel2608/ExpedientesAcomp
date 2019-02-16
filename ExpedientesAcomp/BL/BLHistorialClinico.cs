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
        public int idExpediente { get; set; }
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

        public BLHistorialClinico(int id_Historial, string cedula, int idExpediente, bool HTA, bool hTA, bool tabaco, bool cardio,
            bool alergias, bool DM, bool alcohol, bool AIU, bool cancer, bool neuropatias, bool drogas, string otrosPatologPerson,
            bool HTA_Fam, bool hTA_Fam, bool cardio_Fam, bool DM_Fam, bool cancer_Fam, bool neuro_Fam, string otrosHeredoFam, bool edad, 
            bool trabajo, bool heredoFamil, string otros_Predisponentes, string farmacos)
        {
            this.id_Historial = id_Historial;
            this.cedula = cedula;
            this.idExpediente = idExpediente;
            this.HTA = HTA;
            this.hTA = hTA;
            this.tabaco = tabaco;
            this.cardiopatias = cardio;
            this.alergias = alergias;
            this.DM = DM;
            this.alcohol = alcohol;
            this.AIU = AIU;
            this.cancer = cancer;
            this.neuropatias = neuropatias;
            this.drogas = drogas;
            this.otrosPatologPerson = otrosPatologPerson;
            this.HTA_Fam = HTA_Fam;
            this.hTA_Fam = hTA_Fam;
            this.cardiopatias_Fam = cardio_Fam;
            this.DM_Fam = DM_Fam;
            this.cancer_Fam = cancer_Fam;
            this.neuropatias_Fam = neuro_Fam;
            this.otrosHeredoFam = otrosHeredoFam;
            this.edad = edad;
            this.trabajo = trabajo;
            this.heredofamiliares = heredoFamil;
            this.otros_Predisponentes = otros_Predisponentes;
            this.farmacos_utilizados = farmacos;

        }


    }
}
