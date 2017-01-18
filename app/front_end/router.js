import Vue from 'vue'
import VueRouter from 'vue-router'
import App from './components/app'

Vue.use(VueRouter)

const routes = [
  { path: '/',
    name: 'app',
    component: App
  }
]

export default new VueRouter({ routes })
