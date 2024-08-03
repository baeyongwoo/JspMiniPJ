package com.WorldFlower.UserDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.WorldFlower.Common.DBConnection;
import com.WorldFlower.UserDTO.UserDTO;


public class UserDAO{

	private Connection conn;
	private UserDTO dto = new UserDTO();
	
	//UserDAO 생성하면서 연결시키도록 했으니 각 메서드에 con 따로 구현 안해도됩니다~
	public UserDAO() {
		try {
			this.conn = DBConnection.getInstance().getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//	가입한유저들의 모든 정보조회
	public List<UserDTO> SelectUserAll() {
		
		String sql = "select * from userinfo where CheckResign ='n'";
		List<UserDTO> userList = new ArrayList<UserDTO>();
		try {
			
			PreparedStatement psmt = conn.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			
			
			while(rs.next()) {
				dto.setUserId(rs.getString(1));
				dto.setUserNickName(rs.getString(2));
				dto.setUserRegdate(rs.getTimestamp("userRegdate"));
				dto.setUserUpdatedate(rs.getTimestamp("userUpdatedate"));
				dto.setCheckLogin(rs.getString(5));
				dto.setCheckResign(rs.getString(6));
				
				userList.add(dto);
				
				
			}
		} catch (Exception e) {
			System.out.println("sql 에러");
			e.printStackTrace();
		}
		
		return userList;
		
	} //모든 가입유저 정보끝
	
	

}
