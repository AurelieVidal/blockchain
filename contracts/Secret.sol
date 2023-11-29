// contracts/Secret.sol
// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.0 <0.9.0;

contract Secret {
    mapping(address => uint) public userNumbers;

    function enregistrer(uint _nombre) public payable {
        require(msg.value >= 100 gwei, "Insufficient payment for enregistrer");
        userNumbers[msg.sender] = _nombre;
        payable(msg.sender).transfer(100 gwei);
    }

    function recuperer() public payable returns (uint) {
        require(msg.value >= 100 gwei, "Insufficient payment for recuperer");
        payable(msg.sender).transfer(100 gwei);
        return userNumbers[msg.sender];
    }
}
