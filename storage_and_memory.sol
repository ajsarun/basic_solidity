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
    
    //int[] storage myArray = numbers; //use storage keyword make this variable points to the storage location of the storage 
    //array. In other words, myArray points to the location that is used to store numbers then changing the data from myArray makes the value of 
        //the numbers changes as well.
        //myArray[0] = 3;
        //int[] memory myArray = numbers; //but use memory the copy of numbers is copied to myArray, changing mayArray does not effect the numbers. 
        //myArray[0] = 3;
}