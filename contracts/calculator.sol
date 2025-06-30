// License
// SPDX-License-Identifier: LGPL-3.0-only

// Compiler version
pragma solidity ^0.8.24;

contract Calculator {

    // Variables
    uint256 result;

    // Modifiers

    // Events
    event Add(uint256 number1, uint256 number2, uint256 result1);

    // External functions
    function addition(uint256 num1_, uint256 num2_) public returns(uint256 result_){
        result_ = num1_ + num2_;
        emit Add(num1_, num2_, result_);
    }
    function sustraction(uint256 num1_, uint256 num2_) public returns(uint256 result_){

    }

    // Internal functions
    function sustraction_logic(uint256 num1_, uint256 num2_) internal returns(uint256 result_){
        result_ = num1_ - num2_;
        return result_;
    }


}
