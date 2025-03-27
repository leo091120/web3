// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
// Make sure EVM version and VM set to Cancun 瞬态存储

// Storage - data is stored on the blockchain
// Memory - data is cleared out after a function call
// Transient storage - data is cleared out after a transaction
interface ITest {
    function val() external view returns (uint256);
    function test() external ;
}

contract Callback{
    uint256 public val;

    fallback() external { 
        val = ITest(msg.sender).val();
    }

    function test(address target) external {
        ITest(target).test();
    }
}

contract TestStorage {
    uint256 public val;

    function test() public {
        val = 123;
        (bool success, ) = msg.sender.call("");
        require(success, "External call failed");
    }
}

contract TestTransientStorage {
    bytes32 constant SLOT = 0;

    function test() public {
        // 清除瞬态存储
        assembly {
            tstore(SLOT, 0)// 支持 Cancun 后可正常运行
        }
        // 修改瞬态存储
        assembly {
            tstore(SLOT, 321)// 支持 Cancun 后可正常运行
        }
        
        (bool success, ) = msg.sender.call("");
        require(success, "External call failed");
     
        // 清除瞬态存储
        assembly {
            tstore(SLOT, 0)
        }
        
    }

    function val() public view returns (uint256 v) {
        assembly {
            v := tload(SLOT)// 支持 Cancun 后可正常运行
        }
    }
}

contract ReentrancyGuard {
    bool private locked;

    modifier  lock(){
        require(!locked);
        locked = true;
        _;
        locked = false;
    }

    function test() public lock {
        //忽略call的错误
        bytes memory b = "";
        (bool success, ) = msg.sender.call(b);
        require(success, "External call failed");
    }
}

contract ReentrancyGuardTransient {
    bytes32 constant SLOT = 0;
    modifier lock(){
        assembly {
            if tload(SLOT) { revert(0, 0) }
            tstore(SLOT, 1)
        }
        _;
        assembly {
            tstore(SLOT, 0)
        }
    }

    function test() external lock {
        bytes memory b = "";
        (bool success, ) = msg.sender.call(b);
        require(success, "External call failed");
    }
}
