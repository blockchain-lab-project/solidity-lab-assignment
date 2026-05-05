pragma solidity ^0.8.20;

contract Contract {

    function filterEven(uint[] calldata numbers)
        external
        pure
        returns (uint[] memory)
    {
        uint count = 0;

        // 1. Count even numbers
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                count++;
            }
        }

        // 2. Create memory array with exact size
        uint[] memory evens = new uint[](count);

        // 3. Fill the array
        uint index = 0;
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                evens[index] = numbers[i];
                index++;
            }
        }

        // 4. Return result
        return evens;
    }
}