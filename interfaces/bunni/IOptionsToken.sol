// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

interface IOptionsToken {
    error OptionsToken__NotTokenAdmin();
    error OptionsToken__PastDeadline();
    error OptionsToken__SlippageTooHigh();
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 amount
    );
    event Exercise(
        address indexed sender,
        address indexed recipient,
        uint256 amount,
        uint256 paymentAmount
    );
    event OwnershipTransferred(address indexed user, address indexed newOwner);
    event SetOracle(address indexed newOracle);
    event SetTreasury(address indexed newTreasury);
    event Transfer(address indexed from, address indexed to, uint256 amount);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function allowance(address, address) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function balanceOf(address) external view returns (uint256);

    function decimals() external view returns (uint8);

    function exercise(
        uint256 amount,
        uint256 maxPaymentAmount,
        address recipient,
        uint256 deadline
    ) external returns (uint256 paymentAmount);

    function exercise(
        uint256 amount,
        uint256 maxPaymentAmount,
        address recipient
    ) external returns (uint256 paymentAmount);

    function mint(address to, uint256 amount) external;

    function name() external view returns (string memory);

    function nonces(address) external view returns (uint256);

    function oracle() external view returns (address);

    function owner() external view returns (address);

    function paymentToken() external view returns (address);

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    function setOracle(address oracle_) external;

    function setTreasury(address treasury_) external;

    function symbol() external view returns (string memory);

    function tokenAdmin() external view returns (address);

    function totalSupply() external view returns (uint256);

    function transfer(address to, uint256 amount) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);

    function transferOwnership(address newOwner) external;

    function treasury() external view returns (address);

    function underlyingToken() external view returns (address);
}
