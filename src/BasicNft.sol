// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {ERC721} from "@openzepplin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {
  uint256 private s_tokenCounter;

  constructor() ERC721("Punks Collective", "PUNKX") {
    s_tokenCounter = 0;
  }

  function tokenURI(uint256 tokenId) public view override returns(string memory) {
    return "";
  }

  function mintNft() public {}
}