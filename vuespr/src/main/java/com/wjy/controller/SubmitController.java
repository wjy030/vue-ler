/**
 * Copyright (C), 2015-2018, 上海象翌微链有限公司
 * FileName: SubmitController
 * Author:   suneee
 * Date:     2018/12/17 13:43
 * Description: 注册
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.wjy.controller;

import com.wjy.model.JsonReturn;
import com.wjy.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/**
 * 〈一句话功能简述〉<br> 
 * 〈注册〉
 *
 * @author suneee
 * @create 2018/12/17
 * @since 1.0.0
 */
@RequestMapping("/submit")
@Controller
public class SubmitController {

    @RequestMapping(value = "/doP",method = RequestMethod.POST)
    @ResponseBody
    public JsonReturn submitP(@RequestBody User user) {
        System.out.println(user);
        JsonReturn jr = new JsonReturn();
        if(Objects.equals(user.getUsername(),"wjy030") && Objects.equals(user.getPassword(),"123456")) {
            jr.setReturnCode(1);
            Map m = new HashMap();
            m.put("message","登录成功");
            jr.setData(m);
        }else{
            jr.setReturnCode(0);
            Map m = new HashMap();
            m.put("error","用户名或密码错误");
            jr.setData(m);
        }
        return jr;
    }

    @RequestMapping(value="/doG")
    @ResponseBody
    public JsonReturn submitG(String username,String password) {
        System.out.println(username+password);
        JsonReturn jr = new JsonReturn();
        if(Objects.equals(username,"wjy030") && Objects.equals(password,"123456")) {
            jr.setReturnCode(1);
            Map m = new HashMap();
            m.put("message","登录成功");
            jr.setData(m);
        }else{
            jr.setReturnCode(0);
            Map m = new HashMap();
            m.put("error","用户名或密码错误");
            jr.setData(m);
        }
        return jr;
    }
}
