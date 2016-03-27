/// <reference path="../../typings/require.d.ts" />
/// <reference path="../../typings/browser.d.ts" />
import Component from "vue-class-component";

@Component({
})
export class Test {
  newTask: string;
  el() {
    return "#app";
  }
  data() {
    return {
      todos: [
        { text: "test" },
        { text: "test" },
        { text: "test" },
        { text: "test" }
      ]
    };
  }
  add() {
    this.todos.push({
      text: this.newTask
    });
    this.newTask = '';
  }
}

document.addEventListener('DOMContentLoaded', function(e) {
  new Test();
});
