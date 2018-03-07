//Basic step to create just ICO Token. Later will look into how to make transactions with this token

pragma solidity ^0.4.18;

contract CustomICO
{
    
    uint256 public totalSupply;
    string public name;
    string public symbol;
    uint8 public decimals;
    uint8 public EthtoToken;
    mapping(address=>uint256) balances;
   // address public FundWallet;
    
    function CustomICO()
    {
        
        totalSupply = 1000000000000000000000;
        name = "TESTICOv2";
        symbol = "ICOv3";
        decimals = 18;
        EthtoToken = 10;
        balances[msg.sender] = 1000000000000000000000;
        
        
    }
    
    function balanceOf(address _owner) constant  returns (uint256 balance)
    {
        return balances[_owner];
    }
    
    
}