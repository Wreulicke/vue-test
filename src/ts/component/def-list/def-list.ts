/// <reference path="../../../../typings/require.d.ts" />
/// <reference path="../../../../typings/browser.d.ts" />
import Component from "vue-class-component";

@Component({
  template: require("jade/component/def-list/def-list")()
})
export class DefList {
  newTask: string;
  todos: Array<any>;
  data() {
    return {
      todos: [
        { text: "hoge" },
        { text: "test" },
        { text: "test" },
        { text: "test" }
      ],
      newTask: ""
    };
  }
  add() {
    this.todos.push({
      text: this.newTask
    });
    this.newTask = "";
  }
}
