// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Remix style import
//import { IERC20 } from "@openzeppelin/contracts@4.0.0/token/ERC20/IERC20.sol";

//Brownie style import
import { IERC20 } from "OpenZeppelin/openzeppelin-contracts@4.0.0/contracts/token/ERC20/IERC20.sol";

/// @dev Interface of the child ERC20 token, for use on sidechains and L2 networks.
interface IERC20Child is IERC20 {
  /**
   * @notice called by bridge gateway when tokens are deposited on root chain
   * Should handle deposits by minting the required amount for the recipient
   *
   * @param recipient an address for whom minting is being done
   * @param amount total amount to mint
   */
  function mint(
    address recipient,
    uint256 amount
  )
    external;

  /**
   * @notice called by bridge gateway when tokens are withdrawn back to root chain
   * @dev Should burn recipient's tokens.
   *
   * @param amount total amount to burn
   */
  function burn(
    uint256 amount
  )
    external;

  /**
   *
   * @param account an address for whom burning is being done
   * @param amount total amount to burn
   */
  function burnFrom(
    address account,
    uint256 amount
  )
    external;
}

