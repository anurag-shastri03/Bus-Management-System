
package com.data_access_object;

import com.entities.User;
import com.entities.User_Query;
import com.entities.bus_entry;
import java.sql.*;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    //method to insert user to data base:
    public boolean saveUser(User user) {
        boolean f = false;
        try {
            //user -->database

            String query = "insert into user(name,email,password,gender,about) values (?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            
            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;

    }

    //get user by useremail and userpassword:
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {

            String query = "select * from user where email =? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                user = new User();

//             data from db
                String name = set.getString("name");
//             set to user object
                user.setName(name);

                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("regdate"));
                user.setProfile(set.getString("profile"));
                user.setUser_type(set.getString("user_type"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
    
    public boolean saveQuery(User_Query user)
    {
        boolean f = false;
        try {
            //user -->database

            String query = "insert into querry(qname,qemail,qbranch,qabout) values (?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getQname());
            pstmt.setString(2, user.getQemail());
            pstmt.setString(3, user.getQbranch());
            pstmt.setString(4, user.getQabout());
            pstmt.executeUpdate();
            
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    
        return f;
    }
    public boolean saveData( bus_entry bus)
    {
        boolean f = false;
        try {
            //user -->database
            
            String query = "update into bus43(busno,stop,time) values (?,?,?) where stop like ? ";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, bus.getBus_no()); 
            pstmt.setString(2, bus.getStop());
            pstmt.setString(3, bus.getTime());
            pstmt.setString(4, bus.getPlace());
            
            pstmt.executeUpdate();
            
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    
        return f;
    
    }
    
    

    public boolean updateUser(User user) {

        boolean f = false;
        try {

            String query = "update user set name=? , email=? , password=? , gender=? ,about=? , profile=? where  id =?";
            PreparedStatement p = con.prepareStatement(query);
            p.setString(1, user.getName());
            p.setString(2, user.getEmail());
            p.setString(3, user.getPassword());
            p.setString(4, user.getGender());
            p.setString(5, user.getAbout());
            p.setString(6, user.getProfile());
            p.setInt(7, user.getId());

            p.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public User getUserByUserId(int userId) {
        User user = null;
        try {
            String q = "select * from user where id=?";
            PreparedStatement ps = this.con.prepareStatement(q);
            ps.setInt(1, userId);
            ResultSet set = ps.executeQuery();
            if (set.next()) {
                user = new User();

//             data from db
                String name = set.getString("name");
//             set to user object
                user.setName(name);

                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("rdate"));
                user.setProfile(set.getString("profile"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
}
