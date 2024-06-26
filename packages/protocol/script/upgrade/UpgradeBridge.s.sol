// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "forge-std/src/Script.sol";
import "forge-std/src/console2.sol";
import "../../contracts/bridge/Bridge.sol";
import "./UpgradeScript.s.sol";

contract UpgradeBridge is UpgradeScript {
    function run() external setUp {
        upgrade("Bridge", address(new Bridge()));
    }
}
