/**
 * This Blog task was completed by:
 * Paige Watson
 * Hamsini Shivakumar
 * Brian Tobin
 * Giedrius Banys
 * Margin Kantilal
 */
package com.contentManager.dao;

import com.contentManager.model.Comment;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CommentMapper implements RowMapper<Comment> {
    @Override
    public Comment mapRow(ResultSet resultSet, int i) throws SQLException {
        Comment comment = new Comment();

        comment.setId(resultSet.getInt("id"));
        comment.setCreateDate(resultSet.getTimestamp("createDate").toLocalDateTime());
        comment.setComment(resultSet.getString("comment"));

        return comment;
    }

}
