// SPDX-License-Identifier: GPL-3.0+
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol v0.6.6. SEE SOURCE BELOW. !!
pragma solidity >=0.7.0 <0.9.0;

interface ISavingsContractImBtc {
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
    event AutomaticInterestCollectionSwitched(bool automationEnabled);
    event ConnectorUpdated(address connector);
    event CreditsRedeemed(
        address indexed redeemer,
        uint256 creditsRedeemed,
        uint256 savingsCredited
    );
    event Deposit(
        address indexed caller,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );
    event EmergencyUpdate();
    event ExchangeRateUpdated(
        uint256 newExchangeRate,
        uint256 interestCollected
    );
    event FractionUpdated(uint256 fraction);
    event Poked(
        uint256 oldBalance,
        uint256 newBalance,
        uint256 interestDetected
    );
    event PokedRaw();
    event PokerUpdated(address poker);
    event Referral(
        address indexed referrer,
        address beneficiary,
        uint256 amount
    );
    event SavingsDeposited(
        address indexed saver,
        uint256 savingsDeposited,
        uint256 creditsIssued
    );
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Withdraw(
        address indexed caller,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function asset() external view returns (address assetTokenAddress);

    function automateInterestCollectionFlag(bool _enabled) external;

    function balanceOf(address account) external view returns (uint256);

    function balanceOfUnderlying(address _user)
        external
        view
        returns (uint256 balance);

    function connector() external view returns (address);

    function convertToAssets(uint256 shares)
        external
        view
        returns (uint256 assets);

    function convertToShares(uint256 assets)
        external
        view
        returns (uint256 shares);

    function creditBalances(address _user) external view returns (uint256);

    function creditsToUnderlying(uint256 _credits)
        external
        view
        returns (uint256 amount);

    function decimals() external view returns (uint8);

    function decreaseAllowance(address spender, uint256 subtractedValue)
        external
        returns (bool);

    function deposit(
        uint256 assets,
        address receiver,
        address referrer
    ) external returns (uint256 shares);

    function deposit(uint256 assets, address receiver)
        external
        returns (uint256 shares);

    function depositInterest(uint256 _amount) external;

    function depositSavings(
        uint256 _underlying,
        address _beneficiary,
        address _referrer
    ) external returns (uint256 creditsIssued);

    function depositSavings(uint256 _underlying, address _beneficiary)
        external
        returns (uint256 creditsIssued);

    function depositSavings(uint256 _underlying)
        external
        returns (uint256 creditsIssued);

    function emergencyWithdraw(uint256 _withdrawAmount) external;

    function exchangeRate() external view returns (uint256);

    function fraction() external view returns (uint256);

    function increaseAllowance(address spender, uint256 addedValue)
        external
        returns (bool);

    function initialize(
        address _poker,
        string memory _nameArg,
        string memory _symbolArg
    ) external;

    function lastBalance() external view returns (uint256);

    function lastPoke() external view returns (uint256);

    function maxDeposit(address) external pure returns (uint256 maxAssets);

    function maxMint(address) external pure returns (uint256 maxShares);

    function maxRedeem(address owner) external view returns (uint256 maxShares);

    function maxWithdraw(address owner)
        external
        view
        returns (uint256 maxAssets);

    function mint(uint256 shares, address receiver)
        external
        returns (uint256 assets);

    function mint(
        uint256 shares,
        address receiver,
        address referrer
    ) external returns (uint256 assets);

    function name() external view returns (string memory);

    function nexus() external view returns (address);

    function poke() external;

    function poker() external view returns (address);

    function preDeposit(uint256 _underlying, address _beneficiary)
        external
        returns (uint256 creditsIssued);

    function previewDeposit(uint256 assets)
        external
        view
        returns (uint256 shares);

    function previewMint(uint256 shares) external view returns (uint256 assets);

    function previewRedeem(uint256 shares)
        external
        view
        returns (uint256 assets);

    function previewWithdraw(uint256 assets)
        external
        view
        returns (uint256 shares);

    function redeem(
        uint256 shares,
        address receiver,
        address owner
    ) external returns (uint256 assets);

    function redeem(uint256 _credits) external returns (uint256 massetReturned);

    function redeemAndUnwrap(
        uint256 _amount,
        bool _isCreditAmt,
        uint256 _minAmountOut,
        address _output,
        address _beneficiary,
        address _router,
        bool _isBassetOut
    )
        external
        returns (
            uint256 creditsBurned,
            uint256 massetReturned,
            uint256 outputQuantity
        );

    function redeemCredits(uint256 _credits)
        external
        returns (uint256 massetReturned);

    function redeemUnderlying(uint256 _underlying)
        external
        returns (uint256 creditsBurned);

    function setConnector(address _newConnector) external;

    function setFraction(uint256 _fraction) external;

    function setPoker(address _newPoker) external;

    function symbol() external view returns (string memory);

    function totalAssets() external view returns (uint256 totalManagedAssets);

    function totalSupply() external view returns (uint256);

    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    function underlying() external view returns (address);

    function underlyingToCredits(uint256 _underlying)
        external
        view
        returns (uint256 credits);

    function unwrapper() external view returns (address);

    function withdraw(
        uint256 assets,
        address receiver,
        address owner
    ) external returns (uint256 shares);
}