// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    uint256 private registerCallCount = 0;
    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        registerCallCount++;
        return (registerCallCount % 2 == 0) ? 123 : 1111;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        IClassroomV2 class = IClassroomV2(msg.sender);
        return class.isEnrolled() ? 123 : 1111;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        return gasleft() <= 6666 ? 123 : gasleft();
    }
}
