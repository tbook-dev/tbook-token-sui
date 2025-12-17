// SPDX-License-Identifier: Apache-2.0

module tbook::BOOK;

use sui::coin::{Self, TreasuryCap, Coin};
use std::option::some;

public struct BOOK has drop {}

const SYMBOL: vector<u8> = b"BOOK";
const NAME: vector<u8> = b"TBook Token";
const DESCRIPTION: vector<u8> = b"BOOK: The TBook Token.";
const DECIMALS: u8 = 9;
const ICON_URL: vector<u8> = b"https://static.tbook.vip/token.jpg";
const TOTAL_SUPPLY: u64 = 10_000_000_000_000000000; // 10B with 9 decimals

#[allow(deprecated_usage)]
fun init(witness: BOOK, ctx: &mut TxContext) {
    let (treasury, metadata) = coin::create_currency(
        witness,
        DECIMALS,
        SYMBOL,
        NAME,
        DESCRIPTION,
        some(sui::url::new_unsafe_from_bytes(ICON_URL)),
        ctx,
    );
    transfer::public_freeze_object(metadata);
    transfer::public_transfer(treasury, ctx.sender())
}

public entry fun mint(
    treasury_cap: &mut TreasuryCap<BOOK>,
    amount: u64,
    recipient: address,
    ctx: &mut TxContext,
) {
    let coin = coin::mint(treasury_cap, amount, ctx);
    transfer::public_transfer(coin, recipient)
}

public entry fun burn(treasury_cap: &mut TreasuryCap<BOOK>, coin: Coin<BOOK>) {
    coin::burn(treasury_cap, coin);
}
