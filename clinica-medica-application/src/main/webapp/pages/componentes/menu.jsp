<ul class="menu">
    <li>M�dulo Administrativo
        <ul>
            <li><a href="<%=application.getContextPath()%>/listagemFuncionarioServlet">Gerenciamento de funcion�rio</a></li>
            <li>Gerenciamento de usu�rios</li>
            <li>Gerenciamento de especialidades</li>
            <li>Gerenciamento de m�dicos</li>
            <li>Gerenciamento de conv�nios</li>
        </ul>
    </li>
    <li>M�dulo Agendamento
        <ul>
            <li>Gerenciamento de pacientes</li>
            <li>Gerenciamento de consultas</li>
            <li>Registro de retorno</li>
        </ul>
    </li>
    <li>M�dulo de Atendimento
        <ul>
            <li>Gerenciamento de pontu�rio</li>
            <li>Registros de atendimento</li>
            <li>Gerenciamento de receitu�rios</li>
            <li>Gerenciamento de exames</li>
        </ul>
    </li>
    <li>Logout</li>
</ul>

<script>
		// Adiciona eventos de clique aos itens de menu para mostrar/ocultar submenus
		const menus = document.querySelectorAll('li');
		menus.forEach(menu => {
			menu.addEventListener('click', () => {
				const submenu = menu.querySelector('ul');
				if (submenu) {
					submenu.style.display = (submenu.style.display === 'block') ? 'none' : 'block';
				}
			});
		});

</script>