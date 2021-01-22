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
  For this hackathon purpose, I run my own proxy from: https://github.com/behumble/lbp-signing-proxy
  to bypass generating signature process 
  */
  static const lbpAPILink = 'LINE_BLOCKCHAIN_API_URL';
}
