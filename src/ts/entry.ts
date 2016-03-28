/// <reference path="../../typings/require.d.ts" />
/// <reference path="../../typings/browser.d.ts" />
import Component from "vue-class-component";
import Vue = require("vue");
import VueRouter = require("vue-router");
Vue.use(VueRouter)
@Component({
  components: {
    "def-list": require("./component/def-list/def-list").DefList,
    "nav-link": require("./component/nav-link/nav-link").DefList
  }
})
export class App {
}


document.addEventListener("DOMContentLoaded", function(e) {
  let router = new VueRouter();
  router.start(App, "#app");
});
