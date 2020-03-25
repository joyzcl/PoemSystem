package poem.mapper;

import poem.entity.User;

public interface UserMapper {

    public User getUserByName(String username);
}