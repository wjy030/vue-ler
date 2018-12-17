/**
 * Copyright (C), 2015-2018, 上海象翌微链有限公司
 * FileName: JsonReturn
 * Author:   suneee
 * Date:     2018/12/17 13:44
 * Description: 返回信息
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.wjy.model;

/**
 * 〈一句话功能简述〉<br> 
 * 〈返回信息〉
 *
 * @author suneee
 * @create 2018/12/17
 * @since 1.0.0
 */
public class JsonReturn {

    public int returnCode;
    public String returnMessage;
    public Object data;

    public int getReturnCode() {
        return returnCode;
    }

    public void setReturnCode(int returnCode) {
        this.returnCode = returnCode;
    }

    public String getReturnMessage() {
        return returnMessage;
    }

    public void setReturnMessage(String returnMessage) {
        this.returnMessage = returnMessage;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }


}
