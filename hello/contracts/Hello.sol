pragma solidity >=0.5.0 < 0.6.0;

contract Hello {

    mapping (address => string) public userDetails;

    function queryName() view public returns (string memory) {

        return userDetails[msg.sender];
    }

    function storeName(string memory name) public {

        userDetails[msg.sender] = name;

    }

}

