using System;
using System.Collections.Generic;
using System.Text;

namespace Fina_Moviles.Instagram.Model
{
   public class Publicacion
    {
        public string Descripcion { get; set; }

        public DateTime FechaPublicacion { get; set; }

        public int MeGusta { get; set; }
        public int MeDisgusta { get; set; }
        public int VecesCompartido { get; set; }
        public int Comentario { get; set; }
    }
}
