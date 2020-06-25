/// erc721.sol -- API for the ERC721 token standard

// See <https://github.com/ethereum/EIPs/issues/721>.

// This file likely does not meet the threshold of originality
// required for copyright to apply.  As a result, this is free and
// unencumbered software belonging to the public domain.

pragma solidity >0.4.20;

contract ERC721Events {
    event Approval(address indexed src, address indexed guy, uint256 nft);
    event Transfer(address indexed src, address indexed dst, uint256 nft);
    event ApprovalForAll(address indexed guy, address indexed op, bool ok);
}

contract ERC721 is ERC721Events {
    function name() public view returns (string);
    function symbol() public view returns (string);
    function tokenURI(uint256 nft) external view returns (string);
    function totalSupply() public view returns (uint256);
    function tokenByIndex(uint256 idx) public view returns (uint256);
    function tokenOfOwnerByIndex(address guy, uint256 idx) public view returns (uint256);
    function balanceOf(address guy) public view returns (uint256);
    function ownerOf(uint256 nft) public view returns (address);
    function approve(address guy, uint256 nft) public payable returns (address);
    function setApprovalForAll(address op, bool ok) public;
    function getApproval(uint256 nft) public returns (address);
    function isApprovedForAll(address guy, address op) public view returns (bool);
    function takeOwnership(uint256 nft) public;
    function safeTransferFrom(address src, address dst, uint256 nft, bytes what) public payable;
    function safeTransferFrom(address src, address dst, uint256 nft) public payable;
    function transferFrom(address src, address dst, uint256 nft) public payable;
    function supportsInterface(bytes4 interfaceID) external view returns (bool); // ERC165
    function onERC721Received(address op, address src, uint256 nft, bytes what) external returns(bytes4);
}
