function validacao(){
      
    if(document.cadastro_usuario.nomeU.value == ""){
        alert("Insira o nome!");
        document.cadastro_usuario.nome.focus();
	return false;
    }else if(document.cadastro_usuario.email.value == ""){
        alert("Insira seu email!");
        document.cadastro_usuario.email.focus();
	return false;
    }else if(document.cadastro_usuario.email.value.indexOf("@") == "-1"){
        alert("Insira um email válido!");
        document.cadastro_usuario.email.focus();
	return false;
    }else if(document.cadastro_usuario.login.value == ""){
        alert("Insira seu nome de login!");
        document.cadastro_usuario.login.focus();
	return false;
    }else if(document.cadastro_usuario.senha.value == ""){
        alert("Insira uma senha!");
        document.cadastro_usuario.senha.focus();
	return false;
    }else if(document.cadastro_usuario.Rsenha.value == ""){
        alert("Insira uma senha!");
        document.cadastro_usuario.Rsenha.focus();
	return false;
    }else if(document.cadastro_usuario.Rsenha.value != document.cadastro_usuario.senha.value){
        alert("Repita sua senha corretamente!");
        document.cadastro_usuario.Rsenha.focus();
	return false;
    }else if(document.cadastro_usuario.nomeT.value == ""){
        alert("Insira o nome do seu Time!");
        document.cadastro_usuario.nomeT.focus();
	return false;
    }else{
        document.cadastro_usuario.submit();
    }
}

