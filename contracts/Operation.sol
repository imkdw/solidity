// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Operation {
    uint public intData;
    string public stringData;

    function math() public {
        intData = intData + 1;
        intData += 1;
        intData++;
    }

    function weiToEth() public {
        // 화폐 단위중 가장 작은건 wei
        uint wei_data = 1 wei;

        // 이더리움 단위 10^18
        uint eth_data = wei_data * (10 ** 18);
        // uint eth_data = 1 ether;

        // gwei 데이터 단위 10^9
        uint gwei_data = wei_data * (10 ** 9);
    }

    function logical() public {
        bool true_data = true;
        bool false_data = false;

        if (true_data) {
            // 참
        } else {
            // 거짓
        }

        if (true_data && false_data) {} // false
        if (true_data || false_data) {} // true
        if (true_data == false_data) {} // false
    }
}
