# Setup Ethereum ecosystem

The Ethereum  ecosystem can be setup locally for development purpose or we can connect to a real blockchain.
The local blockchain can be setup using an in-memory blockchain called Ganache.


## Install local blockchain (Ganache)

`npm install ganache-cli web3@0.20.2`


## Install mainnet/testnet blockchain client

`brew tap ethereum/ethereum
brew install ethereum`

`sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum`

`geth --rinkeby --syncmode "fast" --rpc --rpcapi db,eth,net,web3,personal --cache=1024  --rpcport 8545 --rpcaddr 127.0.0.1 --rpccorsdomain "*"`

# Setup development environment

We can start the Ethereum development from scratch or use an existing framework such as truffle.
 

## Truffle framework

Truffle framework makes the development and deployment process smoother by creating a framework for development.
The the framework will help to easily create and deploy the DApp.

`npm install -g truffle
npm install -g webpack
truffle unbox webpack`

# Creating the voting application

## Basic application

* Run the JS deploy script 

    `node deploy.js`. 
    
    This will deploy the voting contract to the blockchain.

* Note the contract address and supply that in index.js.

* Open index.html in the browser to use the application
    
    
## Using truffle framework

* Copy the Voting.sol file to contracts/ folder created by truffle.
    
* replace content of migrations/2_deploy_contracts.js file which is created by truffle with the repo version.

* Copy app/scripts/app.js and app/index.html repo files to the respective destinations.

* Launch the application in development mode

    ``npm run dev``