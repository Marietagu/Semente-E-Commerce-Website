package models.managers;

import models.entities.User;
import services.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegistrationManager{


//        for register user
//        public boolean saveUser(User user){
//                boolean set = false;
//
//                try (PreparedStatement preparedStatement = DatabaseConnection.getInstance().preparedQuery("insert into users(name,email,password) values(?,?,?)")) {
//
//                        PreparedStatement preparedStatement = preparedStatement.executeQuery();
//
//                        String name = preparedStatement.setString(1, user.getName());
//                        preparedStatement.setString(2, user.getEmail());
//                        preparedStatement.setString(3, user.getPassword());
//
//                        preparedStatement.executeUpdate();
//                        set = true;
//
//                }catch(Exception e){
//                        e.printStackTrace();
//                }
//                return set;
//        }
}
