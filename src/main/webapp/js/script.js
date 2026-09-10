$(document).ready(function(){


let productos=[];



// cargar JSON

$.ajax({

url:"json/productos.json",

type:"GET",

dataType:"json",


success:function(data){

productos=data;

}



});




// Mostrar productos

$("#btnCargar").click(function(){


mostrarProductos(productos);


});





// Buscar producto


$("#btnBuscar").click(function(){



let codigo=$("#codigoBuscar").val();



let resultado=productos.filter(function(p){


return p.codigo==codigo;


});



if(resultado.length>0){


mostrarProductos(resultado);


}else{


$("#listaProductos").html(

"<tr><td colspan='6'>Producto no encontrado</td></tr>"

);


}



});





function mostrarProductos(lista){



$("#listaProductos").empty();



$.each(lista,function(i,p){



let fila=

"<tr>"+

"<td>"+p.codigo+"</td>"+

"<td>"+p.producto+"</td>"+

"<td>"+p.categoria+"</td>"+

"<td>S/ "+p.precio+"</td>"+

"<td>"+p.stock+"</td>"+

"<td>"+p.estado+"</td>"+


"</tr>";



$("#listaProductos").append(fila);



});



}



});