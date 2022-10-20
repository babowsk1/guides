pragma ever-solidity >= 0.61.2;
pragma AbiHeader expire;
pragma AbiHeader pubkey;

import '@itgold/everscale-tip/contracts/TIP4_1/TIP4_1Nft.sol';
import '@itgold/everscale-tip/contracts/TIP4_2/TIP4_2Nft.sol';

contract Nft is TIP4_1Nft, TIP4_2Nft {

    constructor(
        address owner,
        address sendGasTo,
        uint128 remainOnNft,
        string json
    ) TIP4_1Nft(
        owner,
        sendGasTo,
        remainOnNft
    ) TIP4_2Nft (
        json
    ) public {
        tvm.accept();
    }

}