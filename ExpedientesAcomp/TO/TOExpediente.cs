using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TO
{
    public class TOExpediente
    {
        public String cedula { get; set; }
        public String primer_nombre { get; set; }
        public String segundo_nombre { get; set; }
        public String primer_apellido { get; set; }
        public String segundo_apellido { get; set; }
        private DateTime FechaNacimiento;
        public DateTime fecha_nacimiento
        {
            get { return FechaNacimiento; }
            set
            {
                FechaNacimiento = value.Date;
            }
        }
        public String num_telefono { get; set; }
        public String celular { get; set; }
        public String otro_telefono { get; set; }
        public String estado_civil { get; set; }
        public String ocupacion { get; set; }
        public String sexo { get; set; }
        public String domicilio { get; set; }
        public DateTime fechaIngreso;
        public String contactoEmergencia { get; set; }


        public TOExpediente()
        {

        }

        public TOExpediente(string cedula, string primer_nombre, string segundo_nombre, string primer_apellido, string segundo_apellido, DateTime fecha_nacimiento, string num_telefono, string celular, string otro_telefono, string estado_civil, string ocupacion, string sexo, string domicilio, DateTime fechaIngreso, string contactoEmergencia)
        {
            this.cedula = cedula;
            this.primer_nombre = primer_nombre;
            this.segundo_nombre = segundo_nombre;
            this.primer_apellido = primer_apellido;
            this.segundo_apellido = segundo_apellido;
            this.fecha_nacimiento = fecha_nacimiento.Date;
            this.num_telefono = num_telefono;
            this.celular = celular;
            this.otro_telefono = otro_telefono;
            this.estado_civil = estado_civil;
            this.ocupacion = ocupacion;
            this.domicilio = domicilio;
            this.sexo = sexo;
            this.fechaIngreso = fechaIngreso;
            this.contactoEmergencia = contactoEmergencia;
        }

    }


}

