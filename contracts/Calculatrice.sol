// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.0 <0.9.0;

contract Calculatrice {
    uint public resultat;
    event ResultatModifie(uint nouveauResultat);

    function ajouter(uint a, uint b) public {
        resultat = a + b;
        emit ResultatModifie(resultat);
    }

    function soustraire(uint a, uint b) public {
        resultat = a - b;
    }

    function multiplier(uint a, uint b) public {
        resultat = a * b;
    }

    function diviser(uint a, uint b) public {
        require(b != 0, "Division par zero impossible");
        resultat = a / b;
    }

    function effacer() public {
        resultat = 0;
    }

    function getResultat() public view returns (uint) {
        return resultat;
    }

}