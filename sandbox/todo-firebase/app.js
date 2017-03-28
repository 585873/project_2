angular
    .module("todoApp", ["firebase"])
    .controller("TodoController", ["$firebaseArray", TodoControllerFunction])

  function TodoControllerFunction($firebaseArray){
    let ref = firebase.database().ref().child("todos");
    this.todos = $firebaseArray(ref);


    this.create = function(){
    // After we create a new todo, clear the "New Todo" input field.
    this.todos.$add(this.newTodo).then( () => this.newTodo = {} )
   }
   this.update = function (todo) {
    this.todos.$save(todo)
  }
  this.delete = function(todo){
    this.todos.$remove(todo);
  }
}
