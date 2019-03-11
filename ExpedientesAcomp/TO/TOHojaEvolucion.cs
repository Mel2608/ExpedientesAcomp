using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TO
{
    public class TOHojaEvolucion
    {
        public int id_evolucion { get; set; }
        public int idExpediente { get; set; }
        public string diagnostico_Medico { get; set; }
        public string evolucion { get; set; }
        public DateTime fechaConsulta { get; set; }
        public int profesion { get; set; }

        public TOHojaEvolucion()
        {

        }

        public TOHojaEvolucion(int id_Evolucion, int idExpediente, string diagMedico, string evolucion, DateTime fechaConsulta, int profesion)
        {
            this.id_evolucion = id_evolucion;
            this.idExpediente = idExpediente;
            this.diagnostico_Medico = diagMedico;
            this.evolucion = evolucion;
            this.fechaConsulta = fechaConsulta;
            this.profesion = profesion;
        }


    }
}
    