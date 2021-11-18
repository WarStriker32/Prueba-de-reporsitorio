package utils.queries;

public final class PositionQueries {
    public static final String GET_ALL_POSITIONS = "SELECT Code AS 'Código', Name AS 'Cargo' FROM Position";
    public static final String INSERT_POSITION = "INSERT INTO Position VALUES(NULL, ?)";
    public static final String UPDATE_POSITION = "UPDATE Position SET Name = ? WHERE Code = ?";
    public static final String DELETE_POSITION = "DELETE FROM Position WHERE Code = ?";
    public static final String GET_POSITION_BY_CODE = "SELECT * FROM Position WHERE Code = ?";
}
