/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

// Datos simulados de productos
const productos = [
    { codigo: "001", nombre: "Laptop Dell", precio: 1800.00 },
    { codigo: "002", nombre: "Mouse Logitech", precio: 80.00 }
];

function cargarProductos() {
    const cuerpo = document.getElementById("cuerpo-tabla");
    cuerpo.innerHTML = ""; // limpia antes de recargar

    productos.forEach(function (p) {
        const fila = document.createElement("tr");
        fila.innerHTML =
            "<td>" + p.codigo + "</td>" +
            "<td>" + p.nombre + "</td>" +
            "<td>S/ " + p.precio.toFixed(2) + "</td>";
        cuerpo.appendChild(fila);
    });
}
