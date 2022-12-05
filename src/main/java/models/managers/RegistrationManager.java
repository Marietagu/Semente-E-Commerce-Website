package models.managers;

import models.entities.User;
import services.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegistrationManager{
        public static boolean saveUser(User user){
                boolean set = false;


                try (PreparedStatement preparedStatement = DatabaseConnection.getInstance().preparedQuery("insert into users(name,email,password) values(?,?,?)")) {

                        ResultSet resultSet  = preparedStatement.executeQuery();


                        String name= resultSet.getString(1);
                        String email = resultSet.getString(2);
                        String password = resultSet.getString(3);

                        preparedStatement.executeUpdate();
                        set = true;

                }catch(Exception e){
                        e.printStackTrace();
                }
                return set;
        }
}
