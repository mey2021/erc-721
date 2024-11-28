// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Base64.sol";

contract MyToken is ERC721 {
    constructor() ERC721("Mey2021 NFT Collection2", "MEY2") {}

    uint256 public tokenId;
    uint256 public maxSupply = 1000;
    // how can we upload asset in someware an load url here
    function tokenURI(uint256) public pure override returns (string memory) {
        string memory json = Base64.encode(
            bytes(
                string(
                    abi.encodePacked(
                        '{"name": "third", "": "", "image": "https://i.ibb.co/DwXD77F/4.jpg"}'
                    )
                )
            )
        );
       // "https://i.ibb.co/pj7gBF3/7742218.jpg"
        return string(abi.encodePacked("data:application/json;base64,", json));
    }

    function mint() public {
        require(tokenId < maxSupply, "All tokens have been minted");
        _safeMint(msg.sender, tokenId);
        tokenId = tokenId + 1;
    }
    

}
