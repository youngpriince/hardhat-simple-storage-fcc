// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

// Lesson 2: Setting up your first contract
contract SimpleStorage {
    // boolean, uint, int, address, bytes
    // bool hasFavoriteNumber = false;
    // uint256 favoriteNumber = 5;
    // string favoriteNumberInText = "Five";
    // int256 favoriteInt = -5;
    // address myAdress = 0xcaDc5F3C43d4cb3051F832c22BD13AAddA6147B2;
    // bytes32 favoriteBytes ="cat";
    //This gets initialized to zero!
    uint256 favoriteNumber;
    // People public person = People({favoriteNumber: 2, name: "Folarin"});

    mapping(string => uint256) public nameToFavoriteNumber;
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    // view, pure functions when called alone dont spend gas
    // you cant update the blockchain with a view or pure function
    // they also disallow reading from the blockchain i.e you cant update d favorite number
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // 0xd9145CCE52D386f254917e481eB44e9943F39138
}
