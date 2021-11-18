package entities;

public class Worker {

	private int idnum,birthday,mobilenum,entrydate,terminationdate,positionid,
	pensionid,minorchildren,eps,judicialretention;
	private String names,surname,gender,address, emailaddres,username,password;
	private double salary;

	public int getIdnum() {
		return idnum;
	}
	public void setIdnum(int idnum) {
		this.idnum = idnum;
	}
	public int getBirthday() {
		return birthday;
	}
	public void setBirthday(int birthday) {
		this.birthday = birthday;
	}
	public int getMobilenum() {
		return mobilenum;
	}
	public void setMobilenum(int mobilenum) {
		this.mobilenum = mobilenum;
	}
	public int getEntrydate() {
		return entrydate;
	}
	public void setEntrydate(int entrydate) {
		this.entrydate = entrydate;
	}
	public int getTerminationdate() {
		return terminationdate;
	}
	public void setTerminationdate(int terminationdate) {
		this.terminationdate = terminationdate;
	}
	public int getPositionid() {
		return positionid;
	}
	public void setPositionid(int positionid) {
		this.positionid = positionid;
	}
	public int getPensionid() {
		return pensionid;
	}
	public void setPensionid(int pensionid) {
		this.pensionid = pensionid;
	}
	public int getMinorchildren() {
		return minorchildren;
	}
	public void setMinorchildren(int minorchildren) {
		this.minorchildren = minorchildren;
	}
	public int getEps() {
		return eps;
	}
	public void setEps(int eps) {
		this.eps = eps;
	}
	public int getJudicialretention() {
		return judicialretention;
	}
	public void setJudicialretention(int judicialretention) {
		this.judicialretention = judicialretention;
	}
	public String getNames() {
		return names;
	}
	public void setNames(String names) {
		this.names = names;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmailaddres() {
		return emailaddres;
	}
	public void setEmailaddres(String emailaddres) {
		this.emailaddres = emailaddres;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}


}
