/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('asset_to_notes', {
		asset_to_note_id: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		asset_id: {
			type: DataTypes.INTEGER(11),
			allowNull: false
		},
		note_id: {
			type: DataTypes.INTEGER(10),
			allowNull: false
		},
		notes: {
			type: DataTypes.TEXT,
			allowNull: false
		},
		notes_entry_date: {
			type: DataTypes.DATE,
			allowNull: false,
			defaultValue: sequelize.literal('CURRENT_TIMESTAMP')
		}
	}, {
		tableName: 'asset_to_notes'
	});
	return asset_to_notes;
};
