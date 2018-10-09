<%@ Page Title="" Language="C#" MasterPageFile="~/MyWebPageMaster.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="MyWebApplication.Gallary" %>
<asp:Content ID="Gallery" ContentPlaceHolderID="MainContent" runat="server">
    <h2 id="galleryHead">Few Moments Captured</h2>

    <div id="GalleryContent">
        <img src="images/GallryPics/Picture1.JPG" id="img" alt="image01" class="img-rounded"/>
        <div id="Left-holder"><img onclick="Slider(-1)" src="images/Previous.png" class="Previous" alt="imagePrev"/></div>
        <div id="Right-holder"><img onclick="Slider(1)" src="images/Next.png" class="Next" alt="imageNext"/></div>
        <%--<div id="infoBut-holder"> <img src="images/1453539187_info-sign.png" class="info" alt="imageInfo" data-toggle="popover" data-trigger="click"/>

        </div>--%><%-- title="picture information" data-content="Some content from database"/></div>--%>
        </div>

  <%-- Picture information--%>
    <%--<div style="display:none;" id="ImageDesc">
        <p class="Flower1">Rose Flower : This is rose</p>
        <p class="Flower2">Lavender Flower : This is lavender</p>
    </div>--%>

    <%-- Demo gallery --%>

    <div class="responsive">
  <div class="img" >
      <img src="images/GallryPics/Picture1.JPG" class="galimg" alt="Trolltunga Norway" width="300" height="200">
    <div class="desc">Bandhavgarh National Park, Madhya Pradesh, India</div>
  </div>
</div>


<div class="responsive">
  <div class="img">
    <img src="images/GallryPics/Picture2.JPG" class="galimg" alt="Forest" width="300" height="200">
    <div class="desc">Dhuandhaar Water Fall, Madhya Pradesh, India</div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <img src="images/GallryPics/Picture3.jpg" class="galimg" alt="Northern Lights" width="300" height="200">
    <div class="desc">Dhokra art Jharkhand, India</div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <img src="images/GallryPics/Picture4.jpg" class="galimg" alt="Mountains" width="300" height="200">
    <div class="desc">Barsey Rhododendron Sanctuary, West Sikkim, India</div>
  </div>
</div>
        <div class="responsive">
  <div class="img" >
      <img src="images/GallryPics/Picture5.JPG" class="galimg" alt="Trolltunga Norway" width="300" height="200">
    <div class="desc">Way to Sonamarg, Kashmir, India</div>
  </div>
</div>


<div class="responsive">
  <div class="img">
    <img src="images/GallryPics/Picture6.JPG" class="galimg" alt="Forest" width="300" height="200">
    <div class="desc">Sonamarg, Kashmir, India</div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <img src="images/GallryPics/Picture7.jpg" class="galimg" alt="Northern Lights" width="300" height="200">
    <div class="desc">Gulmarg Gondola Ride, Kashmir, India</div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <img src="images/GallryPics/Picture8.jpg" class="galimg" alt="Mountains" width="300" height="200">
    <div class="desc">Backwaters, Kerala, India</div>
  </div>
</div>
        <div class="responsive">
  <div class="img" >
      <img src="images/GallryPics/Picture9.JPG" class="galimg" alt="Trolltunga Norway" width="300" height="200">
    <div class="desc">Athirappilly Falls Thrissur district, Kerala, India</div>
  </div>
</div>


<div class="responsive">
  <div class="img">
    <img src="images/GallryPics/Picture10.JPG" class="galimg" alt="Forest" width="300" height="200">
    <div class="desc">Chaukhamba, Uttarakhand, India</div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <img src="images/GallryPics/Picture11.jpg" class="galimg" alt="Northern Lights" width="300" height="200">
    <div class="desc">Sunrise in Khirsu, Uttaranchal, India</div>
  </div>
</div>

    <div class="responsive">
  <div class="img">
    <img src="images/GallryPics/Picture12.jpg" class="galimg" alt="Mountains" width="300" height="200">
    <div class="desc">Singshore Bridge,India [second highest suspension bridge Asia]</div>
  </div>
</div>

<div class="clearfix"></div>

<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">×</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
</div>
    <script>
        // Get the modal
        var modal = document.getElementById('myModal');

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
        }

        // Get all images and insert the clicked image inside the modal
        // Get the content of the image description and insert it inside the modal image caption
        //var modalImages = document.getElementsByClassName('modalGallery');
            
        var images = $(".galimg");//document.getElementsByTagName('img');
        debugger
        var modalImg = document.getElementById("img01");
        var captionText = document.getElementById("caption");
        var i;
        for (i = 0; i < images.length; i++) {
            images[i].onclick = function () {
                modal.style.display = "block";
                modalImg.src = this.src;
                modalImg.alt = this.alt;
                captionText.innerHTML = this.nextElementSibling.innerHTML;
            }
        }
    </script>
     </asp:Content>
