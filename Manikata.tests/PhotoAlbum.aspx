<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotoAlbum.aspx.cs" Inherits="Manikata.tests.PhotoAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet"/>
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.7.1/flexslider.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.7.1/jquery.flexslider.min.js"></script>
          <!-- CSS -->
      <style>
  
         .ui-widget-header {
    background-color:#ffffff !important;
    background-image:none !important;
    border:none !important;
}
         .ui-widget-content{background:#fff !important; background-color:white; border: 1px solid #fff;}
         .flexslider img{height:600px}
         .ui-widget-overlay{display:none}
      </style>
      
      <!-- Javascript -->
      <script>
         $(function() {

             $("#opener-3").click(function () {
                 $("#dialog-3").dialog({
                     width: "99%",
                     position: { my: "top", at: "top", of: window },
                     open: function (type, data) {

                     },
                     modal: true
                 });

                 $('.flexslider').flexslider({
                     animation: "slide",
                     controlNav: false
                 });

                 var slider = $('.flexslider').data('flexslider');
                 var animationSpeed = slider.vars.animationSpeed; 	//save animation speed to reset later
                 slider.vars.animationSpeed = 0;
                 slider.flexAnimate(1); 					//position index for desired slide goes here
                 slider.vars.animationSpeed = animationSpeed;


             });
         });
      </script>
</head>
<body>
    <form id="form1" runat="server">

     
      <!-- HTML --> 
      <div id="dialog-3" style="display:none">
            <div class="flexslider" style="width:80%; max-height:600px; margin:10px auto">
                <ul class="slides">
                    <li>
       
                        <img src="Images/IMG_0509.JPG" />
                    </li>
                    <li>
                       <img src="Images/IMG_0511.JPG" />
                    </li>
                    <li>
                        <img src="Images/IMG_0510.JPG" />
                    </li>
                    <li>
                        <img src="Images/IMG_0514.JPG" />
                    </li>
                </ul>
            </div>

        </div>

        <div id = "opener-3">Open Dailog</div>


 
    </form>
</body>
</html>
