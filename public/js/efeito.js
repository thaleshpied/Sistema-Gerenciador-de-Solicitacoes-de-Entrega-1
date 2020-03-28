/*! jQuery v3.1.1 | (c) jQuery Foundation | jquery.org/license */
$(document).ready(function(){

	$("#menu-mobile").on("click",function(){
		$("#menumobile2").toggleClass("ativo");
	});
	$("#menu-mobile").on("click",function(){
		$(".navbar-mobile").toggleClass("ativo");
	});
	$("#menu-mobile").on("click",function(){
		$("#mascaramenumobile").toggleClass("ativo");
	});	
	$("#btnPesquisa1").on("click",function(){
		$("#form").toggleClass("efeito");
	});

});
