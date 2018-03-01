pragma solidity ^0.4.18;


import "./Pausable.sol";
import "../ownership/MultiOwnable.sol";


/**
 * @title MultiPausable
 * @dev Base contract which allows children to implement an emergency stop mechanism using multisig wallets.
 */
contract MultiSigPausable is Pausable, MultiOwnable {
  /**
   * @dev called by the owner to unpause, returns to normal state
   */
  function unpause() onlyWallet whenPaused public {
    paused = false;
    Unpause();
  }
}
