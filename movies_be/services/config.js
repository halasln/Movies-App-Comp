var crypto = require("crypto");
const fs = require("fs");

const SERVER_LINK = "http://localhost:3000/";
const MEDIA_LINK = "http://localhost:3502/media/";

async function saveFile(pharmacyId, file, directory) {
  let todayDate = new Date()
    .toISOString()
    .replace("-", "")
    .split("T")[0]
    .replace("-", "");

  let hashCode = crypto.randomBytes(30).toString("hex");
  let fileExtension = file.originalname.split(".").pop().toLowerCase();
  let fileName = pharmacyId + todayDate + hashCode + "." + fileExtension;

  if (!fs.existsSync(directory)) {
    fs.mkdirSync(directory);
  }

  //save image to folder
  fs.writeFile(directory + fileName, file.buffer, function (err) {
    if (err) throw err;
  });

  return fileName;
}

const getTodayDate = () => {
  return new Date().toISOString().split("T")[0];
};

module.exports = { SERVER_LINK, MEDIA_LINK, saveFile, getTodayDate };
