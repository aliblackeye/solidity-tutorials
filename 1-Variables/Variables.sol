//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Variables {
    // Fixed-Size Types - type-name = value; or type-name;  
    bool isTrue = true; // Bool variables get false or true.

    int number; // default int equals to int256. int256 => -2^256 to 2^256
    int8 number2; // int8 => -2^8 to 2^8
    uint number3; // uint 0 to 2^256

    address myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // 20 byte
    bytes32 name1 = "It allows to 32 length string";

    // Dynamic-Size Types
    string name2 = "It is a dynamic-size variable.";
    bytes name3 = "It is a dynamic-size variable.";

    uint[] array = [1,2,3,4,5]; // An array contains element or elements of type uint.
    mapping(uint => string) list; // Key(uint) -> Value(string) - Example: Key = 34, Value = "Ali" ("The number "34" marks the letter "Ali")

    // User Defined Value Types
    struct Human {
        uint ID;
        string name;
        uint age; 
        address addr;
    }

    // Human person1;
    // person1.ID = 123456789;
    // person1.name = "Ali";
    // person1.age = 20;
    // person1.addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    enum trafficLight {
        RED,
        YELLOW,
        GREEN
    }

    // trafficLight.GREEN;


    // STATE VARIABLES
    string public coder = "Ali"; 

}