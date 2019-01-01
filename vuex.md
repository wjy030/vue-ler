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
