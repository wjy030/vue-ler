/**
 * Copyright (C), 2015-2018, 上海象翌微链有限公司
 * FileName: TestInitializer
 * Author:   wjy
 * Date:     2018/12/15 12:34
 * Description: servlet 3.0
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.wjy.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * 〈一句话功能简述〉<br> 
 * 〈servlet 3.0〉
 *
 * @author wjy
 * @create 2018/12/15
 * @since 1.0.0
 */

public class TestInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[]{JavaConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{WebConfig.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }
}
