const db = require("./../models");
const Token = db.token;
var crypto = require("crypto");
var token = crypto.randomBytes(120).toString("hex");

const saveToken = async (adminId, device, ip) => {

  let tokenTmp = token;

  return Token.create({
    admin_id: adminId,
    token: tokenTmp,
    device: device,
    ip: ip,
    createdAt: "2022-03-3",
    updatedAt: "2022-02-3",
  })
    .then((resultat) => {
      return tokenTmp;
    })
    .catch((error) => {
      return error;
    });
};

const getTokenId = async (token1) => {
  console.log("test,token1");
  let checkToken = await Token.findOne({
    where: { token: token1 },
  });

  console.log(checkToken);

  if (checkToken) {
    return checkToken.admin_id;
  } else {
    return checkToken;
  }
};


module.exports = { saveToken, getTokenId };
