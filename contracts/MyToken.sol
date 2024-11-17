// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Base64.sol";

contract MyToken is ERC721 {
    constructor() ERC721("MyToken", "MTK") {}

    uint256 public tokenId;
    uint256 public maxSupply = 1000;

    function tokenURI(uint256) public pure override returns (string memory) {
        string memory json = Base64.encode(
            bytes(
                string(
                    abi.encodePacked(
                        '{"name": "My NFT", "description": "Whatever", "image": "https://ethereumhacker.com/img/nft.png"}'
                    )
                )
            )
        );
        return string(abi.encodePacked("data:application/json;base64,", json));
    }

    function mint() public {
        require(tokenId < maxSupply, "All tokens have been minted");
        _safeMint(msg.sender, tokenId);
        tokenId = tokenId + 1;
    }
    
    function getData() public{
     
    }
}
