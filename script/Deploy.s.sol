// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Script} from "forge-std/Script.sol";

import {LPTracker} from "src/LPTracker.sol";

/// @notice A very simple deployment script
contract Deploy is Script {
    /// @notice The main script entrypoint
    /// @return greeter The deployed contract
    function run() external returns (LPTracker lptracker) {
        vm.startBroadcast();
        lptracker = new LPTracker("GM");
        vm.stopBroadcast();
    }
}
