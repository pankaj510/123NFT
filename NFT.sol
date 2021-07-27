// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
 
import "https://github.com/0xcert/ethereum-erc721/src/contracts/tokens/nf-token-metadata.sol";
import "./ownable.sol";

contract newNFT is NFTokenMetadata, Ownable {
 
  constructor() {
//    nftName = "Synth NFT";
//    nftSymbol = "NFT";
  }
  
  address NFT123 = 0xA5264055Db0D9065ea410a1642496299A38B7b4d;
  address payable wallet = payable(NFT123);
  address payable retrieve = payable(owner);
  
  function mint(string calldata nftNm, string calldata nftSym, string calldata _uri) external onlyOwner {
    nftName = nftNm;
    nftSymbol = nftSym;
    super._mint(owner, 0);
    super._setTokenUri(0, _uri);
  }
 
 function transferOwnership(
    address _oldOwner,
    address _newOwner
  )
    public
    onlyOwner
  {
    wallet.transfer(0.00042690 ether);
    address tokenOwner = idToOwner[0];
    require(tokenOwner == _oldOwner, NOT_OWNER);
    require(_newOwner != address(0), CANNOT_TRANSFER_TO_ZERO_ADDRESS);
    emit OwnershipTransferred(owner, _newOwner);
    _transfer(_newOwner, 0);
    owner = _newOwner;
  }
  
  function contractInvest() external payable {
      
  }
  
  function contractHoldings() public view returns (uint bal) {
      address myAddress = address(this);
      return bal = myAddress.balance;
  }
  
  function holdingsTransfer(uint256 holdings) external onlyOwner {
      retrieve.transfer(holdings);
  }
}