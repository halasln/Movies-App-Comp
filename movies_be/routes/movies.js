const express = require("express");
const router = express.Router();
const db = require("../models");
const config = require("../services/config");
const Movies = db.movies;
const Crew = db.crew;
const sequelize = db.sequelize;
const admin = require("../services/admin");

const { Op } = require("sequelize");
//get products
router.get("/", async (req, res) => {
  let movies = await Movies.findAll({
    attributes: [
      ["id", "id"],
      ["title", "title"],
      ["type", "type"],
      ["description", "description"],
      ["duration", "duration"],
      ["year", "year"],
      ["production", "production"],
      ["trailer", "trailer"],
      ["image", "image"],
    ],
  })
    .then((response) => {
      return response;
    })
    .catch((error) => {
      res.send(error);
    });

  res.send(movies);
});

router.get("/banner", async (req, res) => {
  let movies = await Movies.findAll({
    where: {
      production: "banner",
    },
    attributes: [
      ["id", "id"],
      ["title", "title"],
      ["type", "type"],
      ["description", "description"],
      ["duration", "duration"],
      ["year", "year"],
      ["production", "production"],
      ["trailer", "trailer"],
      [
        sequelize.fn(
          "CONCAT",
          config.MEDIA_LINK,
          "movies/",
          sequelize.col("movies.id"),
          "/",
          sequelize.col("movies.bannerImage")
        ),
        "image",
      ],
    ],
  })
    .then((response) => {
      return response;
    })
    .catch((error) => {
      res.send(error);
    });

  res.send(movies);
});
//get by id
router.get("/disney", async (req, res) => {
  let movies = await Movies.findAll({
    where: {
      production: "Disney",
    },
    attributes: [
      ["id", "id"],
      ["title", "title"],
      ["type", "type"],
      ["description", "description"],
      ["duration", "duration"],
      ["year", "year"],
      ["production", "production"],
      ["trailer", "trailer"],
      [
        sequelize.fn(
          "CONCAT",
          config.MEDIA_LINK,
          "movies/",
          sequelize.col("movies.id"),
          "/",
          sequelize.col("movies.detailsImage")
        ),
        "image",
      ],
    ],
  })
    .then((response) => {
      return response;
    })
    .catch((error) => {
      res.send(error);
    });

  res.send(movies);
});

router.get("/hbo", async (req, res) => {
  let movies = await Movies.findAll({
    where: {
      production: "HBO",
    },
    attributes: [
      ["id", "id"],
      ["title", "title"],
      ["type", "type"],
      ["description", "description"],
      ["duration", "duration"],
      ["year", "year"],
      ["production", "production"],
      ["trailer", "trailer"],
      [
        sequelize.fn(
          "CONCAT",
          config.MEDIA_LINK,
          "movies/",
          sequelize.col("movies.id"),
          "/",
          sequelize.col("movies.bannerImage")
        ),
        "image",
      ],
    ],
  })
    .then((response) => {
      return response;
    })
    .catch((error) => {
      res.send(error);
    });

  res.send(movies);
});

router.get("/crew/:id", async (req, res) => {
  console.log(req.params.id);
  let crew = await Crew.findAll({
    where: {
      movieId: req.params.id,
    },
    attributes: [
      ["id", "id"],
      ["movieId", "movieId"],
      ["name", "name"],
      ["position", "position"],
      ["nameCarc", "nameCarc"],
      [
        sequelize.fn(
          "CONCAT",
          config.MEDIA_LINK,
          "crew/",
          sequelize.col("crew.movieId"),
          "/",
          sequelize.col("crew.image")
        ),
        "image",
      ],
    ],
  })
    .then((response) => {
      res.send(response);
    })
    .catch((error) => {
      res.send(error);
    });

  // res.send(movies);
});

router.get("/:id", async (req, res) => {
  console.log(req.params.id);
  await Movies.findAll({
    where: {
      id: req.params.id,
    },

    attributes: [
      ["id", "id"],
      ["title", "title"],
      ["type", "type"],
      ["description", "description"],
      ["duration", "duration"],
      ["year", "year"],
      ["production", "production"],
      ["trailer", "trailer"],
      [
        sequelize.fn(
          "CONCAT",
          config.MEDIA_LINK,
          "movies/",
          sequelize.col("movies.id"),
          "/",
          sequelize.col("movies.detailsImage")
        ),
        "image",
      ],
    ],
  })
    .then((response) => {
      res.send(response);
    })
    .catch((error) => {
      console.log(error);
    });
});

//search by name

router.get("/search/name", async (req, res) => {
  console.log("hello", req.query.name);
  await Movies.findAll({
    where: {
      title: { [Op.iLike]: `%${req.query.name}%` },
    },

    attributes: [
      ["id", "id"],
      ["title", "title"],
      ["type", "type"],
      ["description", "description"],
      ["duration", "duration"],
      ["year", "year"],
      ["production", "production"],
      ["trailer", "trailer"],
      [
        sequelize.fn(
          "CONCAT",
          config.MEDIA_LINK,
          "movies/",
          sequelize.col("movies.id"),
          "/",
          sequelize.col("movies.detailsImage")
        ),
        "image",
      ],
    ],
  })
    .then((response) => {
      res.send(response);
    })
    .catch((error) => {
      console.log(error);
    });
});

module.exports = router;
