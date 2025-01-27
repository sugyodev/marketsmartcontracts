// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.4;

import "./DonationMinerStorageV1.sol";
import "./IDonationMinerV2.sol";

/**
 * @title Storage for DonationMiner
 * @notice For future upgrades, do not change DonationMinerStorageV2. Create a new
 * contract which implements DonationMinerStorageV2 and following the naming convention
 * DonationMinerStorageVX.
 */
abstract contract DonationMinerStorageV2 is IDonationMinerV2 {
    IERC20 public override cUSD;
    IERC20 public override PACT;
    ITreasury public override treasury;
    uint256 public override rewardPeriodSize;
    uint256 public override donationCount;
    uint256 public override rewardPeriodCount;
    uint256 public override decayNumerator;
    uint256 public override decayDenominator;

    mapping(uint256 => Donation) public override donations;
    mapping(uint256 => RewardPeriod) public override rewardPeriods;
    mapping(address => Donor) public override donors;

    uint256 public override claimDelay;
}
