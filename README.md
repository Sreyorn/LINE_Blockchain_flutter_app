# GROWALLET (A hackathon project using LINE_Blockchain)
This project was built in a two-day [Dreamin hackathon event](https://dreamin.career/academy/hackathon), where we use LINE blockchain to build an app that help user invest in cryptocurrency.

The app was designed to be simple and intuitive and easy, so that everyone, even those without cryptocurrency experience, can use.

## Getting Started
- To run this project, register your LINE Blockchain Developer account from [here](https://blockchain.line.biz/).
- Create your own Wallet, Asset, and Token
- Open `lib/config.dart` file, and put your setting there:

- For ease of development during this hackathon, we run a proxy server from this [lbp-signing-proxy](https://github.com/behumble/lbp-signing-proxy)
```
class Config {
  //All the below key can be found after register and finish line blockchain developer account
  static const serviceAPIKey = "YOUR_SERVICE_API_KEY";
  static const walletAddress = "YOUR WALLET ADDRESS";
  static const walletSecret = "YOUR_WALLET_SECRET";

  //Non-Fungible Token requirement for listing and minting
  //can be found after create NTF asset
  static const contractID = 'CONTRACT_ID';
  static const tokenType = 'TOKEN_ID';
  /* 
  https://test-api.blockchain.line.me: for Cashew testnet
  https://api.blockchain.line.me: for Daphne
  For this hackathon purpose, We run our own proxy from: https://github.com/behumble/lbp-signing-proxy
  to bypass generating signature process 
  */
  static const lbpAPILink = 'LINE_BLOCKCHAIN_API_URL';
}
```

## Demo Application
https://youtu.be/fU6t9odfsdM

## Our team:
- [Sam](https://github.com/samyrsd)
- [Sophy](https://github.com/pipidx)
- [Sreyorn](https://github.com/Sreyorn)
