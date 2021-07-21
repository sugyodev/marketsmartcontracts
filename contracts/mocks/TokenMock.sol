//SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.5;

import "@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";

/**
 * @title Implementation of the Local Currency Token
 *
 * @dev A simple ERC20 instance
 *
 * @author Sebastian Gerske <https://github.com/h34d>
 */
contract TokenMock is ERC20PresetMinterPauser {
    constructor(string memory name, string memory symbol) ERC20PresetMinterPauser(name, symbol) {}
}