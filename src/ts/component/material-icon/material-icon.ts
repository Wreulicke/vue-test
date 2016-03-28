/// <reference path="../../../../typings/require.d.ts" />
/// <reference path="../../../../typings/browser.d.ts" />
import Component from "vue-class-component";

@Component({
  props: ["icon"],
  template: require("jade/component/material-icon/material-icon")()
})
export class Icon {
  icon: string;
  created() {
  }
}
