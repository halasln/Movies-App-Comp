module.exports = (sequelize, DataTypes) => {
  const Movies = sequelize.define(
    "movies",
    {
      id: { type: DataTypes.BIGINT, primaryKey: true, autoIncrement: true },
      title: { type: DataTypes.STRING },
      type: { type: DataTypes.STRING },
      description: { type: DataTypes.STRING },
      duration: { type: DataTypes.STRING },
      year: { type: DataTypes.BIGINT },
      production: { type: DataTypes.STRING },
      trailer: { type: DataTypes.STRING },
      bannerIimage: { type: DataTypes.STRING },
      detailsImage: { type: DataTypes.STRING },
      createdAt: { type: DataTypes.TIME },
      updatedAt: { type: DataTypes.TIME },
    },
    { freezeTableName: true }
  );
  return Movies;
};
