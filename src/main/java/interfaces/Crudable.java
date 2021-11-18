package interfaces;

import java.util.List;

public interface Crudable<T> {
    public int create(T entity);
    public List<T> read();
    public int update(T entity);
    public int delete(int code);
}
