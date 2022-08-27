const express = require("express");
const app = express();
const bodyParser = require("body-parser");
var cors = require("cors");
var upload = require("multer")();

app.use(cors());
app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(upload.fields([{ name: "avatar" }, { name: "files", maxCount: 6 }]));
app.use("/media", express.static(__dirname + "/../media"));

app.use("/movies", require("./routes/movies"));

const PORT = process.env.PORT || 3502;
app.listen(PORT, () => {
  console.log(`App running on port ${PORT}.`);
});
