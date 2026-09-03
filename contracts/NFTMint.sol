// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFTMint is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    uint256 public mintPrice = 0.01 ether;
    uint256 public maxSupply = 100;

    event NFTMinted(address indexed owner, uint256 indexed tokenId, string tokenURI);

    constructor() ERC721("SkillNFT", "SNFT") {}

    function mintNFT(string memory tokenURI) public payable returns (uint256) {
        require(msg.value >= mintPrice, "Insufficient ETH sent");
        require(_tokenIds.current() < maxSupply, "Max supply reached");

        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();

        _mint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, tokenURI);

        emit NFTMinted(msg.sender, newTokenId, tokenURI);
        return newTokenId;
    }

    function freeMint(string memory tokenURI) public returns (uint256) {
        require(_tokenIds.current() < maxSupply, "Max supply reached");

        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();

        _mint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, tokenURI);

        emit NFTMinted(msg.sender, newTokenId, tokenURI);
        return newTokenId;
    }

    function totalMinted() public view returns (uint256) {
        return _tokenIds.current();
    }

    function withdraw() public onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }
}
