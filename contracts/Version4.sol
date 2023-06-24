// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.5.0;

contract FunctionV4 {
    // 솔리디티 v4
    // 0~255 인데 여기에 +1을 해주게 되면 데이터를 0으로 변경해버림.
    // 이는 메모리 오버플로 공격이 허용됨
    uint8 private data = 255;

    function setData(uint8 _data) public {
        data = _data;
    }

    function getData() public view returns (uint8) {
        return data;
    }
}
