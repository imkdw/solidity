// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract FunctionVisibility {
    uint8 private data = 255;

    // private : 외부 공개 X, 상속된 CA X, 내부 O
    function privateSetData(uint8 _data) private {
        data = _data;
    }

    // public : 외부공개 O, 상속된 CA O, 내부 O
    function publicSetData(uint8 _data) public {
        data = _data;
    }

    // internal : 외부공개 X, 상속된 CA O, 내부 O
    function internalSetData(uint8 _data) internal {
        data = _data;
    }

    // external : 외부공개 O, 상속된 CA X, 내부 X
    function extenalSetData(uint8 _data) external {
        data = _data;
    }
}
