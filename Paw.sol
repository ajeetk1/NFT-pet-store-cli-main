pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// TODO: Create a contract named "Paw" that inherits from ERC20 and Ownable.
// See Pet.sol for syntax.
  contract  Paw is ERC20('Paw'), Ownable {
  // TODO: Set the private air drop amount at any number.
     uint8 private airDropAmount = 5;
     uint8 public Total_Token=10;

  // TODO: Write the constructor for the PAW token and _mint() to msg.sender any number of tokens.
    constructor() {
    _mint(msg.sender,10);
    }
  
  // TODO: Write a public function requestAirdrop() that calls airdropTo() 
  // and transfer the air drop amount of tokens to the account connected to the contract.
    function requestAirdrop() public {
        airdropTo(msg.sender,10);
    }
  

  // TODO: Write a private function airdropTo() that takes in a recipient address and an amount 
        function airdropTo(address receipientAddress,uint8 amount)private{
  // and _transfer() that amount of tokens from the contract owner (see owner()) to the recipient.
         _transfer(msg.sender,receipientAddress,amount);

      }
    
  }

