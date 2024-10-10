Seed Phrase Generator and Wallet Balance Checker
This project is a powerful tool that generates random seed phrases and checks the balances of Ethereum (ETH), Bitcoin (BTC), Litecoin (LTC), Dogecoin (DOGE), and TRON (TRX) wallets. The generator creates seed phrases following the BIP39 standard and scans the blockchain for each associated wallet address to identify any wallets with a positive balance. If a wallet is found with a balance greater than zero, it is saved to a log file for further use.

The script is optimized to handle multiple seed phrases and cryptocurrencies simultaneously, providing fast and efficient wallet balance checks across multiple blockchains. It also includes multi-threading capabilities to maximize the processing power of your machine.

Features:
\_>  Generates seed phrases based on BIP39 wordlists.
\_>  Checks balances for ETH, BTC, LTC, DOGE, and TRX.
\_>  Logs wallets with positive balances.
\_>  Multi-threading support for faster scanning.
\_>  API failover mechanisms to handle rate limits efficiently.
