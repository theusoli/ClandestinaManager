function validacao() {
	if(document.login.nome.value==""){
		alert("Insira um login!");
		document.login.nome.focus();
		return false;
	}else if (document.login.senha.value == "") {
		alert("Insira uma senha!");
		document.login.senha.focus();
		return false;
	}else if (document.login.senha.value.length < 8) {
		alert("A senha deve ter no minimo 8 caracteres");
		document.login.senha.focus();
		return false;
	}else {
            document.login.submit();
            return true;
        }
}