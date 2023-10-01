// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.0;

contract Second {
    // global variables
    uint private data;

    // events to be emitted
    event Credited ( address sender, uint amount, uint date );

    function store (uint _data) external{
        data = _data;
    }

    function fetch () external view returns (uint) {
        return data;
    }

    function credit (uint amount) external payable {
        emit Credited(msg.sender, amount, block.timestamp);
    }
}