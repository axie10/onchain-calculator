// License
// SPDX-License-Identifier: LGPL-3.0-only

// Compiler version
pragma solidity ^0.8.24;

contract Calculator {

    // Variables
    uint256 result = 10;

    // Modifiers
    modifier checkNumber(uint256 numero1) {
        if(numero1 != 10) revert();
        _;
    }

    // Events
    event Add(uint256 number1, uint256 number2, uint256 result1);
    event Substraction(uint256 number1, uint256 number2, uint256 result1);

    // External functions
    function addition(uint256 num1_, uint256 num2_) public returns(uint256 result_){
        result_ = num1_ + num2_;
        emit Add(num1_, num2_, result_);
    }
    function substraction(uint256 num1_, uint256 num2_) public returns(uint256 result_){
        result_ = substraction_logic(num1_, num2_);
        emit Substraction(num1_, num2_, result_);
    }

    function multiplier(uint256 num1_) public {
        result = result * num1_;
    }

    function multiplier2(uint256 num1_) public checkNumber(num1_) {
        result = result * num1_;
    }

    // Internal functions
    function substraction_logic(uint256 num1_, uint256 num2_) internal pure returns(uint256 result_){
        result_ = num1_ - num2_;
    }


}
