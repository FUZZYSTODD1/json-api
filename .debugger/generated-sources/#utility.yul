{
    { }
    function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0
    {
        if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }
        value0 := calldataload(headStart)
    }
    function abi_encode_tuple_t_address__to_t_address__fromStack_library_reversed(headStart, value0) -> tail
    {
        tail := add(headStart, 32)
        mstore(headStart, and(value0, sub(shl(160, 1), 1)))
    }
    function panic_error_0x32()
    {
        mstore(0, shl(224, 0x4e487b71))
        mstore(4, 0x32)
        revert(0, 0x24)
    }
}