package com.rt.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.rt.Entity.AddBugEntity;

public class BugRowMapper implements RowMapper<AddBugEntity> {

	public AddBugEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		return new AddBugEntity(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
	}
}
