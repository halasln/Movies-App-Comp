module.exports = (sequelize, DataTypes) => {
  const User = sequelize.define(
    "user",
    {
      id: { type: DataTypes.BIGINT, primaryKey: true, autoIncrement: true },
      first_name: { type: DataTypes.STRING },
      last_name: { type: DataTypes.STRING },
      email: { type: DataTypes.STRING, unique: true },
      password: { type: DataTypes.STRING },
      phone_number: { type: DataTypes.STRING },
      photo: { type: DataTypes.STRING },
      createdAt: { type: DataTypes.TIME },
      updatedAt: { type: DataTypes.TIME },
    },
    { freezeTableName: true }
  );
  return User;
};
