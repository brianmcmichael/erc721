/// erc721.sol -- API for the ERC721 token standard

// See <https://github.com/ethereum/EIPs/issues/721>.

// This file likely does not meet the threshold of originality
// required for copyright to apply.  As a result, this is free and
// unencumbered software belonging to the public domain.

pragma solidity >0.4.20;

contract ERC721Metadata {
    function name() public view returns (string memory);
    function symbol() public view returns (string memory);
    function tokenURI(uint256 nft) external view returns (string memory);
}

contract ERC721Enumerable {
    function totalSupply() public view returns (uint256);
    function tokenByIndex(uint256 idx) public view returns (uint256);
    function tokenOfOwnerByIndex(address guy, uint256 idx) public view returns (uint256);
}

contract ERC721Events {
    event Transfer(address indexed src, address indexed dst, uint256 nft);
    event Approval(address indexed src, address indexed guy, uint256 nft);
    event ApprovalForAll(address indexed guy, address indexed op, bool ok);
}

contract ERC721TokenReceiver {
    function onERC721Received(address op, address src, uint256 nft, bytes calldata what) external returns(bytes4);
}

contract ERC165 {
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}

contract ERC721 is ERC165, ERC721Events, ERC721TokenReceiver {
    function balanceOf(address guy) public view returns (uint256);
    function ownerOf(uint256 nft) public view returns (address);
    function safeTransferFrom(address src, address dst, uint256 nft, bytes calldata what) public payable;
    function safeTransferFrom(address src, address dst, uint256 nft) public payable;
    function transferFrom(address src, address dst, uint256 nft) public payable;
    function approve(address guy, uint256 nft) public payable returns (address);
    function setApprovalForAll(address op, bool ok) public;
    function getApproved(uint256 nft) public returns (address);
    function isApprovedForAll(address guy, address op) public view returns (bool);
}
