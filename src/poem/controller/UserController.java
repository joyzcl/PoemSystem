package poem.controller;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poem.service.UserService;
import poem.entity.User;;

@Controller

@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping(value="/login",method=RequestMethod.POST)
    public String login(User user,Model model) throws Exception {
        user=userService.checkLogin(user.getUname(), user.getUpass());
        if(user!=null){
            model.addAttribute(user);
            return "PoemMain";           
        }
        return "login";
    }
}
