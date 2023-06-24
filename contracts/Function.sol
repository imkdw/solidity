// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Function {
    uint8 private data = 255;

    // 데이터를 변경하면 트랜잭션이 변경됨
    function setData(uint8 _data) public {
        data = _data;
    }

    // 데이터 변경이 없다면 트랜잭션에 변동이 없음
    function getData() public view returns (uint8) {
        return data;
    }
}
