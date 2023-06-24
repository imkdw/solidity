// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract PureView {
    // 스토리지 : 영구적으로 저장되는 데이터
    // 메모리 : 잠깐 생겼다가 증발하는 데이터

    // 전역변수에 값을 정의하면 이건 스토리지 데이터가 된다.
    uint8 private data = 255;

    // 메모리에있는 state(실제 체인상에 저장된 데이터)를 실제로 조회할때는 view를 사용
    function getData() public view returns (uint8) {
        return data;
    }

    // 실제 메모리의 state를 조회해서 반환하는게 아니고 메모리상에 임시값을 사용하는 경우 pure를 사용
    function getPureData() public pure returns (uint8) {
        // 1. 함수의 파라미터 값
        // 2. 함수 내부의 변수
        uint8 temp_data = 9;
        return temp_data;
    }
}
