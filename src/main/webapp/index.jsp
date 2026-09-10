<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html>

<head>

<title>Bodega Ramos</title>


<link rel="stylesheet" href="css/estilos.css">


</head>


<body>


<header>


<div class="titulo">


<h1>
🛒 BODEGA RAMOS
</h1>


<p>
Sistema de Inventario y Venta de Abarrotes
</p>



<img src="imagenes/logo.png" 
     alt="Bodega Ramos"
     class="logo">



</div>


</header>





<div class="contenedor">



<div class="panel">


<button id="btnCargar">

📦 Mostrar Productos

</button>




<label for="codigoBuscar">

🔎 Buscar código:

</label>



<input 
type="text"
id="codigoBuscar"
placeholder="Ejemplo: A001">



<button id="btnBuscar">

Buscar

</button>



</div>





<table>


<thead>


<tr>


<th>Código</th>


<th>Producto</th>


<th>Categoría</th>


<th>Precio</th>


<th>Stock</th>


<th>Estado</th>


</tr>


</thead>



<tbody id="listaProductos">


</tbody>



</table>



</div>





<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>


<script src="js/script.js"></script>



</body>


</html>