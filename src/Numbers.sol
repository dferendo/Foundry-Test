// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Numbers is ERC721, ReentrancyGuard {
    using Counters for Counters.Counter;

    Counters.Counter private tokenCounter;

    constructor() ERC721("Numbers", "NUMS") {}

    function mint(uint256 numberOfTokens)
        external
        payable
        nonReentrant
    {
        for (uint256 i = 0; i < numberOfTokens; i++) {
            _safeMint(msg.sender, nextTokenId());
        }
    }

    function nextTokenId() private returns (uint256) {
        tokenCounter.increment();
        return tokenCounter.current();
    }
}
