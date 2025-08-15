/*

Program Author: Khadichabonu Valieva

Assignment: Little League Database

Description: MainPage of the app

*/



namespace littleLeageDatabase;

public partial class MainPage : ContentPage
{
	public MainPage()
	{
		InitializeComponent();
	}

	private async void OnHomePageButtonClicked(object sender, EventArgs e)
	{
		await Navigation.PushAsync(new NavigationPage(new homePage()));
	}



}
