var cursosModel = require("../models/cursosModel");

// Função para lidar com o acesso ao curso
function acessarCurso(req, res) {
    var idCurso = req.params.idCurso; // ID do curso vindo da URL
    var idUsuario = req.query.usuarioId; // ID do usuário vindo como query param

    if (idCurso == undefined || idUsuario == undefined) {
        res.status(400).send("ID do curso ou do usuário não fornecido!");
    } else {
        cursosModel.atualizarContadorDeAcessos(idCurso, idUsuario)
            .then(function (resultado) {
                // Redireciona para o link do curso
                res.redirect(`https://www.udemy.com/cursos/${idCurso}`); // Exemplo de link para redirecionar
            })
            .catch(function (erro) {
                console.log(erro);
                res.status(500).send("Erro ao atualizar contador de acessos");
            });
    }
}

module.exports = {
    acessarCurso
};
