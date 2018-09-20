pragma solidity ^0.4.24;

contract TodoList{

    struct Todo {
        uint256 id;
        bytes32 content;
        address owner;
        bool isCompleted;
        uint256 timestamp;
    }
    
    uint256 public constant maxAmountOfTodos = 100;

    //Owner => todos
    mapping(address => Todo[maxAmountOfTodos]) public todos;

    //Owner => last todo
    mapping(address => uint256) public lastIds;


    //Add a todo to the list function
    function addTodo(bytes32 _content) public{
        Todo memory myNote = Todo(lastIds[msg.sender], _content, msg.sender, false, now);
        todos[msg.sender][lastIds[msg.sender]] = myNote;
        if(lastIds[msg.sender] >= maxAmountOfTodos){
            lastIds[msg.sender] = 0;
        } else{
            lastIds[msg.sender]++;
        }
    }

    //Marj a todo as completed
    function markTodoAsCompleted(uint256 _todoId)public{
        require(_todoId < maxAmountOfTodos); 
        require(!todos[msg.sender][_todoId].isCompleted); 
        todos[msg.sender][_todoId].isCompleted = true;
    }
}