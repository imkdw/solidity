// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Address {
    // 주소의 경우 전부 대문자로 되어야함(컴파일러 Checksum 통과 못함)
    // address public failUser = 0x885a73f551fcc946c688eefbc10023f4b7cc48f3;

    address public user1 = 0xeA8C1D8f55bDC599517B828A8De697F9580652b6;
    address public user2 = 0x21650728aF3f80a703AC046b5C4CE48E99054001;

    // 이더리움을 받는 유저의 경우 payable을 입력해줘야 된다.
    // 즉 실제 돈이 왔다갔다 하는 유저는 payable이 선언되어야함
    address payable public payableUser1 = payable(user1);
    address payable public payableUser2 = payable(user2);

    function sendEth() public payable {
        // payable이 아닌 유저는 돈 송금이 불가능
        // user.transfer(100000000000);

        payableUser2.transfer(100);
    }

    // 잔액 가져오기
    function getBalance() public view returns (uint) {
        return user2.balance;
    }
}
