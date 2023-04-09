
/*

Program Author: Khadichabonu Valieva

Assignment: Program 3 Lennys Car Wash App

Description:

The app that allows you to choose the wash type (radio buttons) and add-ons (checkboxes). 
If you don't choose the wash type, you will receive an alert, otherwise you will be forwarded to the receipt page.

*/

namespace leennnnn;

public partial class MainPage : ContentPage
{

	public MainPage()
	{
        InitializeComponent();
    }

	private void OnFinalizeSelectionClicked (object sender, EventArgs e)
	{
        

        // Check if a wash tier has been selected
        if (!rdoWash1.IsChecked && !rdoWash2.IsChecked && !rdoWash3.IsChecked)
        {
            DisplayAlert("Error", "Please select a wash tier.", "OK");
            return;
        }

        SelectionScreen.IsVisible = false;
        ReceiptScreen.IsVisible = true;

        // Calculate the total cost of the purchase
        double cost=0.00;
        string cost_str="";
        string value_rdo;
        string value_chbx;
       
        
        if (rdoWash1.IsChecked)
        {
            cost += 10.00;
            value_rdo = rdoWash1.Content.ToString();
            wash_selected.Text += value_rdo;            

        }
        else if (rdoWash2.IsChecked)
        {
            cost += 15.00;
            value_rdo = rdoWash2.Content.ToString();
            wash_selected.Text += value_rdo;
        }
        else if (rdoWash3.IsChecked)
        {
            cost += 20.00;
            value_rdo = rdoWash3.Content.ToString();
            wash_selected.Text += value_rdo;

        }

        if (chbxOption1.IsChecked)
        {
            cost += 2.00;
            value_chbx = ch_str1.Text;
            add_ons.Text += "\n     ● " + value_chbx;
        }
        if (chbxOption2.IsChecked)
        {
            cost += 5.00;
            value_chbx = ch_str2.Text;
            add_ons.Text += "\n     ● " + value_chbx;
        }
        if (chbxOption3.IsChecked)
        {
            cost += 5.00;
            value_chbx = ch_str3.Text;
            add_ons.Text += "\n     ● " + value_chbx;
        }
        if (chbxOption4.IsChecked)
        {
            cost += 2.00;
            value_chbx = ch_str4.Text;
            add_ons.Text += "\n     ● " + value_chbx;
        }

        if (!chbxOption1.IsChecked && !chbxOption2.IsChecked && !chbxOption3.IsChecked && !chbxOption4.IsChecked)
        {
            value_chbx = "\n     ⨯ No Add Ons were Selected";
            add_ons.Text += value_chbx;
        }

        cost_str = cost.ToString();
        total_cost.Text += (cost_str + ".00");

    }

    private void OnNewOrderClicked(object sender, EventArgs e)
    {

        SelectionScreen.IsVisible = true;
        ReceiptScreen.IsVisible = false;

       
        wash_selected.Text = "Wash Selected: ";
        add_ons.Text = "Add Ons Purchased: ";
        total_cost.Text = "Total Cost: $";

        rdoWash1.IsChecked = false;
        rdoWash2.IsChecked = false;
        rdoWash3.IsChecked = false;
        chbxOption1.IsChecked = false;
        chbxOption2.IsChecked = false;
        chbxOption3.IsChecked = false;
        chbxOption4.IsChecked = false;

        


    }




}
