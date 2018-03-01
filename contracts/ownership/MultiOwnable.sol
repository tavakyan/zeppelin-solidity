pragma solidity ^0.4.18;

import "./Ownable.sol";
import "./MultiSigWallet.sol";


/**
 * @title MultiOwnable
 * @dev The MultiOwnable contract uses a multisignature wallet for multiple user based authorization controls. 
 * It provides authorization controls for a single owner an multiple owners of a multi-sig wallet. 
 */
contract MultiOwnable is Ownable {

    /**
    * @dev Throws if caller is not an owner of the MultiSig wallet.
    */
    modifier onlyWallet() {
        require(owner == msg.sender);
        _;
    }

    /**
    * @dev Throws if called by any account other than the owner or if account is not an owner of the multisig wallet. 
    */
    modifier onlyOwner() {
        require(owner == msg.sender || MultiSigWallet(owner).isOwner(msg.sender));
        _;
    }
}
