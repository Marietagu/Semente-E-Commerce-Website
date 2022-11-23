package services;

import org.intellij.lang.annotations.Language;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseConnection {



    //region Singleton
    private static DatabaseConnection instance;

    private DatabaseConnection() {
    }

    public static DatabaseConnection getInstance() {
        if (instance == null)
            instance = new DatabaseConnection();
        return instance;
    }
    //endregion


    private Connection connection = null;

    public PreparedStatement preparedQuery(@Language("MySQL") String query) {
        PreparedStatement ps = null;

        try {
            if (connection == null || connection.isClosed()) {
                Class.forName("com.mysql.cj.jdbc.Driver"); // makes sure the library is in project
                String urlConnection = "jdbc:mysql://localhost:3306/ecommercecart_db";
                String username = "root";
                // the one set in the installation
                String password = "112358";
                connection = DriverManager.getConnection(urlConnection, username, password);
                ps = connection.prepareStatement(query);
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return ps;
    }

    public void close() {
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
