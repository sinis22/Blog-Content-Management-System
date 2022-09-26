/**
 * This Blog task was completed by:
 * Paige Watson
 * Hamsini Shivakumar
 * Brian Tobin
 * Giedrius Banys
 * Margin Kantilal
 */
package com.contentManager.dao;

import com.contentManager.model.Role;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RoleMapper implements RowMapper<Role> {
    @Override
    public Role mapRow(ResultSet resultSet, int i) throws SQLException {
        Role role = new Role();

        role.setId(resultSet.getInt("id"));
        role.setName(resultSet.getString("name"));

        return role;
    }
}
