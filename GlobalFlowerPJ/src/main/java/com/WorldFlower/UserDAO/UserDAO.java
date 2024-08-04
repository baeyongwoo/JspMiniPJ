package com.WorldFlower.UserDAO;

import com.WorldFlower.Common.DBConnection;
import com.WorldFlower.UserDTO.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;

public class UserDAO {
    private Connection conn;

    public UserDAO() {
        try {
            this.conn = DBConnection.getInstance().getConnection();
        } catch (NamingException | SQLException e) {
            e.printStackTrace();
        }
    }

    public List<UserDTO> selectUserAll() {
        String sql = "SELECT * FROM userinfo";
        List<UserDTO> userList = new ArrayList<>();
        try (PreparedStatement psmt = conn.prepareStatement(sql);
        	
             ResultSet rs = psmt.executeQuery()) {
            while (rs.next()) {
                UserDTO dto = new UserDTO();
                dto.setUserId(rs.getString(1));
                dto.setUserNickName(rs.getString(2));
                dto.setUserRegdate(rs.getTimestamp("userRegdate"));
                dto.setUserUpdatedate(rs.getTimestamp("userUpdatedate"));
                dto.setCheckLogin(rs.getString(5));
                dto.setCheckResign(rs.getString(6));
                userList.add(dto);
            }
        } catch (SQLException e) {
            System.out.println("SQL 에러");
            e.printStackTrace();
        }

        for (UserDTO userDTO : userList) {
            System.out.println("userList: " + userDTO);
        }
        return userList;
    }
}
