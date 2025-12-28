# TBook Token on Sui

TBook Token (BOOK) is a Move-based fungible token deployed on the Sui blockchain, featuring a 9-decimal precision token standard. The contract supports minting and burning through the TreasuryCap authority, with a maximum supply of 10 billion tokens.

## Token Specifications

| Property | Value |
|----------|-------|
| Symbol | BOOK |
| Name | TBook Token |
| Decimals | 9 |
| Max Supply | 10,000,000,000 (10B) |

## Features

- **Standard Sui Coin**: Built on Sui's native coin framework
- **Controlled Minting**: TreasuryCap-based minting with supply cap enforcement
- **Burn Support**: Tokens can be permanently removed from circulation
- **Immutable Metadata**: Token metadata is frozen after initialization

## Deployment

| Network | Explorer |
|---------|----------|
| Mainnet | [SuiVision](https://suivision.xyz/coin/0xf3edd73adc13db93b310e8e12f3d5e68cebead89abff5d9703c880600f4ea3b8::BOOK::BOOK) |
| Testnet | [SuiVision](https://testnet.suivision.xyz/coin/0xa40d55604f395cbb025ac6a3e5c98b05079fb32e0d7d4d63a80ddac7229e2aec::BOOK::BOOK) |

## Audit Reports

This contract has been audited by two independent security firms:

- [Beosin](https://beosin.com/audits/TBook_202512181800.pdf)
- [MoveBit](https://movebit.xyz/reports/20251224-TBook-Token-Final-Audit-Report.pdf)

Local copies available in [audit_report/](audit_report/).

## License

[Apache 2.0](LICENSE)
