package singh.mahabir.chat.mypack;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Client {

	private String userName;
	
	private String pass;
	
	private String fName;
	
	private String lName;
	
	private String email;
	
	private String address;
	
	private LocalDate dob;


}
