function onlyNum(e){
	var tecla = (window.event)?event.keyCode:e.which; //variável que salva a tecla digitada(tabela ASCII)
	if (tecla >= 48 && tecla <= 57) return true; //48 é 0 na tabela ASCII, 57 é 9 na tabela ASCII
	else return false;
}

//if(!isNaN(String.fromCharCode(window.event.keyCode))) return true; else return false;"
//código JS puro. isNaN() retorna true se o valor não for um número, logo, com o inversor !, retorna  true apenas se o valor digitado (String.fromCharCode(window.event.keyCode))) for um número.
