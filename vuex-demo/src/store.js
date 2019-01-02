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
