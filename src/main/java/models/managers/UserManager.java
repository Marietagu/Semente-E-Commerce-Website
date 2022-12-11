package models.managers;
import models.entities.User;
import services.DatabaseConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import services.DatabaseConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import models.entities.Product;
public class UserManager {
    public static HashMap<Integer, User> getAll() {
        HashMap<Integer, User> result = new HashMap<>();
        // Get service // Do query
        try (PreparedStatement preparedStatement = DatabaseConnection.getInstance().preparedQuery("select * from users")) {
            ResultSet resultSet = preparedStatement.executeQuery();
            // Process result
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                User user = new User(id, name, email, password);
                result.put(user.getId(), user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseConnection.getInstance().close();
        }
        return result;
    }
    public static void saveUser(User user) {
        try (PreparedStatement preparedStatement = DatabaseConnection.getInstance().preparedQuery("insert into users(name,email,password) values(?,?,?)")) {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            DatabaseConnection.getInstance().close();
        }
    }
    public static User getLogin(String email, String password) {
        User newUser = null;
        try (PreparedStatement preparedStatement = DatabaseConnection.getInstance().preparedQuery("select * from users where email = ? and password = ?")) {
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                newUser = new User(id, name, email, password);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            DatabaseConnection.getInstance().close();
        }
        return newUser;
    }
    public static Boolean validateEmail(String email) {
        try (PreparedStatement preparedStatement = DatabaseConnection.getInstance().preparedQuery("select * from users where email = ? ")) {
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return true;
            }
        }catch(SQLException e){
            throw new RuntimeException(e);
        }finally {
            DatabaseConnection.getInstance().close();
        }
        return false;
    }
}