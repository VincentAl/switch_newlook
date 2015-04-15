 		<nav class="columns large-2 small-12 medium-3 aside">
            <div class="row small-collapse">
                <div class="menu-top small-12 columns">
                    <div class="row">
                        <div class="logo small-6 medium-12 columns" id="logo">
                            <a href="/">
                                <img alt="logo Switch" src="img/logoSwitch.png">
                            </a>
                        </div>
                        <ul class="side-nav menu small-6 medium-12 columns" id="menu-1">
                            <li><a class="${param.pageSelectionnee=='carte'? 'active' : '' }" id="1" href="carte">La carte</a></li>
                            <li><a class="${param.pageSelectionnee=='menu'? 'active' : '' }" id="2" href="menu">Les menus</a></li>
                            <li><a class="${param.pageSelectionnee=='commander'? 'active' : '' }" id="3" href="comander">Commander</a></li>
                            <li><a class="${param.pageSelectionnee=='contact'? 'active' : '' }" id="4" href="contact">Contact</a></li>
                        </ul>
                    </div>
                </div>

                <div class="menu-bottom small-12 columns">
                    <ul class="side-nav menu" id="menu-2">
                        <li><a class="${param.pageSelectionnee=='plan'? 'active' : '' }" id="5" href="plan">Plan d'accès</a></li>
                        <li><a class="${param.pageSelectionnee=='acceuil'? 'termes' : '' }" id="6" href="termes">Termes et conditions</a></li>
                    </ul>
                </div>
            </div>
        </nav>