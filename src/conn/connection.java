package conn;
import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.*;

public class connection {
    
    public static Connection conn() {
        String dbURL = "jdbc:sqlserver://localhost;databaseName=QLBanHang;user=sa;password=sa";
                String url = "LAPTOP-RVK3043T";
                String connectionUrl =
                "jdbc:sqlserver://localhost:1433;" +
                 "databaseName=qltuyensinh;user=sa;password=sa;integratedSecurity=true;" +
                 "encrypt=true;trustServerCertificate=true";
                Connection conn=null;
                try {
                     conn = DriverManager.getConnection(connectionUrl);
                     if (conn  != null) {
                         
                     }
                } catch(Exception e) {
                    e.printStackTrace();
                }
                return conn;
    }
        
                
    

}