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
        public string cedula { get; set; }
        public int idExpediente { get; set; }
        public string diagnostico_Medico { get; set; }
        public string evolucion { get; set; }

        public TOHojaEvolucion()
        {

        }

        public TOHojaEvolucion(int id_Evolucion, string cedula, int idExpediente, string diagMedico, string evolucion)
        {
            this.id_evolucion = id_evolucion;
            this.cedula = cedula;
            this.idExpediente = idExpediente;
            this.diagnostico_Medico = diagMedico;
            this.evolucion = evolucion;
        }

    }
}
    