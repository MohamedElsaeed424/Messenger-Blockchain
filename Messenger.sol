// SPDX-License-Identifier: MIT


pragma solidity 0.8.26;


contract Messenger{
    string public message = "Welcome to My Smart Contract";

    address owner;

    constructor(){
        owner = msg.sender ;
    }

    function getMessage()public view returns(string memory) {
        return message ;
    }

    function updateMessage(string memory _message)public {
        if(msg.sender == owner){
            message = _message ;
        }else{
            viewError();
        }
    }
    function viewError()private  pure returns(string memory){
        return "You are not the Owner To Update";
    }

}



