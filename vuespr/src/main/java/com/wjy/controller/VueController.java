/**
 * Copyright (C), 2015-2018, 上海象翌微链有限公司
 * FileName: VueController
 * Author:   wjy
 * Date:     2018/12/15 13:57
 * Description: vue测试
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.wjy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 〈一句话功能简述〉<br> 
 * 〈vue测试〉
 *
 * @author wjy
 * @create 2018/12/15
 * @since 1.0.0
 */
@Controller
@RequestMapping("vue")
public class VueController {
    @RequestMapping("show")
    public String show() {
        return "vue1";
    }

    @RequestMapping("show2")
    public String show2() {
        return "vue2";
    }

    @RequestMapping("show3")
    public String show3() {
        return "vue3";
    }
    @RequestMapping("show4")
    public String show4() {
        return "vue4";
    }
    @RequestMapping("show5")
    public String show5() {
        return "vue5";
    }
    @RequestMapping("show6")
    public String show6() {
        return "vue6";
    }
    @RequestMapping("show7")
    public String show7() {
        return "vue7";
    }
    @RequestMapping("show8")
    public String show8() {
        return "vue8";
    }
    @RequestMapping("show9")
    public String show9() {
        return "vue9";
    }
    @RequestMapping("show10")
    public String show10() {
        return "vue10";
    }
    @RequestMapping("show11")
    public String show11() {
        return "vue11";
    }
    @RequestMapping("show12")
    public String show12() {
        return "vue12";
    }
    @RequestMapping("show13")
    public String show13() {
        return "vue13";
    }
    @RequestMapping("show14")
    public String show14() {
        return "vue14";
    }
    @RequestMapping("show20")
    public String show20() {
        return "vue20";
    }
    @RequestMapping("show21")
    public String show21() {
        return "vue21";
    }
    @RequestMapping("show22")
    public String show22() {
        return "vue22";
    }
    @RequestMapping("show23")
    public String show23() {
        return "vue23";
    }
    @RequestMapping("show24")
    public String show24() {
        return "vue24";
    }
    @RequestMapping("show25")
    public String show25() {
        return "vue25";
    }
}
