// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Loops {

    string public text = "Any function hasn't called.";

    function fromOneToTenFor() public  {
        for(uint i = 0; i < 11; i++){  
            
            if(i == 5) {
                text = "For loop";
                break; // if i equals to 5, loop breaks
            }

        }
    }

    function fromOneToTenWhile(uint _number) public { 
        while(_number > 10) { // While _number greater than 10
            _number++;

            if(_number == 20) {
                text = "While loop";
                break; // if _number equals to 20, loop breaks
            }
        } 
    }
    
}