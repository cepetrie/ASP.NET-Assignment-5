using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Show : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["key"] == null)
            Response.Redirect("Default.aspx");

       if(!IsPostBack)
        artistList();
    }

    protected void btnAddArtist_Click1(object sender, EventArgs e)
    {
        NewShowService.NewShowServiceClient ns = new NewShowService.NewShowServiceClient();
        NewShowService.Artist artist = new NewShowService.Artist();

        artist.ArtistName = txtArtistName.Text;
        artist.ArtistEmail = txtArtistEmail.Text;
        artist.ArtistWebPage = txtArtistWebPage.Text;

        ns.addArtist(artist);
        artistList();
        lblMessage.Text = "Artist Added";
    }
    protected void btnAddShow_Click(object sender, EventArgs e)
    {
        NewShowService.NewShowServiceClient ns = new NewShowService.NewShowServiceClient();
        NewShowService.Show show = new NewShowService.Show();
        NewShowService.ShowDetail details = new NewShowService.ShowDetail();
        int key = (int)Session["key"];

        TimeSpan showStartTime;
        show.ShowName = txtShowName.Text;
        show.ShowDate = DateTime.Parse(txtShowDate.Text);
        TimeSpan.TryParse(txtShowDate.Text, out showStartTime);
        show.ShowTime = showStartTime;
        show.ShowTicketInfo = txtTicketInfo.Text;
        show.VenueKey = key;

      
       details.ShowDetailArtistStartTime = TimeSpan.Parse("20:00:00");
       details.ArtistKey = int.Parse(ArtistDropDownList1.SelectedValue.ToString());
       ns.addShow(show, details);

        lblMessage.Text = "Show added";
    }

    protected void artistList() {

        NewShowService.NewShowServiceClient ns = new NewShowService.NewShowServiceClient();
        NewShowService.Artist[] artist = ns.GetArtists();
        ArtistDropDownList1.DataSource = artist;
        ArtistDropDownList1.DataTextField = "ArtistName";
        ArtistDropDownList1.DataValueField = "ArtistKey";
        ArtistDropDownList1.DataBind();
    
    }
}