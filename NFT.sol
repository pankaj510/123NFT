// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
 
import "https://github.com/0xcert/ethereum-erc721/src/contracts/tokens/nf-token-metadata.sol";
import "./contracts/ownership/ownable.sol";

contract newNFT is NFTokenMetadata, Ownable {
 
  constructor() {
//    nftName = "Synth NFT";
//    nftSymbol = "NFT";
  }
  
  address NFT123 = 0xA5264055Db0D9065ea410a1642496299A38B7b4d;
  address payable wallet = payable(NFT123);
  address payable retrieve = payable(owner);
  address payable royadd;
  uint256 royamt;
  
  function mint(string calldata nftNm, string calldata nftSym, string calldata _uri, address payable royaltyadd, uint256 royaltyamt) external onlyOwner {
    nftName = nftNm;
    nftSymbol = nftSym;
    royadd = royaltyadd;
    royamt = royaltyamt;
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
    royadd.transfer(royamt);
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