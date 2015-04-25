(function (a){
	a(function(){

		a('.admin-name').click(function(e){
			a(this).parent().find('.admin-form').slideToggle(100);
		});

	});
})(jQuery);