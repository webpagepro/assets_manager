/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('attributes', {
		attribute_id: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		attribute_name: {
			type: DataTypes.STRING(256),
			allowNull: false
		}
	}, {
		tableName: 'attributes'
  });
  return attributes;

};
