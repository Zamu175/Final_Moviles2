using Fina_Moviles.Instagram.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Fina_Moviles.Instagram.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PrincipalPage : ContentPage
    {
        public PrincipalPage()
        {
            InitializeComponent();
        }

        private async void CargarPerfil()
        {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://http://172.16.21.22");

            var request = await client.GetAsync("/api/Publicacion");
            if (request.IsSuccessStatusCode)
            {
                var responseJson = await request.Content.ReadAsStringAsync();
                var listado = JsonConvert.DeserializeObject<List<Publicacion>>(responseJson);
                listppal.ItemsSource = listado;
            }
            else
            {
                await DisplayAlert("Lo sentimos!", "Ha ocurrido un error de comunicacion", "OK");
            }
        }

        private void Perfil_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var usuario = (Usuario)e.SelectedItem;
            Navigation.PushAsync(new PerfilPage(usuario));
        }
    }
}