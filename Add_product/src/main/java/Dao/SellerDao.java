package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Connection.DBConnection;
import Model.Seller;


public class SellerDao {
	
	public static Seller loginSeller(Seller s) {
		Seller s1 = null;
		try {
			Connection connection = DBConnection.createConnection();
			String sqlString="select * from seller where email=? and password=?";
			PreparedStatement pst = connection.prepareStatement(sqlString);
			pst.setString(1, s.getEmail());
			pst.setString(2, s.getPassword());
			ResultSet rSet = pst.executeQuery();
			if(rSet.next()) {
				s1 = new Seller();
				s1.setId(rSet.getInt("id"));
				s1.setName(rSet.getString("name"));
				s1.setContact(rSet.getLong("contact"));
				s1.setAddress(rSet.getString("address"));
				s1.setEmail(rSet.getString("email"));
				s1.setPassword(rSet.getString("password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s1;
	}
	
	public static boolean checkEmail(String email) {
		boolean flag = false;
		try {
			Connection connection = DBConnection.createConnection();
			String sqlString="select * from seller where email=?";
			PreparedStatement pst = connection.prepareStatement(sqlString);
			pst.setString(1, email);
			ResultSet rs  = pst.executeQuery();
			if(rs.next()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	}

