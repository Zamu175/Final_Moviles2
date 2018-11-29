using Fina_Moviles.Instagram.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Fina_Moviles.Instagram.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PerfilPage : ContentPage
	{
        private Usuario usuario;

		public PerfilPage (Usuario usuario)
		{
			InitializeComponent ();
            this.usuario = usuario;
            BindingContext = usuario;
		}
	}
}