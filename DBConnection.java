package com1;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection getConnection() {

        Connection con = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/v1?zeroDateTimeBehavior=CONVERT_TO_NULL",
                    "root",
                    "vihan"
            );

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}