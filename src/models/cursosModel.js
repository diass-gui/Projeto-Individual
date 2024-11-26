var database = require("../database/config");

function atualizarContadorDeAcessos(idCurso, idUsuario) {
    console.log(`Atualizando contador de acessos para o curso ID: ${idCurso} do usuário ID: ${idUsuario}`);

    var instrucaoSql = `
        UPDATE Inscricao
        SET qtdVisitas = qtdVisitas + 1
        WHERE fkCurso = ${idCurso} AND fkUsuario = ${idUsuario};
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);

    return database.executar(instrucaoSql); 
}

module.exports = {
    atualizarContadorDeAcessos
};
