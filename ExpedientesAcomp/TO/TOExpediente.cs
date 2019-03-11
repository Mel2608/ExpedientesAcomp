using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TO
{
    public class TOExpediente
    {
        public int numExpediente { get; set; }
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
        private DateTime fechaIngreso;
        public DateTime FechaIngreso
        {
            get { return fechaIngreso; }
            set
            {
                fechaIngreso = value.Date;
            }
        }
        public String correo { get; set; }
        public String nombreContacto { get; set; }
        public String parentezcoContacto { get; set; }
        public String telefContact1 { get; set; }
        public String telefContact2 { get; set; }
        public String estado { get; set; }
        public Boolean encamado { get; set; }
        public String serviciosRecibe { get; set; }


        public TOExpediente()
        {

        }

        public TOExpediente(int numeroExpediente, String cedula, String primer_nombre, String segundo_nombre, String primer_apellido,
            String segundo_apellido, DateTime fecha_nacimiento, String num_telefono, String celular, String otro_telefono, String estado_civil,
            String ocupacion, String sexo, String domicilio, DateTime fechaIngreso, String correo, String nombContacto, String parentezcoContacto,
            String telefContac1, String telefContact2, String estado, Boolean encamado, String serviciosRecibe)
        {
            this.numExpediente = numeroExpediente;
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
            this.correo = correo;
            this.nombreContacto = nombContacto;
            this.parentezcoContacto = parentezcoContacto;
            this.telefContact1 = telefContac1;
            this.telefContact2 = telefContact2;
            this.estado = estado;
            this.encamado = encamado;
            this.serviciosRecibe = serviciosRecibe;
        }
    }
}

