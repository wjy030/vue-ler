# vue使用filter
使用：  
{{param | 过滤器1的名称 | 过滤器2的名称}}  当要传参时：1.0版本:{{param | 过滤器的名称 参数1 参数2}} 2.0版本:{{param|过滤器名称(参数1,参数2)}}  
例:  
{{msg | currency '$' 2}}  
## vue1.0中的内置函数
* capitalize - 首字母变大写
* uppercase  - 所有的英文字母变大小
* lowercase  - 所有的英文字母变小写
* currency   - 帮咱们变成货币形式输出
* debounce 做等待处理 默认是300毫秒 也可以自己去 处理时间 传参 用在v-on指令中
* limitBy 截取 用在 v-for中 第一个参数  截取几个 第二个参数  从第几个开始
* filterBy 过滤 -》 给出关键字 帮咱们 过滤掉 没有关键字的 用在 v-for   
例: i是字符串``v-for='i in arr | filtrBy "h"'``,i是obj如{name:'aaa'}``v-for='i in arr | filtrBy "h" in "name"'``
## vue1.0与2.0区别
* **2.0中取消了1.0所有的内置函数**
* **2.0中的过滤器只能用在{{}}和mousetache,v-bind中,不能在其他地方如v-on,v-for中使用**
* 传参时写法:1.0版本:{{param | 过滤器的名称 参数1 参数2}},2.0版本:{{param|过滤器名称(参数1,参数2)}} 
* 2.0取消了双向过滤器
## 自定义过滤器
### 单向过滤器
```
<script type="text/javascript">
    Vue.filter('extLog',function (value,para1,para2) { //全局过滤器注册必需在vue实例化之前
        console.log(para1+"|"+para2);
        return value+"$";
    })
    new Vue({
        el:'.container',
        data:{
            msg:''
        }
    })
</script>
```
### 双向过滤器 (2.0已取消)
```
Vue.filter('twoLog',{
        read: function (data) {
            console.log("read")
            return "read:" + data;
        },
        write: function (newValue,oldValue) {
            console.log("write"+" "+ newValue+" "+oldValue)
            return "write:" + newValue;
        }
    })
```
### 内部过滤器
```
new Vue({
        el:'.container',
        data:{
            msg:''
        },
        filters: {
            extLog: function (value,para1,para2) {
                console.log(para1+"|"+para2);
                return value+"$";
            }
        }
    })
```
使用方式和全局一样 ``{{msg  | extLog 1 2}}``
