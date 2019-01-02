import Vue from 'vue'
import vuex from 'vuex'
import App from './App.vue'
import store from './store'
Vue.use(vuex);
new Vue({
  store,
  el: '#app',
  render: h => h(App)
})
