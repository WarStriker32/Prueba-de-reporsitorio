package factories;

import org.eclipse.jdt.annotation.Nullable;

import interfaces.PensionDAO;
import interfaces.PositionDAO;
import interfaces.VoucherDAO;
import interfaces.WorkerDAO;

public abstract class DAOFactory {
    // Data origins
    public static final int MYSQL = 1;
    public static final int SQL_SERVER = 2;

    // Interfaces
    public abstract PensionDAO getPensionDAO();
    public abstract PositionDAO getPositionDAO();
    public abstract VoucherDAO getVoucherDAO();
    public abstract WorkerDAO getWorkerDAO();
    
    //
    @Nullable
    public static DAOFactory getDAOFactory(int whichFactory) {
        return switch (whichFactory) {
            case MYSQL -> new MySqlDAOFactory();
            case SQL_SERVER -> new SqlServerDAOFactory();
            default -> null;
        };
    }
}
