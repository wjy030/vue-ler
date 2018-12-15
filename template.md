# vue的模板，属性 style 及 class
## 模板
     <span v-once v-html>{{msg}}</span> //2.0版本 <span v-html="msg"></span>
### 模板只渲染一次（一般是在加载时渲染）
* 1.0中 用*号：{{*msg}}
* 2.0中 在任一上级元素上加上v-once
### 让模板可以解释html（{{}}通常只能解释字符串）
* 1.0中 用三重{{{}}}
* 2.0中 在所属元素上用v-html=‘msg’ 替代 {{msg}}
## 属性
     <img :src="pic">
在属性中绑定data中变量  
* 用   v-bind:属性名=“变量名”
* 简化版  :属性名="变量名"
## style / css
