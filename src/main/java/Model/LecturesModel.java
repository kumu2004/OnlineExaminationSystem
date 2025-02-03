package Model;

public class LecturesModel 

{
	
	private int LecID;
    private String lecturerName;
    private String Email;
    private String Department;
    
    
    public LecturesModel(int LecID, String lecturerName, String Email, String Department) 
    {
        this.LecID = LecID;
        this.lecturerName = lecturerName;
        this.Email = Email;
        this.Department = Department;
    }


	public int getLecID() {
		return LecID;
	}


	public void setLecID(int lecID) {
		LecID = lecID;
	}


	public String getLecturerName() {
		return lecturerName;
	}


	public void setLecturerName(String lecturerName) {
		this.lecturerName = lecturerName;
	}


	public String getEmail() {
		return Email;
	}


	public void setEmail(String email) {
		Email = email;
	}


	public String getDepartment() {
		return Department;
	}


	public void setDepartment(String department) {
		Department = department;
	}

   

}
