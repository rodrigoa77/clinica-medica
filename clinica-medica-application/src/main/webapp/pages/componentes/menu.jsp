<ul class="menu">
    <li>Módulo Administrativo
        <ul>
            <li><a href="<%=application.getContextPath()%>/listagemFuncionarioServlet">Gerenciamento de funcionário</a></li>
            <li>Gerenciamento de usuários</li>
            <li>Gerenciamento de especialidades</li>
            <li>Gerenciamento de médicos</li>
            <li>Gerenciamento de convênios</li>
        </ul>
    </li>
    <li>Módulo Agendamento
        <ul>
            <li>Gerenciamento de pacientes</li>
            <li>Gerenciamento de consultas</li>
            <li>Registro de retorno</li>
        </ul>
    </li>
    <li>Módulo de Atendimento
        <ul>
            <li>Gerenciamento de pontuário</li>
            <li>Registros de atendimento</li>
            <li>Gerenciamento de receituários</li>
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