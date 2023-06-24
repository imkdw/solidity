// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract FunctionV8 {
    // 솔리디티 v8
    // 0~255 인데 여기에 +1을 해주게 되면 컴파일러에러 에러를 반환함
    // 이는 메모리 오버플로 공격을 컴파일러 단에서 방지해줌
    uint8 private data = 255;

    function setData(uint8 _data) public {
        data = _data;
    }

    function getData() public view returns (uint8) {
        return data;
    }
}
