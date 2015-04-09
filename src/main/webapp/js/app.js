(function (a){
	a(function(){

		a('.primary-menu a').click(function(e){
			e.preventDefault;
			loadPane(parseInt(a(this).attr('id')));
		});

		function loadPane(n){
			a(".logo img").addClass("rotate-loader");

			generatePane(n).appendTo(a("#contentPane"));

			var width = a('.pane:nth-child(1)').css({"position":"absolute"}).css("width");
			a('.pane:nth-child(1)').animate({"left": "-"+width}, {"duration": 800, "complete" : function(){
				a(".logo img").removeClass("rotate-loader");
			}});
			a('.pane:nth-child(2)').animate({"left": "0px"}, {"duration": 800, "complete" : function(){
				a('.pane:nth-child(1)').remove();
			}});
		}

		a('.panCarte').click(function(e) {
			focusPane(a(this), false);
		});

		a('.panMenu').click(function(e) {
			focusPane(a(this), true, e);
		});

		a('.back').click(function(e) {
			a(this).parent().parent().addClass('round-focused');
			//a(this).parent().next().children().removeClass('round-focused');
		});





		function generatePane(n){
			var col;
			var paneText=	'<div class="pane columns large-12">'+
							'<img src="img/pane'+n+'.jpg" alt="pane'+n+'" width="500px" height="200px">'+
							'<a href="#" id="slideMe" class="small radius button">Slide Me</a>'+
							'</div>'+
							'</div>';
			var paneDom = a(paneText);
			var width = a('#contentPane').css('width');

			switch(n){
				case 1: col='red'; break;
				case 2: col='blue'; break;
				case 3: col='green'; break;
			}

			paneDom.css({'height': a(window).height(), 'position': 'absolute', 'left': ''+width, 'top': '0px', 'backgroundColor': col});

			return paneDom;
		}

		function focusPane(elem, rounded, event){

			if(! rounded){
				a('.panel').removeClass('focused');
				elem.addClass('focused');
				return 0;
			}

			var newElem = a('#sub'+a(elem).attr('id'));
				elem = elem.parent().parent();
			var mousePos = {mouseX: event.pageX - elem.offset().left, mouseY: event.pageY - elem.offset().top};


			newElem.css('transformOrigin', mousePos.mouseX+'px '+mousePos.mouseY+'px 0px');

			//sleep(1000);
			
			newElem.removeClass('round-focused');


			//console.log(':: '+'#sub'+a(elem).attr('id'))
			console.log('mouseX : '+event.pageX+' - mouseY : '+event.pageY);
			console.log('elemX : '+elem.offset().left+' - elemY : '+elem.offset().top);
			console.log('mousePosX : '+mousePos.mouseX+' - mousePosY : '+mousePos.mouseY);
			console.log('-------------')
		}


		function sleep(miliseconds) {
			var currentTime = new Date().getTime();

			while (currentTime + miliseconds >= new Date().getTime()) {}
		}

	});
})(jQuery);