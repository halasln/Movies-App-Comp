const Sequelize = require("sequelize");
const sequelize = new Sequelize("Movies", "postgres", "12345", {
  host: "localhost",
  dialect: "postgres",
  operatorsAliases: 0,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000,
  },
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.token = require("./token.model.js")(sequelize, Sequelize);
db.movies = require("./movies.model.js")(sequelize, Sequelize);
db.user = require("./user.model.js")(sequelize, Sequelize);
db.crew = require("./crew.model.js")(sequelize, Sequelize);

// movie >> crew
db.movies.hasMany(db.crew, {
  foreignKey: "id",
});

db.crew.belongsTo(db.movies, {
  foreignKey: "movieId",
});

module.exports = db;
