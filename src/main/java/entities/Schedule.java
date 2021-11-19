package entities;

public class Schedule {
  private int code,worker_id,month,year,medicalrestdays,absence,holidays,suspensiondays,
  minusteslate,earlymins,extrahours25,extrahours35,extrahours100;
  
  public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public int getWorker_id() {
		return worker_id;
	}

	public void setWorker_id(int worker_id) {
		this.worker_id = worker_id;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getMedicalrestdays() {
		return medicalrestdays;
	}

	public void setMedicalrestdays(int medicalrestdays) {
		this.medicalrestdays = medicalrestdays;
	}

	public int getAbsence() {
		return absence;
	}

	public void setAbsence(int absence) {
		this.absence = absence;
	}

	public int getHolidays() {
		return holidays;
	}

	public void setHolidays(int holidays) {
		this.holidays = holidays;
	}

	public int getSuspensiondays() {
		return suspensiondays;
	}

	public void setSuspensiondays(int suspensiondays) {
		this.suspensiondays = suspensiondays;
	}

	public int getMinusteslate() {
		return minusteslate;
	}

	public void setMinusteslate(int minusteslate) {
		this.minusteslate = minusteslate;
	}

	public int getEarlymins() {
		return earlymins;
	}

	public void setEarlymins(int earlymins) {
		this.earlymins = earlymins;
	}

	public int getExtrahours25() {
		return extrahours25;
	}

	public void setExtrahours25(int extrahours25) {
		this.extrahours25 = extrahours25;
	}

	public int getExtrahours35() {
		return extrahours35;
	}

	public void setExtrahours35(int extrahours35) {
		this.extrahours35 = extrahours35;
	}

	public int getExtrahours100() {
		return extrahours100;
	}

	public void setExtrahours100(int extrahours100) {
		this.extrahours100 = extrahours100;
	}


}
