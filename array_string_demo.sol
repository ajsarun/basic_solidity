pragma solidity >=0.6.6 < 0.8.0;
//pragma experimental ABIEncoderV2;
contract ArrayStringDemo {
    string[3] public name = ["Prayuth", "Prawitr", "Apirath"];
    function getAllName() public view returns (string[3] memory) {
        return name;
    }   
}