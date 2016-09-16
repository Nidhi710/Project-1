package com.cakeandcupcakes.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cakeandcupcakes.model.User;
import com.cakeandcupcakes.service.UserService;


@Controller
public class UserController {
 
	@Autowired(required=true)
  private UserService userService;
  
  

	/*@RequestMapping(value = "/users",method = RequestMethod.GET)
	public String user(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("userList", this.userService.list());
				return "user";
	}*/
  /*@RequestMapping(value="/user/add", method=RequestMethod.POST )
  public String addUser(@ModelAttribute ("user")User user){
		user.setEnabled(true);
		user.setRole("ROLE_USER");
		userService.saveOrUpdate(user);
		
		return "redirect:/login";
		}*/
  @RequestMapping("/login")
  public String login(@RequestParam(value="error", required = false)
  String error,
  @RequestParam(value="logout", required = false)
  String logout,
  Model model){
		
		if(error != null){
          model.addAttribute("error", "Invalid username and password");
      }

      if (logout !=null){
          model.addAttribute("msg", "You have been logged out successfully");
      }
		return "login";
	}
  @RequestMapping(value="/perform_logout", method = RequestMethod.GET)
  public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
      org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
      if (auth != null){    
          new SecurityContextLogoutHandler().logout(request, response, auth);
      }
      return "redirect:/login?logout";
  
  }

}