<div class="main-sidebar sidebar-style-2">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a>SMART EXAM</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a>
                SE
            </a>
        </div>
        @hasrole('admin')
            <ul class="sidebar-menu">
                @if (auth()->user()->can('roles.index') || auth()->user()->can('permission.index') || auth()->user()->can('users.index'))
                    <li class="menu-header">PENGATURAN</li>
                @endif

                @can('sliders.index')
                    <li class="{{ setActive('admin/slider') }}"><a class="nav-link" href="#"><i class="fas fa-laptop"></i>
                            <span>Sliders</span></a></li>
                @endcan

                <li
                    class="dropdown {{ setActive('admin/role') . setActive('admin/permission') . setActive('admin/user') }}">
                    @if (auth()->user()->can('roles.index') || auth()->user()->can('permission.index') || auth()->user()->can('users.index'))
                        <a href="#" class="nav-link has-dropdown"><i class="fas fa-users"></i><span>Users
                                Management</span></a>
                    @endif

                    <ul class="dropdown-menu">
                        @can('roles.index')
                            <li class="{{ setActive('admin/role') }}"><a class="nav-link" href="{{ route('roles.index') }}"><i
                                        class="fas fa-unlock"></i> Roles</a>
                            </li>
                        @endcan

                        @can('permissions.index')
                            <li class="{{ setActive('/permission') }}"><a class="nav-link"
                                    href="{{ route('permissions.index') }}"><i class="fas fa-key"></i>
                                    Permissions</a></li>
                        @endcan

                        @can('users.index')
                            <li class="{{ setActive('/user') }}"><a class="nav-link" href="{{ route('users.index') }}"><i
                                        class="fas fa-users"></i> Users</a>
                            </li>
                        @endcan
                    </ul>
                </li>
                <li class="menu-header">MAIN MENU</li>
                <li class="{{ setActive('/dashboard') }}"><a class="nav-link" href="{{ route('dashboard.index') }}"><i
                            class="fas fa-tachometer-alt"></i>
                        <span>Dashboard</span></a></li>
                @can('exams.index')
                    <li class="{{ setActive('/exam') }}"><a class="nav-link" href="{{ route('exams.index') }}"><i
                                class="fas fa-book-open"></i>
                            <span>Test</span></a></li>
                @endcan

                @can('questions.index')
                    <li class="{{ setActive('/question') }}"><a class="nav-link" href="{{ route('questions.index') }}"><i
                                class="fas fa-question"></i>
                            <span>Questions</span></a>
                    </li>
                @endcan

                @can('events.index')
                    <li class="{{ setActive('admin/event') }}"><a class="nav-link" href="#"><i class="fas fa-bell"></i>
                            <span>Agenda</span></a></li>
                @endcan

                @if (auth()->user()->can('images.index') ||
                        auth()->user()->can('videos.index') ||
                        auth()->user()->can('audios.index') ||
                        auth()->user()->can('documents.index'))
                    <li class="menu-header">GALERI</li>
                @endif

                @can('images.index')
                    <li class="{{ setActive('/image') }}"><a class="nav-link" href="{{ route('images.index') }}"><i
                                class="fas fa-image"></i>
                            <span>Image</span></a></li>
                @endcan
            </ul>
        @endhasrole
    </aside>
</div>
