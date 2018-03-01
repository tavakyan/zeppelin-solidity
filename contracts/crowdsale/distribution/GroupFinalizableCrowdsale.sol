pragma solidity ^0.4.18;

import "../../math/SafeMath.sol";
import "../../ownership/MultiOwnable.sol";
import "./FinalizableCrowdsale.sol";


/**
 * @title GroupFinalizableCrowdsale
 * @dev Extension of FinalizableCrowdsale where either a single or multiple
 * owners can extra work after finishing depending on the wallet used. 
 */
contract GroupFinalizableCrowdsale is FinalizableCrowdsale, MultiOwnable {
  using SafeMath for uint256;

  function finalize() onlyWallet public {
    require(!isFinalized);
    require(hasClosed());

    finalization();
    Finalized();

    isFinalized = true;
  }
}
