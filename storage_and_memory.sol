pragma solidity >=0.6.6 < 0.8.0;
contract Numbers {
    int[] public numbers;
    constructor() public {
        numbers.push(1);
        numbers.push(2);    
        changeArray(numbers);
    }
    //function changeArray(int[] memory myArray) private pure {// pass by value
    function changeArray(int[] storage myArray) private  { // pass by reference
        myArray[0] = 3;
    }
    function getNumbers() public view returns (int[] memory) {
        return numbers;
    }
        
}