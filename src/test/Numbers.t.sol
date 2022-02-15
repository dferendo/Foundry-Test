// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

import "ds-test/test.sol";

import "../Numbers.sol";

interface Vm {
    function prank(address) external;
}

contract ContractTest is DSTest {
    Vm vm = Vm(HEVM_ADDRESS);
    Numbers numbersContract;

    function setUp() public {
        numbersContract = new Numbers();
    }

    function testMint() public {
        assertTrue(numbersContract.balanceOf(address(1)) == 0);
        // Next msg.sender is address(1)
        vm.prank(address(1));

        numbersContract.mint(5);
        assertTrue(numbersContract.balanceOf(address(1)) == 5);
    }
}
