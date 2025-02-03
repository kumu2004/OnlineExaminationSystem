package Model;

public class ExamPlan {
	
	
	private int id;
    private String examName;
    private String eDate;
    private String eTime;
    private String eDuration;
    
    
	public ExamPlan(int id, String examName, String eDate, String eTime, String eDuration) {
		super();
		this.id = id;
		this.examName = examName;
		this.eDate = eDate;
		this.eTime = eTime;
		this.eDuration = eDuration;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getExamName() {
		return examName;
	}


	public void setExamName(String examName) {
		this.examName = examName;
	}


	public String geteDate() {
		return eDate;
	}


	public void seteDate(String eDate) {
		this.eDate = eDate;
	}


	public String geteTime() {
		return eTime;
	}


	public void seteTime(String eTime) {
		this.eTime = eTime;
	}


	public String geteDuration() {
		return eDuration;
	}


	public void seteDuration(String eDuration) {
		this.eDuration = eDuration;
	}
	
	
	
	
    
    
    

}
