<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyCricTeam</title>

<link rel="stylesheet" type="text/css" href="CSS/homePageStyleSheet.css" >
<script src="JS Libraries/jquery-3.1.1.js"></script>
<script src="JS Libraries/jquery-ui.js"></script>
<script>

$(window).scroll(function(){
console.log("sticky element top:"+ $('#stickyElement').offset().top);
console.log("window  top:"+ $(window).scrollTop()+$('.topDiv').height());

if ($('#stickyElement').offset().top <= $(window).scrollTop()+$('.topDiv').height()){
$('#stickyElement').css("position", "fixed");
}

if($('#pageTrigger').length){

var top_of_element = $('#pageTrigger').offset().top;
var bottom_of_screen = $(window).scrollTop()+$(window).height();
//console.log("1:::"+top_of_element);console.log("2:::"+bottom_of_screen);
if(bottom_of_screen > top_of_element){
		
		$.ajax({
    			dataType: 'html',
    			type: 'POST',
    			url: "/myCriceTeam/listPage.do",
    			beforeSend: function() {
				    $('#spinner').show();
				  },
    			
    			success: function(response){
    				if(response != null) {
    					
    										
						var elements = $(response).find(".tableDiv table tbody").html();   
						
						$(".tableDiv table tbody tr:last").after(elements); 
						$('#spinner').hide();
    				}
    			},
    			error:function(request, status, error){
    			alert("error in lazy");
    			},
    			complete: function(){ 
    			}
    		});    
    	 }
    }

});





function autoComplete() {

$(function() {
	var elementsArray=$(".tableDiv table tr").find("td:nth-child(2)");
	var elementTextArray = [];
	
	elementsArray.each(function(index){
		
		var currentRow = $(this);
		var text, value, id;
		if(currentRow.text().trim() != '') {
			text = currentRow.text().trim();
			value = currentRow.closest('tr').attr('id');
		}
		
		
		if(text != null && text != '') {
			elementTextArray.push({value:value,label:text});
			console.log(elementTextArray[index]);
		}
	});
     $('#playersSearchId').autocomplete({
        source: elementTextArray,
        minLength: 3,
		messages:{
			noResults :'',
			results:function(){}
		
		},

        select: function( event, ui ) {
			//$('.rowHighLight').removeClass('rowHighLight');
			event.preventDefault();
            if(ui.item) {
                if ($(this).attr('selectedElement')) {
                	$("#" + $(this).attr('selectedElement')).val(ui.item.value);
                }

                $(this).attr('selectedAccount', ui.item.value);
                $(this).val(ui.item.label);
            }
			
		
               
                //var typeAheadAssetRowId = ui.item.value;
               // rowHighLightOnTypeAhead(typeAheadAssetRowId);	
			
			
			
            return false;
        },
       
        
        search: function(event, ui) {
        	$("#" + $(this).attr('autoCompleteImage')).show();
        },
        open: function(event, ui) {
        	$("#" + $(this).attr('autoCompleteImage')).hide();
        }
    }); 
});


}






    $( document ).ready(function() {
    	var el = $(".buttonBar")[0];
    	$(el).hide();
    	autoComplete();
    	$( window ).resize(function() {
  autoComplete();
});
});    	 
    $( window ).load(function() {
        //console.log( "window loaded" );
    });
    </script>
<script type="text/javascript">
function openTermsPage(){			
			
			
			 $.ajax({

                    type: "POST",
                    url: "/myCriceTeam/terms.do",
                    
                    success: function(response){
                    // alert(response);
                        // we have the response
                       $('#homeBody').html(response);
                       $('.buttonBar button').css("background-color","#10427F");
                       $("#termsButton").css("background-color","#F1592A");
                       $("#termsButton").blur();
                    },
                    error: function(e){
                        alert('Error: ' + e);
                    }
                });

}
function archivedContestPage(){			
			
			
			 $.ajax({

                    type: "POST",
                    url: "/myCriceTeam/archived.do",
                    
                    success: function(response){
                    // alert(response);
                        // we have the response
                       $('#homeBody').html(response);
                       $('.buttonBar button').css("background-color","#10427F");
                       $("#archivedContests").css("background-color","#F1592A");
                       $("#archivedContests").blur();
                    },
                    error: function(e){
                        alert('Error: ' + e);
                    }
                });

}

function openListPage(){
//alert('in list page function');
$.ajax({

                    type: "POST",
                    url: "/myCriceTeam/listPage.do",
                    
                    success: function(response){
                    // alert(response);
                        // we have the response
                       $('#homeBody').html(response);
                       $('.buttonBar button').css("background-color","#10427F");
                       $("#archivedContests").css("background-color","#F1592A");
                       $("#archivedContests").blur();
                       // autoComplete();
                        $( window ).resize();
                    },
                    error: function(e){
                        alert('Error: ' + e);
                    }
                });



}
function openLoginPage(){			
			
			
			 $.ajax({

                    type: "POST",
                    url: "/myCriceTeam/login.do",
                    
                    success: function(response){
                    // alert(response);
                        // we have the response
                        
                        
                        $( document ).ready(function() {
    					var el = $(".buttonBar")[1];
    					$(el).hide();
    });
                       $('#homeBody').html(response);
                       $('.buttonBar button').css("background-color","#10427F");
                       $("#loginButton").css("background-color","#F1592A");
                       $("#loginButton").blur();
                       
                       
                    },
                    error: function(e){
                        alert('Error: ' + e);
                    }
                });

}

</script>

</head>
<body>
<div class ="topDiv">
<img src="images/logo.png"/>
<div class="buttonBar">
<button id="homeButton" type="button">Home</button>
<button id="upcomingButton" type="button">Upcoming Contests</button>
<button id="loginButton" type="button" onclick = "openLoginPage();">Login</button>
<button id="signUpButton" type="button">Sign Up</button>
<button id="termsButton" type="button" onclick = "openTermsPage();">Terms</button>
</div>
<div class="buttonBar">
<button id="homeButton" type="button">Home</button>
<button id="upcomingButton" type="button">Upcoming Contests</button>
<button type="button">Live Contests</button>
<button id ="archivedContests" type="button" onclick="archivedContestPage();">Archived Contests</button>
<button type="button">My profile</button>
<button id="logoutButton" type="button">Logout</button>
<button id="termsButton" type="button" onclick = "openTermsPage();">Terms</button>
</div>
</div>
<div id="homeBody">
<div  class="bgimg" ></div>
<div class="divBar">
<div class="divBarDiv">
<span class="firstSpan">How To Play</span> <br/>
<span>Signup to create an account</span> <br/>
<span>Verify your account and update profile</span> <br/>
<span>Pick a contest and draft your team</span> 
</div>
<div class="divBarDiv">
<span class="firstSpan">Play For Free - Daily</span> <br/>
<span>Contest opens 24 hrs. before live game</span> <br/>
<span>Draft your team when contest opens</span> <br/>
<span>Show your cricket skills</span>
</div>
<div class="divBarDiv">
<span class="firstSpan">5,000 INR In Total Daily Prizes</span> <br/>
<span>Pick a contest, draft your team and win BIG!</span> <br/>
<span>Invite your friends to play</span> <br/>
<span>Share us on Facebook</span>
</div>
</div>
<div class= "lastDivBar">
<div class="lastDiv">
<span class="firstSpan">Sign Up Today & Start Winning!</span> <br/>
<span>No payment required to play fantasy cricket</span> <br/>
<span>Creating an account is easy, secure and free</span> <br/>
<span>What are you waiting for?</span> <br/>
<button type="button"><strong>Sign Up Now</strong></button>
</div>
</div>
</div>
</body>
</html>
