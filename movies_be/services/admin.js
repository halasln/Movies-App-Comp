const db = require("../models");
const Admin = db.admin;
const AdminToken = db.token;

const getUserInformation = async (adminId) => {
  let userInformation = await Admin.findOne({
    where: { id: adminId },
  });
  return userInformation;
};

const getAdminId = async (token) => {
  let adminInfo = await AdminToken.findOne({
    where: { token: token },
  });
  return adminInfo.admin_id;
};

module.exports = { getUserInformation, getAdminId };
