/**
 * Copyright (C), 2015-2018, 上海象翌微链有限公司
 * FileName: User
 * Author:   suneee
 * Date:     2018/12/17 13:47
 * Description: 用户
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.wjy.model;

/**
 * 〈一句话功能简述〉<br> 
 * 〈用户〉
 *
 * @author suneee
 * @create 2018/12/17
 * @since 1.0.0
 */
public class User {

    public String username;
    public String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
