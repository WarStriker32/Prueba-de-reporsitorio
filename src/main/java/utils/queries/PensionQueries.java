package utils.queries;

public final class PensionQueries {
    public static final String GET_ALL_PENSIONS = "SELECT Code AS 'Code', Name AS 'Pensión' FROM Pension";
    public static final String INSERT_PENSION = "INSERT INTO Pension VALUES(NULL, ?)";
    public static final String UPDATE_PENSION = "UPDATE Pension SET Name = ? WHERE Code = ?";
    public static final String DELETE_PENSION = "DELETE FROM Pension WHERE Code = ?";
    public static final String GET_PENSION_BY_CODE = "SELECT * FROM Pension WHERE Code = ?";
}
