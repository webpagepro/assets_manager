/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('category_to_attributes', {
		category_to_attributes_id: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		attribute_id: {
			type: DataTypes.INTEGER(11),
			allowNull: true
		},
		category_id: {
			type: DataTypes.INTEGER(11),
			allowNull: true
		}
	}, {
		tableName: 'category_to_attributes'
	});
	return category_to_attributes;
};
