using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using TO;

namespace BL
{
    public class BLManejadorExpediente
    {
        public void insertarActualizarExped(BLExpediente exped)
        {
            DAOExpediente dao = new DAOExpediente();
            dao.actualizarInsertarExpediente(convert(exped));
        }


        public BLExpediente consultarExpediente(int idExpediente)
        {
            DAOExpediente dao = new DAOExpediente();
            return convert(dao.consultarExpediente(idExpediente));
        }

        public BLExpediente convert(TOExpediente toExped)
        {
            return new BLExpediente(toExped.numExpediente, toExped.cedula, toExped.primer_nombre, toExped.segundo_nombre, toExped.primer_apellido,
                toExped.segundo_apellido, toExped.fecha_nacimiento, toExped.num_telefono, toExped.celular, toExped.otro_telefono, 
                toExped.estado_civil, toExped.ocupacion, toExped.sexo, toExped.domicilio, toExped.FechaIngreso,
                toExped.correo, toExped.nombreContacto, toExped.parentezcoContacto, toExped.telefContact1, toExped.telefContact2,
                toExped.estado, toExped.encamado, toExped.serviciosRecibe);
        }

        public TOExpediente convert(BLExpediente blExped)
        {
            return new TOExpediente(blExped.numExpediente, blExped.cedula, blExped.primer_nombre, blExped.segundo_nombre, blExped.primer_apellido,
                blExped.segundo_apellido, blExped.fecha_nacimiento, blExped.num_telefono, blExped.celular, blExped.otro_telefono,
                blExped.estado_civil, blExped.ocupacion, blExped.sexo, blExped.domicilio, blExped.FechaIngreso, 
                blExped.correo, blExped.nombreContacto, blExped.parentezcoContacto, blExped.telefContact1, blExped.telefContact2,
                blExped.estado, blExped.encamado, blExped.serviciosRecibe);
        }
    }
}
