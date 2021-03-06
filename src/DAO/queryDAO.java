package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.Account;

import DB.MyDB;

public class queryDAO {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public boolean insertAccount(String role, String email, String pass, String img, String firstName, String lastName,
			String phone, String address, String gender, String dateBirth, String dateCreared, boolean isAvailable) {
		Connection conn1 = null, conn2 = null;
		PreparedStatement ps1 = null, ps2 = null;
		ResultSet rs = null;
		try {
			String query = "insert into Account values('" + email + "','" + pass + "','" + img + "','" + firstName
					+ "','" + lastName + "','" + phone + "','" + address + "' ,'" + gender + "','" + dateBirth + "' ,'"
					+ dateCreared + "','" + isAvailable + "')";
			System.out.println(query);
			conn1 = new MyDB().getConnection();
			ps1 = conn1.prepareStatement(query);
			ps1.executeUpdate();

			String query2 = "insert into AccountRole values('" + email + "','" + role + "')";
			conn2 = new MyDB().getConnection();
			System.out.println(query2);
			ps2 = conn2.prepareStatement(query2);
			ps2.executeUpdate();

			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	public boolean deleteAccount(String email) {
		try { // delete Role truoc, vi no co khoa ngoai
			String query2 = "delete from AccountRole where email='" + email + "'";
			conn = new MyDB().getConnection();
			System.out.println(query2);
			ps = conn.prepareStatement(query2);
			ps.executeUpdate();
			
			String query = "delete from Account where email='" + email + "'";
			conn = new MyDB().getConnection();
			ps = conn.prepareStatement(query);
			ps.executeUpdate();

			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	public boolean updateAccount(String role, String email, String pass, String img, String firstName, String lastName,
			String phone, String address, String gender, String dateBirth, String dateCreared, boolean isAvailable) {
		Connection conn1 = null, conn2 = null;
		PreparedStatement ps1 = null, ps2 = null;
		ResultSet rs = null;
		try {
			String query = "insert into Account values('" + email + "','" + pass + "','" + img + "','" + firstName
					+ "','" + lastName + "','" + phone + "','" + address + "' ,'" + gender + "','" + dateBirth + "' ,'"
					+ dateCreared + "','" + isAvailable + "')";
			System.out.println(query);
			conn1 = new MyDB().getConnection();
			ps1 = conn1.prepareStatement(query);
			ps1.executeUpdate();

			String query2 = "insert into AccountRole values('" + email + "','" + role + "')";
			conn2 = new MyDB().getConnection();
			System.out.println(query2);
			ps2 = conn2.prepareStatement(query2);
			ps2.executeUpdate();

			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	public boolean accountExists(String email) {
		String query = "select * from Account where Email=?";
		try {
			conn = new MyDB().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			
			if (rs.next()) {
				return true;   // co ton tai email nay trong dbo.Account
			}
			return false;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
}
