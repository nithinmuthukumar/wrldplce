// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract PlaceChain {
    struct Place {
        string name;
        uint[] pixels;
        uint width;
        uint height;
    }
    mapping (string => Place) public places;

    function addPlace(string memory name, uint width, uint height) public{
        places[name] = Place(name, new uint[](width*height), width, height);
        
    }
}

