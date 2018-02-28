pragma solidity ^0.4.18;

/*
 * A minimum multisig wallet interface. Compatible with MultiSigWallet by Gnosis.
 */
contract MultiSigWallet {
    function isOwner(address owner) public returns (bool);
}
