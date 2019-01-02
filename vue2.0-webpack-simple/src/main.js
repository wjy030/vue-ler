import Vue from 'vue'
import Router from 'vue-router'
import App from './storm.vue'
import skill from './skill.vue'
import swcr from './swcr.vue'

Vue.use(Router);
const rout = new Router({
  routes: [
    {path: '/mld', component: skill},
    {
      path: '/aess', component: skill, children: [{
        path: 'swcr',
        component: swcr
      }]
    }
  ]
})

new Vue({
  router:rout,
  el: '#app',
  render: h => h(App)
})
