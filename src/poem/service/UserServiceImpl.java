package poem.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poem.Dao.UserDao;
import poem.entity.*;;

//@Service��Ӧ����ҵ���Bean
//
//������Action��Ҫʹ��UserServiceImpl�ĵ�ʵ��ʱ,�Ϳ�����Spring�����õġ�userService��ע���Action����Actionֻ��Ҫ����һ�����ֽС�userService���ı�����������Springע��ġ�userService������
//
//@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    /* ��½��֤ */
    public User checkLogin(String uname, String upass) {
        //�����û���ʵ�����û�����
        User user = userDao.findUserByName(uname);
        if (user != null && user.getUpass().equals(upass)) {
            return user;
        }
        return null;
    }
}