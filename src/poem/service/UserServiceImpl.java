package poem.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poem.Dao.UserDao;
import poem.entity.*;;

//@Service对应的是业务层Bean
//
//这样当Action需要使用UserServiceImpl的的实例时,就可以由Spring创建好的”userService”注入给Action：在Action只需要声明一个名字叫“userService”的变量来接收由Spring注入的”userService”即可
//
//@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    /* 登陆验证 */
    public User checkLogin(String uname, String upass) {
        //根据用户名实例化用户对象
        User user = userDao.findUserByName(uname);
        if (user != null && user.getUpass().equals(upass)) {
            return user;
        }
        return null;
    }
}