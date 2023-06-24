// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract VariableRange {
    // 스토리지에 저장됨
    uint private data = 10;

    function getData() public view returns (uint) {
        return data;
    }

    // 변수명이 중복되어도 스코프는 함수 내부에 데이터를 반환해줌
    // 이때 view가 아닌 pure를 써야 올바른 문법임
    function getData2() public view returns (uint) {
        uint data = 5;
        return data;
    }
}
