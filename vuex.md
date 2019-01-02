# vuex状态事件管理器
将组件中的状态,事件统一管理
```
import vue from 'vue'
import vuex from 'vuex'
vue.use(vuex);
const state = {
  count: 0
};
const mutations ={
  add() {
    state.count++;
  }
};
const actions = {
  testAdd({commit}) {
    commit('add');
  }
};
const getters = {
  count(state) {
    return state.count;
  }
};
export default new vuex.Store({
  state,mutations,actions,getters
})
```
state: 状态  
mutations: 内部公共方法  
actions: 事件方法,可以通过commit('内部公共方法名')调用内部方法  
getters: 状态的getter方法,组件通常通过这里的方法获取属性值  
```
export default new vuex.Store({
  state,mutations,actions,getters
})
```
导出该管理器
## 在vue中注册vuex
```
import Vue from 'vue'
import vuex from 'vuex'
import App from './App.vue'
import store from './store'  //管理器写在stroe.js中
Vue.use(vuex); //使用vuex可以使用
new Vue({
  store,   // 启用定义的管理器
  el: '#app',
  render: h => h(App)
})
```
## 在模块中使用管理器中定义的状态和方法
```
import {mapGetters,mapActions} from 'vuex'
    export default {
        name: "test",
        computed: mapGetters(['count']),
        methods: mapActions(['testAdd'])
    }
```
mapGetters 管理器中的getter方法
mapActions 管理器中的actions方法
mapGetters(['count']) 只引入指定的状态和方法来使用



