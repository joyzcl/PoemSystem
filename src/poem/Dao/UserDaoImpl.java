package poem.Dao;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import poem.entity.User;
import poem.mapper.UserMapper;

//@Repository对应数据访问层Bean
//
//@Repository(value=”userDao”)注解是告诉Spring，让Spring创建一个名字叫“userDao”的UserDaoImpl实例。
//
//当Service需要使用Spring创建的名为“userDao”的UserDaoImpl实例时， 
//就可以使用@Resource(name =”userDao”)注解告诉Spring，Spring把创建好的userDao注入给Service即可。
@Repository("userDao")
public class UserDaoImpl implements UserDao {
    //注解引用Mapper类资源
    @Resource(name = "userMapper")
    private UserMapper userMapper;

    /* 根据用户名查找用户对象 */
    public User findUserByName(String uname) {
        //调用Mapper类从数据库中得到User对象
        return userMapper.getUserByName(uname);
    }
}
