﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TO
{
    public class TOPsicologia
    {
        public int id_psicologia { get; set; }
        public string cedula { get; set; }
        public string diagnostico_medico { get; set; }
        public string tratamientos { get; set; }
        public string motivo_consulta { get; set; }
        public string composicion_familiar { get; set; } //**?**
        public string laboral_educativos { get; set; }
        public string historiaPersonal { get; set; }
        public string diagnosticoPresuntivo { get; set; }
        public string objs_Terapeuticos { get; set; }
        public string tratamiento_Empleado { get; set; }
        public string expediente { get; set; }


        public TOPsicologia()
        {

        }

        public TOPsicologia(int id_psicologia, string cedula, string diagnostico_medico, string tratamientos, string motivo_consulta, string composicion_familiar, string laboral_educativos,
            string historiaPersonal, string diagnosticoPresuntivo, string objs_Terapeuticos, string tratamient_Empleado, string expediente)
        {
            this.id_psicologia = id_psicologia;
            this.cedula = cedula;
            this.historiaPersonal = historiaPersonal;
            this.diagnosticoPresuntivo = diagnosticoPresuntivo;
            this.objs_Terapeuticos = objs_Terapeuticos;
            this.tratamiento_Empleado = tratamient_Empleado;
            this.expediente = expediente;
            this.diagnostico_medico = diagnostico_medico;
            this.tratamientos = tratamientos;
            this.motivo_consulta = motivo_consulta;
            this.composicion_familiar = composicion_familiar;
            this.laboral_educativos = laboral_educativos;
        }
    }
}
