﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class BLFisicoTerapia
    {
        public int id_FisicoTerapia { get; set; }
        public int numExpediente { get; set; }
        public string terapeuta { get; set; }
        public string codigo_Terapeuta { get; set; }
        public string diagnostico_medico { get; set; }
        public string detalleAfeccion { get; set; }
        public string sintomas_Actuales { get; set; }
        public string observacion_palpacion { get; set; }
        public string objsTratamiento { get; set; }
        public string tratam_Fisicoterap { get; set; }

        public BLFisicoTerapia ()
        {

        }

        public BLFisicoTerapia(int id, int numExpediente, string terap, string codterap, string diagMedic, string detalleAfecc, string sintomas, string observacion, 
            string objsTratam, string tratam_FisicoTerap)
        {
            this.id_FisicoTerapia = id;
            this.numExpediente = numExpediente;
            this.terapeuta = terap;
            this.codigo_Terapeuta = codterap;
            this.diagnostico_medico = diagMedic;
            this.detalleAfeccion = detalleAfecc;
            this.sintomas_Actuales = sintomas;
            this.observacion_palpacion = observacion;
            this.objsTratamiento = objsTratam;
            this.tratam_Fisicoterap = tratam_FisicoTerap;
        }
    }
}
