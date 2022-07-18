
//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


contract Whitelist {

uint8 public maxWhiteListaddresses;

mapping(address => bool) public WhiteListedAddress;

uint8 public numAddressesWhiteList;



constructor(uint8 _maxWhiteListaddresses) {

maxWhiteListaddresses = _maxWhiteListaddresses;

}


function AddAddressesToWhiteList () public {

    require(!WhiteListedAddress[msg.sender], "Sender has already been whitelisted");

      require(numAddressesWhiteList < maxWhiteListaddresses, "More addresses cant be added, limit reached");

WhiteListedAddress[msg.sender] = true;
numAddressesWhiteList += 1;


}





}