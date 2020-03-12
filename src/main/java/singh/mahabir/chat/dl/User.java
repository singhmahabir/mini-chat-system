package singh.mahabir.chat.dl;

import java.sql.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Transient;

import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class User {
	
	  @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  private Long id;
	  
	  @Column(unique = true, nullable = false)
	  private String userId;
	  private String password;
	  private String firstName;
	  private String lastName;
	  private String email;
	  private Date dob;
	  
	  @Transient
	  private String passwordConfirm;
	  
	  @ManyToMany
	  private Set<Role> roles;
	

}
