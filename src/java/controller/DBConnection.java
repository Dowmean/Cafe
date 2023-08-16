package controller;

import java.sql.*;  // Using 'Connection', 'Statement' and 'ResultSet' classes in java.sql package
import java.util.Arrays;
import model.Drink;

public class DBConnection {

    public boolean insertNewDrink(Drink drink) {
        boolean result = false;
        Connection connection = null;
        try {
            // below two lines are used for connectivity.
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/cafe",
                    "Dowmean", "Dowmean.1006");

            Statement statement;
            statement = connection.createStatement();

            // สร้าง String addที่มีค่าสารอาหารต่าง ๆ คั่นด้วย ;
            String adds = "";
            int nl = drink.getAdds().length;
            
            for(int i=0; i < nl - 1; i++){
                adds = adds + drink.getAdds()[i] + ";";
            }
            // เพิ่มค่า nutrient ตำแหน่งสุดท้ายเข้าไป
            adds = adds + drink.getAdds()[nl-1];
            
            String query = "INSERT INTO drink "
                    + "(name, type, adds, sweet, price) "
                    + "VALUES('"
                    + drink.getName() + "','"
                    + drink.getType() + "','"
                    + adds + "','"
                    + drink.getSweet() + "',"
                    + drink.getPrice() + ")";
            System.out.println("........SQL: " + query);

            int i = statement.executeUpdate(query);	// executeUpdate returns row count ****
            if (i != 0) {
                result = true;
            }
            statement.close();
            connection.close();
        } catch (Exception exception) {
            System.out.println(exception);
        }

        return result;

    }

    /*
    https://www.geeksforgeeks.org/java-database-connectivity-with-mysql/
     */
    public void testRetrieve() {
        Connection connection = null;
        try {
            // below two lines are used for connectivity.
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/cafe",
                    "Dowmean", "Dowmean.1006");

            Statement statement;
            statement = connection.createStatement();
            ResultSet resultSet;
            resultSet = statement.executeQuery(
                    "select name from drink");
            String name;
            while (resultSet.next()) {
                name = resultSet.getString("name").trim();
                System.out.println(" name : " + name);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception exception) {
            System.out.println(exception);
        }
    }

}
