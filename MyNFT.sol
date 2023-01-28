// SPDX-License-Identifier: MIT LICENSE
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    using Strings for uint256;

    // Optional mapping for token URIs
    mapping(uint256 => string) private _tokenURIs;

    constructor() ERC721("Boris NFT","BFT") {}

    function safeMint(address to, uint256 tokenId, string memory uri) public {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
        
    }

    function _setTokenURI(uint256 tokenId, string memory _tokenURI) internal virtual {
        require(_exists(tokenId), "URI set of nonexistent token");
        _tokenURIs[tokenId] = _tokenURI;
    }

}