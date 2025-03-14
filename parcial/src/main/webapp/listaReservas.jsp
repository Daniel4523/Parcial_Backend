<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List, Models.Reserva, storage.DataStorage" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lista de Reservas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            max-width: 800px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        .btn-eliminar {
            background-color: red;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .btn-eliminar:hover {
            opacity: 0.8;
        }
        .btn-agregar {
            display: block;
            margin: 20px auto;
            padding: 10px;
            background-color: green;
            color: white;
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            width: 200px;
        }
        .btn-agregar:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <!-- se enlista las reservas segun lo guardado en models y en el data storgate -->
    <div class="container">
        <h2>Reservas</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Fecha</th>
                <th>Espacio de Trabajo</th>
                <th>Duración (horas)</th>
                <th>Acciones</th>
            </tr>
            <%
                List<Reserva> reservas = DataStorage.getReservas();
                for (Reserva r : reservas) {
            %>
            
            <tr>
                <td><%= r.getId() %></td>
                <td><%= r.getNombre() %></td>
                <td><%= r.getFecha() %></td>
                <td><%= r.getEspacioTrabajo() %></td>
                <td><%= r.getDuracionHoras() %></td>
                <td>
                    <a href="EliminarReservaServlet?id=<%= r.getId() %>" 
                       class="btn-eliminar" 
                       onclick="return confirm('¿Estas seguro de eliminar esta reserva?')">
                        Eliminar
                    </a>
                </td>
            </tr>
            <% } %>
        </table>
        <a href="nuevaReserva.jsp" class="btn-agregar">Agregar Nueva Reserva</a>
        
    </div>
</body>
</html>
