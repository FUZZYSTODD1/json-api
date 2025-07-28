/**
   *       .
   *      / \
   *     |.'.|
   *     |'.'|
   *   ,'|   |'.
   *  |,-'-|-'-.|
   *   __|_| |         _        _      _____           _
   *  | ___ \|        | |      | |    | ___ \         | |
   *  | |_/ /|__   ___| | _____| |_   | |_/ /__   ___ | |
   *  |    // _ \ / __| |/ / _ \ __|  |  __/ _ \ / _ \| |
   *  | |\ \ (_) | (__|   <  __/ |_   | | | (_) | (_) | |
   *  \_| \_\___/ \___|_|\_\___|\__|  \_|  \___/ \___/|_|
   * +---------------------------------------------------+
   * |    DECENTRALISED STAKING PROTOCOL FOR ETHEREUM    |
   * +---------------------------------------------------+
   *
   *  Rocket Pool is a first-of-its-kind Ethereum staking pool protocol, designed to
   *  be community-owned, decentralised, permissionless, & trustless.
   *
   *  For more information about Rocket Pool, visit https://rocketpool.net
   *
   *  Authored by the Rocket Pool Core Team
   *  Contributors: https://github.com/rocket-pool/rocketpool/graphs/contributors
   *  A special thanks to the Rocket Pool community for all their contributions.
   *
   */

pragma solidity >0.5.0 <0.9.0;

// SPDX-License-Identifier: GPL-3.0-only

import "../../types/MinipoolDeposit.sol";

interface RocketNodeDepositInterface {
    function getNodeDepositCredit(address _nodeAddress) external view returns (uint256);
    function getNodeEthBalance(address _nodeAddress) external view returns (uint256);
    function getNodeCreditAndBalance(address _nodeAddress) external view returns (uint256);
    function getNodeUsableCreditAndBalance(address _nodeAddress) external view returns (uint256);
    function getNodeUsableCredit(address _nodeAddress) external view returns (uint256);
    function increaseDepositCreditBalance(address _nodeOperator, uint256 _amount) external;
    function depositEthFor(address _nodeAddress) external payable;
    function withdrawEth(address _nodeAddress, uint256 _amount) external;
    function deposit(uint256 _depositAmount, uint256 _minimumNodeFee, bytes calldata _validatorPubkey, bytes calldata _validatorSignature, bytes32 _depositDataRoot, uint256 _salt, address _expectedMinipoolAddress) external payable;
    function depositWithCredit(uint256 _depositAmount, uint256 _minimumNodeFee, bytes calldata _validatorPubkey, bytes calldata _validatorSignature, bytes32 _depositDataRoot, uint256 _salt, address _expectedMinipoolAddress) external payable;
    function isValidDepositAmount(uint256 _amount) external pure returns (bool);
    function getDepositAmounts() external pure returns (uint256[] memory);
    function createVacantMinipool(uint256 _bondAmount, uint256 _minimumNodeFee, bytes calldata _validatorPubkey, uint256 _salt, address _expectedMinipoolAddress, uint256 _currentBalance) external;
    function increaseEthMatched(address _nodeAddress, uint256 _amount) external;
}
