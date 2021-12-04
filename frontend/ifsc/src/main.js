import Vue from 'vue'
import App from './App.vue'
import router from './router'
import Vuex from 'vuex'
import vuetify from './plugins/vuetify';

Vue.config.productionTip = false
Vue.use(Vuex)

const store = new Vuex.Store({
  state: {
	search:'',
    bank:'',
    state:'',
  },
  getters: {
    getSearchString: (state) => {
      return state.search
    }
  },
  mutations: {
    updateBankID (state, bankid) {
      state.bank = bankid
    },
    storeSearchString(state, qstring){
		state.search = qstring
    }
  }
})

new Vue({
  router,
  vuetify,
  store,
  render: h => h(App)
}).$mount('#app')
