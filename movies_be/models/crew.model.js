module.exports = (sequelize, DataTypes) => {
  const Crew = sequelize.define(
    "crew",
    {
      id: { type: DataTypes.BIGINT, primaryKey: true, autoIncrement: true },
      movieId: { type: DataTypes.BIGINT },
      name: { type: DataTypes.STRING },
      image: { type: DataTypes.STRING },
      position: { type: DataTypes.STRING },
      nameCarc: { type: DataTypes.STRING },
      createdAt: { type: DataTypes.TIME },
      updatedAt: { type: DataTypes.TIME },
    },
    { freezeTableName: true }
  );
  return Crew;
};
