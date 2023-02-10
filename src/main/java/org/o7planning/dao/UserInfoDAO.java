package org.o7planning.dao;

import org.o7planning.model.UserInfo;

import java.util.List;

public interface UserInfoDAO {
    public UserInfo findUserInfo(String userName);

    // [USER,AMIN,..]
    public List<String> getUserRoles(String userName);
}
