package com.rt.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.rt.Entity.AddUserEntity;

public class UserRowMapper implements RowMapper<AddUserEntity> {

	public AddUserEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		return new AddUserEntity(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),
				rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14)
				,rs.getString(15),rs.getString(16));
	}

}
