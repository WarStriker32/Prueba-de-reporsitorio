package interfaces;

import entities.Worker;

public interface WorkerDAO extends Crudable<Worker>{
	public Worker login(String username, String password);
}
