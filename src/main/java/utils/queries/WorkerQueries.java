package utils.queries;

public final class WorkerQueries {
    public static final String GET_ALL_WORKERS = "CALL GetAllWorkers()";
    public static final String INSERT_WORKER = "INSERT INTO Worker VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    public static final String UPDATE_WORKER = "UPDATE Worker SET Names = ?, Surname = ?, Gender = ?, Birthday = ?, MobileNum = ?, " +
        "Address = ?, EntryDate = ?, TerminationDate = ?, PositionId = ?, Salary = ?, PensionId = ?, MinorChildren = ? WHERE IDnum = ?";
    public static final String DELETE_WORKER = "DELETE FROM Worker WHERE IDnum = ?";
    public static final String LOGIN = "CALL Login(?, ?)";
    public static final String GET_WORKER_BY_ID = "CALL GetWorkerById(?)";
    public static final String GET_PASSWORD_BY_USERNAME = "SELECT Password FROM Worker WHERE Username = ?";
}
