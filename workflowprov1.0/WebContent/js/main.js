$(document).ready(
    function () {
        // Initialisation des dropdowns
    	  $('.ui.dropdown').dropdown();
        
        $('#btnAdd-user').on('click', function(){
        	 $("#exampleModal2025").modal({
                 transition:'fade up', duration:700, closable: false,  onHidden: function() {
         // Quand le modal est complètement caché
         location.reload(); 
              }
            }).modal("show");
        });

        $('#toglleSidebar').on('click', function () {
            let sidebarWidth = $(".sidebar").width();
            let screenSize = $(window).width();
            if (screenSize >= 961) {
                /*
                if (sidebarWidth >= 200) {
                    $(".sidebar").css("width", "100px");
                } else {
                    alert("Sidebar is hidden");
                }
                    */
            } else {
            	//alert('Button cliqué');
                $('.sidebar').addClass("isvisible");
                $(".content").css("min-height", "70vh");
            }
        })

        $(".content").click(function () {
            if ($(".sidebar").hasClass("isvisible")) {
                $(".sidebar").removeClass("isvisible");
                $(".content").css("min-height", "0vh");
            }
        });

    }
)
