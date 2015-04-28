(function (a){
	a(function(){

		a('.aside a').click(function(e){
			e.preventDefault();
			changePane(parseInt(a(this).attr('id')));
		});

		loadPane();
		
		function loadPane(){
			var contentPaneW = parseInt(a('#contentPane').css('width'));
			a('#contentPane .pane').attr('data-active', 'false').css({'position': 'absolute', 'left': contentPaneW});

			
			var firstPane = a('#contentPane .pane:first-child').attr('data-active', 'true').show();
			
			
			firstPane.animate({"left": "0px"}, {"duration": 800, "complete" : function(){
				//a(".logo img").removeClass("rotate-loader");
			}});
			
		}
		
		function changePane(n){
			//a(".logo img").addClass("rotate-loader");
			var contentPaneW = parseInt(a('#contentPane').css('width'));
			
			var oldPane = a('.pane[data-active="true"]');
			var newPane = a('#pane'+n);
			
			var nOld = parseInt(oldPane.attr('id').substr(4));
			var nNew = parseInt(newPane.attr('id').substr(4));
			
			if(nOld < nNew){
				newPane.css('left', contentPaneW+'px');
				
				oldPane.animate({"left": "-"+contentPaneW}, {"duration": 800, "complete" : function(){
					//a(".logo img").removeClass("rotate-loader");
				}});
				newPane.show().animate({"left": "0px"}, {"duration": 800, "complete" : function(){
					oldPane.hide();
				}});
			}else if(nOld > nNew){
				newPane.css('left', (-1*contentPaneW)+'px');
				
				oldPane.animate({"left": contentPaneW}, {"duration": 800, "complete" : function(){
					//a(".logo img").removeClass("rotate-loader");
				}});
				newPane.show().animate({"left": "0px"}, {"duration": 800, "complete" : function(){
					oldPane.hide();
				}});
			}
			
			oldPane.attr('data-active', 'false');
			newPane.attr('data-active', 'true');
		}

		a('.paneCarte').click(function(e) {
			focusPane(a(this), false);
		});

		a('.itemThumbnail').click(function(e) {
			//a(this).parent().removeClass("round-focused");
			//a(this).addClass("reversed-hide").next().addClass("reversed-show");
			focusPane(a(this).parent(), true, e);
		});

		a('.back').click(function(e) {
			a(this).parent().parent().addClass('round-focused');
			a('#grilleMenu').show();

			a('.paneCarte').removeClass('focused');
			a('.paneCarte .toHide').removeClass('toHide').addClass('hide');
			//a(this).parent().next().children().removeClass('round-focused');
		});

		a('#menu-new').click(function(e){
			a('#menu-new-type-cont').css('transform', 'scale(1,1)');
		});


		function focusPane(elem, rounded, event){

			if(! rounded){
				// RAZ autres paneCarte
				a('.paneCarte').removeClass('focused');
				a('.paneCarte .toHide').removeClass('toHide').addClass('hide');
				
				elem.addClass('focused');
				elem.find('.hide').removeClass('hide').addClass('toHide');
				return 0;
			}

			var newElem = a('#sub'+a(elem).attr('id'));
				elem = elem.parent().parent();
			var mousePos = {mouseX: event.pageX - elem.offset().left, mouseY: event.pageY - elem.offset().top};


			newElem.css('transformOrigin', mousePos.mouseX+'px '+mousePos.mouseY+'px 0px').removeClass('round-focused');
			a('.paneMenu .itemThumbnailkk').hide();


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