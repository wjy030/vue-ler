/**
 * Copyright (C), 2015-2018, 上海象翌微链有限公司
 * FileName: TestController
 * Author:   wjy
 * Date:     2018/12/15 12:52
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.wjy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author wjy
 * @create 2018/12/15
 * @since 1.0.0
 */
@Controller
@RequestMapping("test")
public class TestController {

    @RequestMapping("/te")
    @ResponseBody
    public String test() {
        return "success";
    }
}
