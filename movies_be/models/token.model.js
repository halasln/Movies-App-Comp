module.exports = (sequelize, DataTypes) => {
  const Token = sequelize.define(
    "admins_tokens",
    {
      id: { type: DataTypes.BIGINT, primaryKey: true, autoIncrement: true },
      admin_id: { type: DataTypes.BIGINT },
      token: { type: DataTypes.STRING },
      device: { type: DataTypes.STRING },
      ip: { type: DataTypes.STRING },
      createdAt: { type: DataTypes.TIME },
      updatedAt: { type: DataTypes.TIME },
    },
    { freezeTableName: true }
  );
  return Token;
};
