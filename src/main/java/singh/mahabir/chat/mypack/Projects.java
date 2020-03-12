package singh.mahabir.chat.mypack;
import java.util.HashSet;
import java.util.Set;




public class Projects  
{
     private int prodid;
     private String proname;
	 private String owner;
     private Set programmers=new HashSet();
     public Projects()
 {
	 }
  
    public Projects(int prodid, String proname,String t) 
    {
       this.prodid = prodid;
       this.proname = proname;
	   owner=t;
    }
   
    public void setProdid(int n)
    {
        prodid=n;
    }
    public int getProdid()
    {
        return prodid;
    }
    public void setProname(String s)
    {
        proname=s;
    }
    public String getOwner()
    {
        return owner;
    }
	public void setOwner(String s)
    {
        owner=s;
    }
    public String getProname()
    {
        return proname;
    }
	
    public void setProgrammers(Set s)
    {
        programmers=s;
    }
	public Set getProgrammers()
	{
	return programmers;
    }
}


