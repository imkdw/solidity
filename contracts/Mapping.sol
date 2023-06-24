// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Mapping {
    // ERC20에서 잔액을 관리할때 많이 사용
    // CA의 매핑값으로 잔액이 관리됨
    mapping(address => int) public balance;

    // key: value 형태로 되어있고 중복이 발생하지 않음(업데이트 됨)
    balance["0x95222290DD7278Aa3Ddd389Cc1E1d165CC4BAfe5"] = 1000;
    uint public myBalance = balance["0x95222290DD7278Aa3Ddd389Cc1E1d165CC4BAfe5"]; // 1000

    balance["0x95222290DD7278Aa3Ddd389Cc1E1d165CC4BAfe5"] = 10;
    uint public myBalance = balance["0x95222290DD7278Aa3Ddd389Cc1E1d165CC4BAfe5"]; // 10
}
