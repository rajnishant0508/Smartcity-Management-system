/*document.getElementById('button1').addEventListener('click',function(){
	document.querySelector('.bg-signin-model').style.display='flex';
});

	document.querySelector('.close').addEventListener('click',function(){
      document.querySelector('.bg-signin-model').style.display='none';
});

document.getElementById('button2').addEventListener('click',function(){
	document.querySelector('.bg-signup-model').style.display='flex';
});

	document.querySelector('.close2').addEventListener('click',function(){
      document.querySelector('.bg-signup-model').style.display='none';
});
*/
$(document).ready(function(){
  $(window).scroll(function(){
  	var scroll = $(window).scrollTop();
	  if (scroll > 10) {
	    $(".navbar").css("background" , "maroon");
	  }

	  else{
		  $(".navbar").css("background" , "transparent");  	
	  }
  })
})