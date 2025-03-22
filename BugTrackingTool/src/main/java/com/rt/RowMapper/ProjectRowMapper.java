package com.rt.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.rt.Entity.AddProjectEntity;

public class ProjectRowMapper implements RowMapper<AddProjectEntity> {

	public AddProjectEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		return new AddProjectEntity(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),
				rs.getString(8),rs.getString(9),rs.getString(10));
	}

}
