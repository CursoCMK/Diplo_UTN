var createError = require("http-errors");
var express = require("express");
var path = require("path");
var cookieParser = require("cookie-parser");
var logger = require("morgan");

require("dotenv").config();
var pool = require("./models/bd");

var indexRouter = require("./routes/index");
var usersRouter = require("./routes/users");

var app = express();

// view engine setup
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "hbs");

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

app.use("/", indexRouter);
app.use("/users", usersRouter);

/* - comienzo de operaciones sql -  dentro de models, está el sql completo */

/* tablas
institucion;           -- Institucion
tipo_elemento;         -- Tipo Elemento
elemento_est_pres;     -- Elemento Estado de Preservacion
elemento_est_disp;     -- Elemento Estado de Disponibilidad
elemento;              -- Elemento
*/

// SELECT
/*
pool.query("select * from institucion").then(function (resultados) {
  console.log(resultados);
});

pool.query("select * from tipo_elemento").then(function (resultados) {
  console.log(resultados);
});

pool.query("select * from elemento_est_pres").then(function (resultados) {
  console.log(resultados);
});

pool.query("select * from elemento").then(function (resultados) {
  console.log(resultados);
});
*/

// INSERT
// INSERT INTO tipo_elemento (descripcion) VALUES ('ELEVADOR DE INODORO'); esta ultimo en el sql
/*
var obj = {
  descripcion: "ELEVADOR DE INODORO para insert",
};

pool
  .query("insert into tipo_elemento set ?", [obj])
  .then(function (resultados) {
    console.log(resultados);
  });
*/

//UPDATE
// INSERT INTO elemento_est_pres (descripcion) VALUES ('MALO'); id=4 - esta ultimo en el sql
/*
var id = 4;
var obj = {
  id_usuario: "999",
};

pool
  .query("update elemento_est_pres set ? where id = ?", [obj, id])
  .then(function (resultados) {
    console.log(resultados);
  });

// Consulta para verificar
pool.query("select * from elemento_est_pres").then(function (resultados) {
  console.log(resultados);
});
*/

//DELETE
// INSERT INTO elemento_est_disp (descripcion) VALUES ('EXTRAVIADO'); id=3 - esta ultimo en el sql
/*
var id = 3;
pool
  .query("delete from elemento_est_disp where id = ?", [id])
  .then(function (resultados) {
    console.log(resultados);
  });

// Consulta para verificar
pool.query("select * from elemento_est_disp").then(function (resultados) {
  console.log(resultados);
});
*/

//
//
/* - fin de operaciones sql - */
//
//
//
// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get("env") === "development" ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render("error");
});

module.exports = app;
