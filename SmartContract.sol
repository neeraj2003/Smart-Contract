pragma solidity ^0.6.0;

contract Assignment {
    int Quantity;
    
    address public buyer;
    address payable public seller;
    
    modifier onlyBuyer() {
        require(msg.sender == buyer, "Only buyer can call this method");
        _;
    }
    
    modifier onlySeller() {
        require(msg.sender == seller, "Only seller can call this method");
        _;
    }
    
    constructor(address _buyer, address payable _seller) public {
        buyer = _buyer;
        seller = _seller;
    }
    
    function deposit() onlyBuyer external payable {
        ("Already paid");
    }
    
    function createOrder(int  _number) onlyBuyer external {
        Quantity= _number;
    }
    
    function Accept() onlySeller public view returns(int)  {
        return Quantity;
    }
    
    function OrderComplete() onlySeller external{
        "Order Completed";
    }
    
    function Cost() onlySeller external{
        seller.transfer(address(this).balance);
    }
}