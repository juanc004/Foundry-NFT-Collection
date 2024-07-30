// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {DeployMoodNft} from "../script/DeployMoodNft.s.sol";

contract DeployNftTest is Test {
    DeployMoodNft deployMoodNft;
    function setUp() public {
        deployMoodNft = new DeployMoodNft();
    }

    function testConvertSvgToUri() public view {
        string
            memory expectedUri = "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1MDAiIGhlaWdodD0iNTAwIj4KPHRleHQgeD0iMCIgeT0iMTUiIGZpbGw9ImJsYWNrIj5IaSEgWW91ciBicm93c2VyIGRlY29kZWQgdGhpcyE8L3RleHQ+Cjwvc3ZnPg==";
        string
            memory svg = '<svg xmlns="http://www.w3.org/2000/svg" width="500" height="500"><text x="0" y="15" fill="black">Hi! Your browser decoded this!</text></svg>';
        string memory actualUri = deployMoodNft.svgToImageUri(svg);
        assert(
            keccak256(abi.encodePacked(actualUri)) ==
                keccak256(abi.encodePacked(expectedUri))
        );
    }
}
