import com.opensymphony.xwork2.ActionSupport;

public class LinkAction extends ActionSupport {

	private static final long serialVersionUID = -2613425890762568273L;

	public String welcome()
	{
		return "welcome";		
	}
	
	public String login()
	{
		return "login";		
	}
	
	public String office()
	{
		return "office";		
	}
}