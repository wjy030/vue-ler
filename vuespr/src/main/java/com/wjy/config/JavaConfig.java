/**
 * Copyright (C), 2015-2018, 上海象翌微链有限公司
 * FileName: JavaConfig
 * Author:   wjy
 * Date:     2018/12/15 12:37
 * Description: 配置
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.wjy.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * 〈一句话功能简述〉<br> 
 * 〈配置〉
 *
 * @author wjy
 * @create 2018/12/15
 * @since 1.0.0
 */
@Configuration
@ComponentScan(basePackages = "com.wjy",excludeFilters = {@ComponentScan.Filter(type = FilterType.ANNOTATION,value = EnableWebMvc.class)})
public class JavaConfig {

}
