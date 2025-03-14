<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nueva Reserva</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            max-width: 600px;
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
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-top: 10px;
            font-weight: bold;
        }
        input, select {
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            margin-top: 15px;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            background-color: #007bff;
            color: white;
        }
        button:hover {
            opacity: 0.8;
        }
        .btn-secondary {
            background-color: #6c757d;
            color: white;
            text-align: center;
            display: block;
            padding: 10px;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Agregar Reserva</h2>
        <form id="reservaForm" action="ReservaServlet" method="post" onsubmit="return confirmarReserva()">
            <label>Nombre:</label>
            <input type="text" name="nombre" id="nombre" required>

            <label>Fecha:</label>
            <input type="date" name="fecha" id="fecha" required>
            
            <label>Espacio de Trabajo:</label>
            <select name="espacioTrabajo" id="espacioTrabajo" required>
                <option value="Escritorio">Escritorio</option>
                <option value="Sala de reuniones">Sala de reuniones</option>
                <option value="Oficina privada">Oficina privada</option>
            </select>

            <label>Duración (horas):</label>
            <input type="number" name="duracionHoras" id="duracionHoras" min="1" max="24" required>

            <button type="submit">Guardar</button>
            <a href="listaReservas.jsp" class="btn-secondary">Volver</a>
        </form>
    </div>

    <script>
        function confirmarReserva() {
            let nombre = document.getElementById("nombre").value.trim();
            let fecha = document.getElementById("fecha").value;
            let espacio = document.getElementById("espacioTrabajo").value;
            let duracion = document.getElementById("duracionHoras").value;

            if (!nombre || !fecha || !espacio || !duracion) {
                alert("Por favor compeltar todos los campos");
                return false;
            }

            let mensaje = `¿Confirmas la reserva?`;

            return confirm(mensaje);
        }

        
    </script>

   
    <% if (request.getAttribute("mensaje") != null) { %>
        <script>
            alert("<%= request.getAttribute("mensaje") %>");
        </script>
    <% } %>
</body>
</html>
