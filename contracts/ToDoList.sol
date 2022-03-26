// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ToDoList{
    
    uint public count=0;

    struct Item{
        uint id;
        string content;
        bool status;   
    }

    mapping(uint => Item) items;

    event addedTask(
        uint id,
        string content,
        bool status
    );

    event completedTask(
        uint id,
        bool status
    );

    function addTask(string memory _content)  public{
        
        // items[count]  = Item(count, _content, false);
        Item storage i = items[count];
        i.id=1;
        i.content=_content;
        i.status=false;
        count++;
        emit addedTask(count, _content, false);
    }

    function completeTask(uint _id) public{
        Item memory _items = items[_id];
        _items.status = true;
        items[_id] = _items;
        emit completedTask(_id, true);

    }


}