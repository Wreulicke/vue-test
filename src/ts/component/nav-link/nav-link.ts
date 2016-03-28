/// <reference path="../../../../typings/require.d.ts" />
/// <reference path="../../../../typings/browser.d.ts" />
import Component from "vue-class-component";

@Component({
  props: ["icon", "title", "href"],
  template: require('jade/component/nav-link/nav-link')(),
  components: {
    "material-icon": require("ts/component/material-icon/material-icon").Icon
  }
})
export class NavLink {
  icon: string;
  title: string;
  href: string;
  created() {
  }
}
