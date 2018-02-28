
import assertRevert from '../helpers/assertRevert';

const MultiOwnable = artifacts.require('MultiOwnable');
// const MultiOwnable = artifacts.require('MockMultiSig');

contract('MultiOwnable', function (accounts) {
  let multiOwnable;
  const ownerAccounts = accounts.slice(0, 3)
  const [account1, account2, account3] = ownerAccounts

  beforeEach(async function () {
    multiOwnable = await MultiOwnable.new();
  });

  // it('should have an owner', async function () {
  //   let owner = await multiOwnable.owner();
  //   assert.isTrue(owner !== 0);
  // });

  // it('changes owner after transfer', async function () {
  //   let other = accounts[1];
  //   await multiOwnable.transferOwnership(other);
  //   let owner = await multiOwnable.owner();

  //   assert.isTrue(owner === other);
  // });

  // it('should prevent non-owners from transfering', async function () {
  //   const other = accounts[2];
  //   const owner = await multiOwnable.owner.call();
  //   assert.isTrue(owner !== other);
  //   await assertRevert(multiOwnable.transferOwnership(other, { from: other }));
  // });

  // it('should guard ownership against stuck state', async function () {
  //   let originalOwner = await multiOwnable.owner();
  //   await assertRevert(multiOwnable.transferOwnership(null, { from: originalOwner }));
  // });
});
