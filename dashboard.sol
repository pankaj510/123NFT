// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
 
import "./NFT.sol";

interface new123NFT {
    function contractInvest() external payable;
    function holdingsTransfer(uint256 holdings) external;
    function contractHoldings() external view returns (uint bal);
    function mint(string calldata nftNm, string calldata nftSym, string calldata _uri) external;
    function transferOwnership(address _oldOwner, address _newOwner) external;
    function owner() external view returns (address);
    function ownerOf(uint256 _tokenId) external view returns (address);
    function name() external view returns (string memory _name);
    function symbol() external view returns (string memory _symbol);
    function tokenURI(uint256 _tokenId) external view returns (string memory);

}