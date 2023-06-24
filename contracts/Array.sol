// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Array {
    // 가변 할당
    int[] public intList = [1, 2, 3, 4];

    // 고정 할당
    int[3] public int3List = [1, 2, 3];

    // 구조체형 배열
    struct Product {
        string name;
        uint price;
    }
    Product[] public productList;

    // 배열 데이터 추가, 
    intList.push(5);

    // 배열 데이터 빼기
    int public lastData = intList.pop();

    // 배열 인덱스로 데이터 가져오기
    int public secondData = intList[1];

    // 배열 데이터 삭제(0으로 변경) : [1, 2, 3] -> [1, 0, 3]
    delete intList[1];
}