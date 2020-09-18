
 package mybean;

public class LoginBean 
{
	  private String name=null;
	  private String pass=null;
	  public LoginBean()
	  {
		  
	  }
	  public void setName1(String value)
	  {
		  name=value; 
	  }
	  public void setPass1(String value)
	  {
		  pass=value;
		  
	  }
	  public String getName1()
	  {
		  return name;
		  
	  }
	  public String getPass1()
	  {
		  return pass;
		  
	  }
	  public int check()
	  {
		if(name.equals("n1") && pass.equals("123"))
		  {
			  return 1;
		  }
		else
		  {
			  return 0;
		  }
		  }
	  }
	