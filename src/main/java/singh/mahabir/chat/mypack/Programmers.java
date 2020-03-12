package singh.mahabir.chat.mypack;
import java.util.HashSet;
import java.util.Set;

public class Programmers  
{
     private int pid;
     private String pname;
     private String msg;
     private Set projects=new HashSet();
	 
	public Programmers()
	 {
	 }
  	
   public Programmers(int pid, String pname, String msg) {
       this.pid = pid;
       this.pname = pname;
       this.msg = msg;
    }
   
    public int getPid() {
        return pid;
    }
    
    public void setPid(int n) {
        pid=n;
    }
    public String getPname() 
    {
        return pname;
    }
    
    public void setPname(String s) 
    {
        pname=s;
    }
    public String getMsg()
    {
        return msg;
    }
    
    public void setMsg(String n) {
         msg=n;
    }
    public void setProjects(Set s)
    {
         projects=s;
    }
    public Set getProjects()
    {
        return projects;
    }



}


