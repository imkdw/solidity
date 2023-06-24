// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract This {
    uint public data = 10;

    // 해당 CA의 자산을 반환
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // 외부에서만 호출이 가능
    function externalFunc() external {
        data = 15;
    }

    // 꼼수 느낌으로 external 접근자의 함수를 호출
    function internalFunc() internal {
        this.externalFunc();
    }
}
