package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.connection.DBUtil;

public class UserDaoImp implements UserDao {
		@Override 
		public boolean isValidUser(String username, String password) {
			String query = "SELECT * FROM users WHERE username=? and password=? ";
			try(Connection connection = DBUtil.getConnection();
				PreparedStatement pst = connection.prepareStatement(query)){
				
				pst.setString(1, username);
				pst.setString(2, password);
				
				ResultSet resultSet = pst.executeQuery();
				
				return resultSet.next();
			}catch(SQLException e) {
				e.printStackTrace();
				return false;
			}
		}

		@Override
		public boolean addUser(User user) {
			// TODO Auto-generated method stub
			String query = "INSERT INTO users(username, email, password)values(?,?,?)";
			try(Connection connection = DBUtil.getConnection();
				PreparedStatement pst = connection.prepareStatement(query)){
				
				pst.setString(1, user.getUsername());
				pst.setString(2, user.getEmail());
				pst.setString(3,user.getPassword());
				
				int row = pst.executeUpdate();
				
				
				return row>0;
				
			}catch(SQLException e) {
				e.printStackTrace();
				return false;
			}
			
		}
}
