package models.managers;
import services.DatabaseConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import models.entities.Product;

public class ProductManager {

//    @Language("SQL") // need to set datasource to use this
//    private static final String queryByCategory = "select * from product where lower(category) = ?";
//    @Language("SQL") // we now know the query works
//    private static final String queryAll = "select * from product";

    public static HashMap<Integer, Product> getAll() {
        HashMap<Integer, Product> result = new HashMap<>();

        // Get service // Do query
        try (PreparedStatement preparedStatement = DatabaseConnection.getInstance().preparedQuery("select * from product")) {

            ResultSet resultSet = preparedStatement.executeQuery();

            // Process result
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String category = resultSet.getString("category");
                float price = resultSet.getFloat("price");

                Product product = new Product(id, name, category, price);

                result.put(product.getId(), product); // add all products
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseConnection.getInstance().close(); // very important
        }

        // return result
        return result;
    }

    public static HashMap<Integer, Product> getByName(String value) {
        HashMap<Integer, Product> result = new HashMap<>();

        try (PreparedStatement preparedStatement = DatabaseConnection.getInstance().preparedQuery("select * from product where lower(name) = ?")) {
            preparedStatement.setString(1, value.toLowerCase()); // index starts at 1 instead of 0

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String category = resultSet.getString("category");
                float price = resultSet.getFloat("price");

                Product product = new Product(id, name, category, price);

                result.put(product.getId(), product);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            DatabaseConnection.getInstance().close();
        }

        return result;
    }

}
