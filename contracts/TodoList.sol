pragma solidity ^0.5.0;

contract TodoList{
    uint public taskCount =0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }
    // uint -> ket, Task is the value
    //will be like our database
    mapping (uint => Task) public tasks;
    event TaskCreated(
        uint id,
        string content,
        bool completed
    );
    constructor () public {
        createTask("Wake up");
    }

    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = Task(taskCount,_content,false);
        //Triger event in solidity
        emit TaskCreated(taskCount,_content,false);
    }


}