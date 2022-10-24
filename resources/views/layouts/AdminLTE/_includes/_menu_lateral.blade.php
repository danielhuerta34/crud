<aside class="main-sidebar">
	<section class="sidebar">
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header" style="color:#fff;"> MAIN MENU <i class="fa fa-level-down"></i></li>
			<li class="
						{{ Request::segment(1) === null ? 'active' : null }}
						{{ Request::segment(1) === 'home' ? 'active' : null }}
					  ">
				<a href="{{ route('home') }}" title="Dashboard"><i class="fa fa-dashboard"></i> <span> Dashboard</span></a>
			</li>

			<li class="
						{{ Request::segment(1) === null ? 'active' : null }}
						{{ Request::segment(1) === 'historic_uf' ? 'active' : null }}
					  ">
				<a href="{{ route('historic_uf') }}" title="Dashboard"><i class="fa fa-history"></i> <span> Historico Uf</span></a>
			</li>

			<li class="
						{{ Request::segment(1) === null ? 'active' : null }}
						{{ Request::segment(1) === 'users' ? 'active' : null }}
					  ">
				<a href="{{ route('users') }}" title="Dashboard"><i class="fa fa-users"></i> <span> Usuarios</span></a>
			</li>
		</ul>
	</section>
</aside>