pragma solidity ^0.4.18;

import "./MultiOwnable.sol";


/**
 * @title Pausable
 * @dev Pausable with upause callable only by wallet 
 */
contract Pausable is MultiOwnable {
    bool public paused = false;

    event Pause();
    event Unpause();

    /**
    * @dev Modifier to make a function callable only when the contract is not paused.
    */
    modifier whenNotPaused() {
        require(!paused);
        _;
    }

    /**
    * @dev Modifier to make a function callable only when the contract is paused.
    */
    modifier whenPaused() {
        require(paused);
        _;
    }

    /**
    * @dev called by any MSW owner to pause, triggers stopped state
    */
    function pause() 
        onlyOwner
        whenNotPaused 
        public 
    {
        paused = true;
        Pause();
    }

    /**
    * @dev called by the MSW (all owners) to unpause, returns to normal state
    */
    function unpause() 
        onlyWallet
        whenPaused
        public
    {
        paused = false;
        Unpause();
    }
}
