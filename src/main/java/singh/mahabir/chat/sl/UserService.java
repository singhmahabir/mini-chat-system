package singh.mahabir.chat.sl;

import singh.mahabir.chat.dl.User;

public interface UserService {

	void save(UserRequest user);

    User findByUsername(String username);
    
}
