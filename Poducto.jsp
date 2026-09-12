<%-- 
    Document   : Poducto.jsp
    Created on : 7 set. 2026, 11:42:26 a. m.
    Author     : PEREZ FFAA
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Catálogo de Productos</title>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        <style>
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
            }
            body {
                font-family: Arial, Helvetica, sans-serif;
                background-color: #eef2f5;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .contenedor {
                background-color: #ffffff;
                border-radius: 10px;
                padding: 40px 50px;
                box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
                text-align: left;
                min-width: 500px;
            }
            h1 {
                font-size: 2.2rem;
                margin: 0 0 20px 0;
                color: #16324f;
            }
            button {
                background-color: #2e9e6b;
                color: #fff;
                border: none;
                padding: 12px 22px;
                font-size: 1rem;
                font-family: Arial, sans-serif;
                border-radius: 6px;
                cursor: pointer;
                margin-bottom: 25px;
            }
            button:hover {
                background-color: #257e56;
            }
            table {
                border-collapse: collapse;
                width: 100%;
                margin-bottom: 20px;
            }
            th, td {
                border: 1px solid #d0d7de;
                padding: 14px 20px;
                text-align: left;
            }
            th {
                background-color: #16324f;
                color: #fff;
                font-size: 1.05rem;
            }
            .fila-destacada {
                background-color: #e74c3c;
                color: #fff;
                font-weight: bold;
            }
            tbody tr:not(.fila-destacada):hover {
                background-color: #f4f7f9;
            }
            #buscar {
                padding: 10px 14px;
                border: 1px solid #16324f;
                border-radius: 6px;
                font-family: Arial, sans-serif;
                font-size: 1rem;
                width: 100%;
                box-sizing: border-box;
            }
        </style>
    </head>
    <body>

        <div class="contenedor">
            <h1>Catálogo de Productos</h1>

            <button id="btn-cargar">Cargar Productos</button>

            <table id="tabla-productos">
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Producto</th>
                        <th>Precio</th>
                    </tr>
                </thead>
                <tbody id="listaProductos">
                </tbody>
            </table>

            <input type="text" id="buscar" placeholder="Buscar por código o producto...">
        </div>

        <script>
            const productos = [
                { codigo: "P001", nombre: "Laptop Dell", precio: 1800.00 },
                { codigo: "P002", nombre: "Mouse Logitech", precio: 80.00 },
                { codigo: "P003", nombre: "Teclado Lenovo", precio: 120.00 },
                { codigo: "P004", nombre: "Monitor LG", precio: 750.00 }
            ];

            $("#btn-cargar").on("click", function () {
                $("#listaProductos").empty();

                productos.forEach(function (p, index) {
                    let fila = $("<tr></tr>");
                    if (index === 0) {
                        fila.addClass("fila-destacada");
                    }
                    fila.append("<td>" + p.codigo + "</td>");
                    fila.append("<td>" + p.nombre + "</td>");
                    fila.append("<td>S/ " + p.precio.toFixed(0) + "</td>");

                    $("#listaProductos").append(fila);
                });
            });

            $("#buscar").on("keyup", function () {
                let texto = $(this).val().toLowerCase();

                $("#listaProductos tr").filter(function () {
                    $(this).toggle(
                        $(this).text().toLowerCase().includes(texto)
                    );
                });
            });
        </script>
    </body>
</html>