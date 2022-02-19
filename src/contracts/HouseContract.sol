// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract HouseContract {
  
  //Stores ipfs hash,  a state variable called storedData of type uint (unsigned integer of 256 bits). 
  //You can think of it as a single slot in a database that you can query and alter by calling functions of the code that manages the database. 
  //HouseContract defines the functions set and get that can be used to modify or retrieve the value of the variable.
  string houseHash;

  //used to write ipfs hash to the blockchain smart contract, public means accessible outside of smart contract, use memory
  function set(string memory _houseHash) public {
    houseHash = _houseHash;
  }

  //reads ipfs hash from the blockchain smart contract, public visibility
  function get() public view returns (string memory) {
    return houseHash;
  }
}
