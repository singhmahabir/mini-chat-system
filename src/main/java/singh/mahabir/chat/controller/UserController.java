package singh.mahabir.chat.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.slf4j.Slf4j;
import singh.mahabir.chat.auth.SecurityService;
import singh.mahabir.chat.dl.User;
import singh.mahabir.chat.dl.UserRepository;
import singh.mahabir.chat.sl.UserRequest;
import singh.mahabir.chat.sl.UserService;
import singh.mahabir.chat.validator.UserValidator;

@Controller
@Slf4j
public class UserController {


	@Autowired
	private ServletContext context;

	@Autowired
	private SecurityService securityService;
	
	@Autowired
    private UserValidator userValidator;
	
	@Autowired
    private UserService userService;

	//We don't define /login POST controller, it is provided by Spring Security
	 @GetMapping({"/", "/welcome"})
	    public String welcome(Model model) {
	        return "welcome";
	    }

	@GetMapping("/registration")
	public String registration(Model model) {
		model.addAttribute("userForm", new UserRequest());

		return "registration";
	}

	@PostMapping("/registration")
	public String registration(@ModelAttribute("userForm") UserRequest userForm, BindingResult bindingResult) {
		userValidator.validate(userForm, bindingResult);

		if (bindingResult.hasErrors()) {
			return "registration";
		}

		userService.save(userForm);

		securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

		return "redirect:/welcome";
	}

	@GetMapping("/login")
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Your username and password is invalid.");

		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");

		return "login";
	}


	@PostMapping("/destroy")
	public String destroySession(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";

	}
}
