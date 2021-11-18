package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import org.eclipse.jdt.annotation.Nullable;
import io.github.cdimascio.dotenv.Dotenv;

public class MySqlConnexion {

    @Nullable
    public static Connection getConnexion() {
        Dotenv dotenv = Dotenv
            .configure()
            .directory(System.getProperty("user.dir") + "/.env")
            .load();
        Connection connexion = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connexion = DriverManager.getConnection(
                "jdbc:mysql://localhost:" + dotenv.get("DB_PORT", "3306") + "/" + dotenv.get("DB_NAME") + "?useUnicode=yes&characterEncoding=UTF-8",
                dotenv.get("DB_USER"),
                dotenv.get("DB_PASSWORD")
            );
        }
        catch (ClassNotFoundException e) { System.out.println("The driver is not installed correctly."); }
        catch (SQLException e) { e.printStackTrace(); }
        catch (Exception e) { System.out.println(e.getMessage()); }

        return connexion;
    }

    public static enum MsgTypes {
        INFO, SUCCESS, ERROR;
    }

    public static void closeAll(@Nullable Connection connexion, @Nullable PreparedStatement preparedStatement) {
    	try {
            if (preparedStatement != null && !preparedStatement.isClosed()) preparedStatement.close();
			if (connexion != null && !connexion.isClosed()) connexion.close();
		}
    	catch (Exception e) { e.printStackTrace(); }
    }
}
