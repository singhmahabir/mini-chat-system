package singh.mahabir.chat.sl;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class UserRequest {
	  private String username;
	  private String password;
	  private String firstName;
	  private String lastName;
	  private String email;
	  private Date dob;
	  private String passwordConfirm;
}
