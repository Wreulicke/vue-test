/// <reference path="../../../../typings/require.d.ts" />
/// <reference path="../../../../typings/browser.d.ts" />
import Component from "vue-class-component";

@Component({
  template: require("jade/component/def-list/def-list")()
})
export class NavLink {
  icon: string;
  title: string;
  href: string;
}
