package singh.mahabir.chat.dl;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
	
	/**
	 * It will retrieve the User by userId
	 * 
	 * @param userId userId
	 * @return BookEntity
	 */
	User findByUserId(String userId);
	
	User findByUserIdAndPassword(String userId, String password);

}
