
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
## class操作
     <style type="text/css">
        .myDiv{
            width: 100px;
            height: 100px;
            background: red;}
        .myShadow{
            box-shadow: 0 0 15px black;
        }
    </style>
### 字符串  
     data:{
       myStyle:'myDiv'
     }
在data中定义变量，值为class名  
``<div :class="myStyle"></div>`` 像操作属性一样用class  
### 数组
        data:{
            myStyle:['myDiv','myShadow']
        }
### object
     data:{
            myStyle:{
                myDiv: true,
                myShadow: true
            }
        }
## style        
     data:{
            myStyle:{
                width: '200px',
                height: '200px',
                background: 'red',
                transition: '.5s'
            },
            myBlack:{
                background:'black'
            }
        }
 在data中定义style,为object方式
 ``<div :style="myStyle"></div>`` 在元素中使用  
 ``<div :style="[myStyle,myBlack]"></div>`` 使用多个style object  
 
        
        
