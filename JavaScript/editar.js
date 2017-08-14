function validacao() {
    if (document.editar_time.nomeTime.value == "") {
        alert("Insira o novo nome do time!");
        return false;
    } else if (document.editar_time.nomePresidente.value == "") {
        alert("Insira o novo nome do presidente!");
        return false;
    } else if (confirm("Você deseja mesmo fazer as alterações?")) {
        if (confirm("Realmente quer fazer essa mudança?")) {
            if (confirm("Dê mais uma olhada! Tem certeza mesmo?")) {
                document.editar_time.submit();
            }
        }
    }
}
