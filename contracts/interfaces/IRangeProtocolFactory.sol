//SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

interface IRangeProtocolFactory {
    event VaultCreated(address indexed uniPool, address indexed vault);
    event VaultImplUpgraded(address indexed vault, address indexed impl);

    function createVault(
        address tokenA,
        address tokenB,
        address implementation,
        bytes memory configData
    ) external;

    function upgradeVaults(address[] calldata _vaults, address[] calldata _impls) external;

    function upgradeVault(address _vault, address _impl) external;
}
