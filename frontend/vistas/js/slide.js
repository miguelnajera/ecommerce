/*==================================
=            VARIABLES            =
==================================*/
var item=0;
var itemPaginacion = $("#paginacion li");
var interrumpirCiclo = false;
var imgProducto = $(".imgProducto");
var titulos1= $("#slide h1");
var titulos2= $("#slide h2");
var titulos3= $("#slide h3");

/*==================================
=            ANIMAICON INICIAL     =
==================================*/
$(imgProducto[item]).animate({"top":-10 + "%", "opacity": 0 } , 100);
$(imgProducto[item]).animate({"top":30 + "px", "opacity": 1 } , 600);

$(titulos1[item]).animate({"top":-10 + "%", "opacity": 0 } , 100);
$(titulos1[item]).animate({"top":30 + "px", "opacity": 1 } , 600);

$(titulos2[item]).animate({"top":-10 + "%", "opacity": 0 } , 100);
$(titulos2[item]).animate({"top":30 + "px", "opacity": 1 } , 600);

$(titulos3[item]).animate({"top":-10 + "%", "opacity": 0 } , 100);
$(titulos3[item]).animate({"top":30 + "px", "opacity": 1 } , 600);

/*==================================
=            PAGINACION            =
==================================*/

$("paginacion li").click(function(){

	item = $(this).attr("item")-1;
	movimientoSlide(item);
})


/*==================================
=            AVANZAR	            =
==================================*/

function avanzar(){
		if(item == 3){
				item    = 0;
			}else{
				item++
			}
		movimientoSlide(item);

}

$("#slide #avanzar").click(function(){
			avanzar();
	})

/*==================================
=            RETROCEDER	            =
==================================*/

$("#slide #avanzar").click(function(){
	if(item == 0){
		item = 3;
	}else{
		item--
	}

	movimientoSlide(item);
})


/*==================================
=            MOVIMIENTO SLIDE      =
==================================*/

function movimientoSlide(item){
	$("#slide ul").animate({"left":item * -100 + "%"}, 1000)

	$("paginacion li").css({"opacity":.5})

	$(itemPaginacion[item].css({"opacity":1}))

	interrumpirCiclo=true;

	$(imgProducto[item]).animate({"top":-10 + "%", "opacity": 0 } , 100);
	$(imgProducto[item]).animate({"top":30 + "px", "opacity": 1 } , 600);
}

/*==================================
=            INTERVALO	            =
==================================*/

setInterval(function(){

	if(interrumpirCiclo){
		interrumpirCiclo=false;
	}else{
		avanzar;
	}

	avanzar();
},3000)