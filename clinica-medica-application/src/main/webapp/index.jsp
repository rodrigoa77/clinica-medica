<!DOCTYPE html>
<html>
<head>
	<title>Tela de Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
		body {
			margin: 0;
			padding: 0;
			background-color: #f1f1f1;
			font-family: Arial, sans-serif;
		}

		.container {
			width: 400px;
			margin: 80px auto;
			background-color: #fff;
			border-radius: 5px;
			box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
			padding: 40px;
			box-sizing: border-box;
		}

		h2 {
			text-align: center;
			margin-bottom: 30px;
			color: #333;
		}

		input[type="text"], input[type="password"] {
			width: 100%;
			padding: 10px;
			border-radius: 3px;
			border: 1px solid #CCC;
			margin-bottom: 20px;
			box-sizing: border-box;
		}

		button[type="submit"] {
			width: 100%;
			background-color: #4CAF50;
			color: #fff;
			border: none;
			padding: 10px;
			border-radius: 3px;
			cursor: pointer;
		}

		button[type="submit"]:hover {
			background-color: #45a049;
		}

		.ERRO {
			color: red;
			margin-bottom: 20px;
		}

		.SUCESSO {
            color: green;
            margin-bottom: 20px;
        }

	</style>
</head>
<body>
	<div class="container">
		<h3>Clínica médica - Autenticação</h3>

		<jsp:include page="./pages/componentes/mensagens.jsp" />

		<form action="loginServlet" method="post">
			<label for="username">Usuário:</label>
			<input type="text" id="username" name="username" required>

			<label for="password">Senha:</label>
			<input type="password" id="password" name="password" required>

			<button type="submit">Entrar</button>
		</form>
	</div>
</body>
</html>
