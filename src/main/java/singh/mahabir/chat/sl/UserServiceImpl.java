package singh.mahabir.chat.sl;

import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import singh.mahabir.chat.dl.RoleRepository;
import singh.mahabir.chat.dl.User;
import singh.mahabir.chat.dl.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public void save(UserRequest userForm) {
		User user = new User();
		user.setDob(userForm.getDob());
		user.setEmail(userForm.getEmail());
		user.setFirstName(userForm.getFirstName());
		user.setLastName(userForm.getLastName());
		user.setUserId(userForm.getUsername());
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(new HashSet<>(roleRepository.findAll()));
		userRepository.save(user);

	}

	@Override
	public User findByUsername(String username) {
		return userRepository.findByUserId(username);
	}

}
