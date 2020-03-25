package poem.service;

import poem.entity.User;


public interface UserService {
    // 通过用户名及密码核查用户登录
    public User checkLogin(String uname, String upass);
}