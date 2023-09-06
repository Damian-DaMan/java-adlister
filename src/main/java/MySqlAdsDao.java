import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySqlAdsDao implements Ads {
    private Connection connection;

    public MySqlAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();
        String query = "SELECT * FROM ads";
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {
                Ad ad = new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                );
                ads.add(ad);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        Long lastInsertedId = null;
        try {
            Statement statement = connection.createStatement();
            String insertQuery = String.format("INSERT INTO ads (user_id, title, description) Values (%d, '%s', '%s')", ad.getUserId(), ad.getTitle(), ad.getDescription());
            statement.executeUpdate(insertQuery, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = statement.getGeneratedKeys();
            rs.next();
            lastInsertedId = rs.getLong(1);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return lastInsertedId;
    }

//    public static void main(String[] args) {
//        MySqlAdsDao mySqlAdsDao = new MySqlAdsDao(new Config());
//
//        Ad adToInsert = new Ad(
//                1,
//                "Test Insert Ad",
//                "Test Insert Ad Description"
//        );
//        System.out.println(mySqlAdsDao.all());
//    }
}
