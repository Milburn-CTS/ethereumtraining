pragma solidity ^0.4.24;

contract Arithmetic{

    uint256 public storedValue;
    constructor() public{
        storedValue = 100;

    }

    function add(uint256 number) public {
        storedValue = storedValue + number;

    }

    function subtract(uint256 number) public{
        storedValue = storedValue - number;
    }

    function divide(uint256 number) public {
        storedValue = storedValue / number;
    }

    function multiply(uint256 number) public{
        storedValue = storedValue * number;
    }

    function AddNumbers(uint256 no1, uint256 no2) public{
        storedValue = no1 + no2;
    }

}