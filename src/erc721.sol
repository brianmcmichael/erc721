/// erc721.sol -- API for the ERC721 token standard

// See <https://github.com/ethereum/EIPs/issues/721>.

// This file likely does not meet the threshold of originality
// required for copyright to apply.  As a result, this is free and
// unencumbered software belonging to the public domain.

pragma solidity >0.4.20;

contract ERC721Events {
    event Approval(address indexed src, address indexed guy, uint256 nft);
    event Transfer(address indexed src, address indexed dst, uint256 nft);
}

contract ERC721 is ERC721Events {
    function name() public view returns (string);
    function symbol() public view returns (string);
    function totalSupply() public view returns (uint256);
    function balanceOf(address guy) public view returns (uint256);
    function ownerOf(uint256 nft) public view returns (address);
    function approve(address guy, uint256 nft) public view returns (address);
    function takeOwnership(uint256 nft) public;
    function transfer(address dst, uint256 nft) public;
    function tokenOfOwnerByIndex(address guy, uint256 idx) public returns (uint256);
    function tokenMetadata(uint256 nft) public returns (string);
}