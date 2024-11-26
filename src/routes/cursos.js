var express = require('express');
var router = express.Router();

var cursosController = require("../controllers/cursosController");

router.get("/acessar-curso/:idCurso", function (req, res) {
    cursosController.acessarCurso(req, res);
});

module.exports = router;
