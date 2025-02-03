package Model;


public class AdminModel {
    private int id;
    private String Name;
    private String Email;
    private String Role;
    private String RegisterDate;
    private String RegisterCourse;
    
    
    
    public AdminModel(int id, String Name, String Email, String Role, String RegisterDate , String RegisterCourse) {
        this.id = id;
        this.Name = Name;
        this.Email = Email;
        this.Role = Role;
        this.RegisterDate = RegisterDate;
        this.RegisterCourse = RegisterCourse;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getRole() {
        return Role;
    }

    public void setRole(String Role) {
        this.Role = Role;
    }

    public String getRegisterDate() {
        return RegisterDate;
    }

    public void setRegisterDate(String RegisterDate) {
        this.RegisterDate = RegisterDate;
    }
    
    public String getRegisterCourse() {
        return RegisterCourse;
    }

    public void setRegisterCourse(String RegisterCourse) {
        this.RegisterCourse = RegisterCourse;
    }
}

