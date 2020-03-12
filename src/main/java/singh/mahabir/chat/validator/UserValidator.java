package singh.mahabir.chat.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import singh.mahabir.chat.dl.User;
import singh.mahabir.chat.sl.UserRequest;
import singh.mahabir.chat.sl.UserService;

@Component
public class UserValidator implements Validator {

	 @Autowired
	    private UserService userService;

	    @Override
	    public boolean supports(Class<?> aClass) {
	        return User.class.equals(aClass);
	    }

	    @Override
	    public void validate(Object o, Errors errors) {
	        UserRequest user = (UserRequest) o;

	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
	        if (user.getUsername().length() < 3 || user.getUsername().length() > 15) {
	            errors.rejectValue("username", "Size.userForm.username");
	        }
	        if (userService.findByUsername(user.getUsername()) != null) {
	            errors.rejectValue("username", "Duplicate.userForm.username");
	        }

	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
	        if (user.getPassword().length() < 5 || user.getPassword().length() > 21) {
	            errors.rejectValue("password", "Size.userForm.password");
	        }

	        if (!user.getPasswordConfirm().equals(user.getPassword())) {
	            errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
	        }
	    }
}
