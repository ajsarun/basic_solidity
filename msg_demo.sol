pragma solidity >=0.6.6 < 0.8.0;
contract MsgDemo {
    uint public value; 
    function getGas() public view returns (uint) {
        return gasleft();
    }
    function getSender() public view returns(address) {
        return msg.sender;
    }
    function setValue() public payable  {
        value = msg.value;
        
    } 
    function getData() public pure returns (bytes memory) {
        return msg.data;
    }
    
}