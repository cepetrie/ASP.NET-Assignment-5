using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        VenueRegistrationService.VenueRegistrationServiceClient vr = new VenueRegistrationService.VenueRegistrationServiceClient();

        VenueRegistrationService.Venue user = new VenueRegistrationService.Venue();
        VenueRegistrationService.VenueLogin login = new VenueRegistrationService.VenueLogin();

        user.VenueName = txtVenueName.Text;
        user.VenueAddress = txtVenueAddress.Text;
        user.VenueCity = txtVenueCity.Text;
        user.VenueState = txtVenueState.Text;
        user.VenueZipCode = txtVenueZipCode.Text;
        user.VenuePhone = txtVenuePhoneNumber.Text;

        user.VenueAgeRestriction = int.Parse(txtVenueAgeRestriction.Text);
        
        user.VenueEmail = txtVenueEmail.Text;
        user.VenueWebPage = txtVenueWebPage.Text;

        login.VenueLoginPasswordPlain = txtPassword.Text;
        login.VenueLoginUserName = txtUserName.Text;

        vr.RegisterVenue(user, login);
        lblResult.Text = "You are logged in";
    }
}