// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Enum {
    enum Status {
        None,
        Pending,
        Completed,
        Failed,
        Shipped

    }
     Status public status;

     struct Order{
         address buyer;
         Status status;
     }

     Order[] public orders;

     function get() public view returns(Status){
         return status;
     }

     function set(Status _status) external {
         status = _status;
     }

     function ship() external{
         status = Status.Shipped;
     }

     function reset() external{
         delete status;
     }
}
