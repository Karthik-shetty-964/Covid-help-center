package chc;


public class patient_modal 
{
	@Override
	public String toString() {
		return "patient_modal [patient_id=" + patient_id + ", name=" + name + ", age=" + age + ", condition=" + con + ", address="
				+ address + ", phone=" + phone + ", pincode=" + pincode+ "]";
	}
	
	public patient_modal() {
		super();
		// TODO Auto-generated constructor stub
	}
	public patient_modal(int patient_id, String name,int age, String con, String address, String phone, int pincode) {
		super();
		this.patient_id = patient_id;
		this.name = name;
		this.age = age;
		this.con = con;
		this.address = address;
		this.phone = phone;
		this.pincode = pincode;
		
	}
	
	private String name,con,address,phone;
	private int patient_id,age,pincode;
	
	public int getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCon() {
		return con;
	}
	public void setCon(String con) {
		this.con = con;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
}	