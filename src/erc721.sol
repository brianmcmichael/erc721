/// erc721.sol -- API for the ERC721 token standard

// See <https://github.com/ethereum/EIPs/issues/721>.

// This file likely does not meet the threshold of originality
// required for copyright to apply.  As a result, this is free and
// unencumbered software belonging to the public domain.

// SPDX-License-Identifier: NLPL
pragma solidity >=0.6.0;

interface ERC721Metadata {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function tokenURI(uint256 nft) external view returns (string memory);
}

interface ERC721Enumerable {
    function totalSupply() external view returns (uint256);
    function tokenByIndex(uint256 idx) external view returns (uint256);
    function tokenOfOwnerByIndex(address guy, uint256 idx) external view returns (uint256);
}

interface ERC721Events {
    event Transfer(address indexed src, address indexed dst, uint256 nft);
    event Approval(address indexed src, address indexed guy, uint256 nft);
    event ApprovalForAll(address indexed guy, address indexed op, bool ok);
}

interface ERC721TokenReceiver {
    function onERC721Received(address op, address src, uint256 nft, bytes calldata what) external returns(bytes4);
}

interface ERC165 {
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}

interface ERC721 is ERC165, ERC721Events, ERC721TokenReceiver {
    function balanceOf(address guy) external view returns (uint256);
    function ownerOf(uint256 nft) external view returns (address);
    function safeTransferFrom(address src, address dst, uint256 nft, bytes calldata what) external payable;
    function safeTransferFrom(address src, address dst, uint256 nft) external payable;
    function transferFrom(address src, address dst, uint256 nft) external payable;
    function approve(address guy, uint256 nft) external payable;
    function setApprovalForAll(address op, bool ok) external;
    function getApproved(uint256 nft) external returns (address);
    function isApprovedForAll(address guy, address op) external view returns (bool);
}
