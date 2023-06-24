// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract DataType {
    // 불린 타입 : true / false, 기본적으로 소문자(true, false)로 처리
    bool public data1 = false;

    // 정수 타입 : 양수, 음수, 0
    int public data2 = 0;

    // 양수 타입
    uint public data3 = 10;

    // 양수 매우 큰 숫자 : 0~2^266 - 1
    uint256 public data4 = 100000000000000;

    // 음수 매우 큰 숫자 : -2^255 ~ 2^255 - 1
    int256 public data5 = -10000000000;

    // 작은 양수 데이터를 다룰때 : 0~2^8 - 1 = 255
    uint8 public data6 = 100;

    // 작은 음수 데이터를 다룰때 : -2^7 ~ 2^7 - 1 = `128 ~ 127
    int8 public data7 = -100;

    // 작은 값을 쓸때랑 큰 값을 쓸때랑 가스비용이 다르기 때문에 최적화를 해줘야 가스비 절약이 가능하다

    // 사실 스트링으로 저장되는게 아니라 바이트로 변환되서 저장됨
    string public data8 = "sleepy";

    // 스트링은 바이트로도 저장이 가능하다. 보통 가변으로 할당할때 사용
    bytes public data9 = "sleepy";

    // 고정 메모리 32바이트를 할당한다는 뜻
    bytes32 public data10 = "sleepy";

    // 소수점 값은 변환이 불가능하고 외부에서 처리해야함
    // float public data11 = 1.0;

    // 주소값을 가지는 자료형
    // address public data12 = 0x3c210125123124123;
}
