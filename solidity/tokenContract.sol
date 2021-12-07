// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Remix style import
//import { ERC20 } from "@openzeppelin/contracts@4.0.0/token/ERC20/ERC20.sol";

//Brownie style import
import { ERC20 } from "OpenZeppelin/openzeppelin-contracts@4.0.0/contracts/token/ERC20/ERC20.sol";


contract ImperialCredits is ERC20 {
    constructor(uint256 initialSupply) ERC20("ImperialsCredits", "ICR") {
        _mint(msg.sender, initialSupply);
    }
}