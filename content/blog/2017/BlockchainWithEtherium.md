
# Practical Blockchain (SmartContracts) Implementations with Ethereum

# Overview
Traditional contracts either in sales, supply chains, payments or other service often have to use a third part (Bank, notary) or other parties to ensure trust and validate that the exchange of services and payments are complete.  The hope (or hype) behind blockchain is both speed up,  reduce the costs, increase transparency of these kind of contracts.

# What is the Blockchain

A blockchain is a public or privately shared **ledger** that contains information on **every transaction** made using the blockchain.

A blockchain system is not based on trust but **cryptographic proof**. This allows two parties to create a mutual contract and have shared immutable proof.

Besides the cryptographic signature the other pillar of this technology is to have a ledger that can be shared and validated. There are a number of implementation that share the same underlying protocols. One version we focus on here is Etherum that has proved popular and has been tested at scale.

# What is Ethereum?

Ethereum software (“Ethereum Virtual Machine”) runs on a network of hosts and ensure the *smart contracts* are replicated and processed on all the computers on the network. Like the internet there is no central coordinator and it is designed to be similarly robust, fault tolerant and decentralised.

It extends the blockchain concepts from Bitcoin which validates, stores, and replicates transaction data on many computers around the world (hence the term ‘distributed ledger’). Ethereum takes this one step further, and also runs computer code equivalently on many computers around the world.

Ethereum's  White Paper was created in late 2013. This concept was developed by Dr. Gavin Wood who eventually published a technical Yellow Paper in April 2014. Since then, the development of Ethereum has been managed by a community of developers.

As we will see Etherium has it's own token/currency ETH. A little over 60m ETH was sold this way for a little over 31,500 Bitcoins BTC, worth about US$18m at the time. An additional 20% (12m ETH) were created to fund development and the Ethereum Foundation.

# Run your own Ethereum
An Ethereum virtual machine client can simply downloaded and run to process the Ethereum blockchain from them particiapnts. It will also independently validate that each block conforms to the Ethereum rules. Although the software is called a client it operates as a Peer-to-Peer network with no central controller.

With the client you can:
* Explore Ethereum’s blockchain (also at https://etherscan.io)
* Create new transactions and smart contracts
* Run smart contracts
* Mine for new blocks

Below we provide details of our Microservice Ethereum implemenation.

# The Public Ledger
For many commercial groups the free, distributed and public nature of blockchain ledgers is essential to avoid lock-out by various parties.
The main Ethereum network is a **public** and **permissionless**. Anyone can download or write some software to connect to the network and start "creating transactions and smart contracts, validating them, and mining blocks without needing to log in or sign up with any other organisation."

Other companies use blockchain to create private contracts e.g asset managment and can create **private networks** that aren’t connected to the main public network. The private tokens and smart contracts won’t be compatible with the public tokens though.

# Proof-of-Work/Participation
To participate users create valid blocks by spending electricity to find solutions to a mathematical puzzle. Ethereum’s maths challenge called **Ethash**

On Ethereum’s roadmap there is a plan to move from electricity-expensive Proof-of-Work mining to a more energy-efficient Proof-of-Stake protocol called Casper, in a future release of the Ethereum software called Serenity.

Ethereum has it's own viritual currency/token **ETH** that is used to fund work including smart contracts.

# Being unstoppable - Swarm and Whisper
Computers need to be able to calculate, store data, and communicate. For Ethereum to realise its vision as an unstoppable censorship-resistant self-sustaining decentralised ‘world’ computer, it needs to be able to do those three things fairly efficiently and in a robust way. The Ethereum Virtual Machine is just one component of the whole:

* calculate - The Ethereum Virtual Machine is the ‘calculate’ element that can run contract logic. This is computation without relying on a central server.
* **Swarm** is Peer-to-Peer file sharing, incentivised with micropayments of ETH. Files are split into chunks, distributed and stored with participating volunteers. These nodes that store and serve the chunks are compensated with ETH from those storing and retrieving the data. This is file storage without relying on a central server.
* **Whisper** is an encrypted messaging protocol that allows nodes to send messages directly to each other in a secure way and that also hides the sender and receiver from third party snoopers. This is communications without relying on a central server.


# Having an Account that Supports SmartContracts

Ethereum supports two types of accounts

* **ETH Accounts** - Accounts that only store ETH – these are similar to Bitcoin addresses and are sometimes known as Externally Owned Accounts (EOAs). You make payments from these accounts by signing transactions with the appropriate private key.
An [example account](https://etherscan.io/address/0x2d7c76202834a11a99576acf2ca95a7e66928ba0) that stores ETH.


* **Accounts and Smart Contracts** - Accounts that store ETH and have code (smart contracts) that can be run – these smart contracts are activated by a transaction sending ETH into it. Once the smart contract has been uploaded, it sits there waiting to be activated.
Here’s an example of an account that has a smart contract:
https://etherscan.io/address/0xcbe1060ee68bc0fed3c00f13d6f110b7eb6434f6#code

Naturally for smartcontracts one needs the account that supports it.

# Smart Contracts
Smart contracts are runnable programs that are stored on Ethereum’s blockchain. They can be activated, or run, by funding them with some ETH.

In Ethereum a smart contract is created with the following steps:
* create new account with some code in it, and uploading it to the Ethereum blockchain in a transaction.

* to run a contract, create a transaction containing a payment of ETH to the contract. There is the option to supply other information if the contract needs it.


* validation of the contract - Each mining computer will run the smart contract on their computer using their Ethereum Virtual Machine as part of the mining process, and come to a conclusion about the output. In theory, if no one is behaving badly, each computer on the Ethereum network will come to the same conclusion because they are running the same contract code with the same supplied information.

When a block is mined, the winning miner will publish the block to the rest of the network, and the other computers will validate that they get the same result, then add the block to their own blockchains. This is how the state of Ethereum’s blockchain gets updated.

# No Free Lunch - There is a Price for Contracts

There is a payment is a small amount of ETH (Ethereum tokens) by the person who wants to run the contract needs to send to the miner to make it work.

Ethereum has an algorithm to calculate the price of running a contract:
```
  Payment (in ETH) = Gas amount (in Gas) x Gas price (in ETH/Gas)
```
In simple terms the more complex the smart contract (the number and type of computational steps, memory used for storage, etc), then the higher the price.

The cost is essentially an **anti-spam** mechanism that would happen if running smart contracts were free.

# Programming Smart Contract -  Solidity / Serpent, LLL
As part of the open-ness there are more than one way to program a contract. There are three common languages smart contracts are written in, which can be compiled into smart contracts and run on Ethereum Virtual Machines. They are:

* **Solidity** – similar to the language Javascript. This is currently the most popular and functional smart contract scripting language.
* **Serpent** – similar to the language Python, and was popular in the early history of Ethereum.
* **LLL** (Lisp Like Language) – similar to Lisp and was only really used in the very early days. It is probably the hardest to write in.

# Ethereum Libraries and Clients
The official Ethereum clients are all **open source** so the implementation is all transparent. The most popular clients are:

* [geth](https://github.com/ethereum/go-ethereum) (written in Go)
* [eth](https://github.com/ethereum/cpp-ethereum) (written in C++)
* [pyethapp](https://github.com/ethereum/pyethapp) (written in Python)
* [ethereumj](https://github.com/ethereum/ethereumj)(written in java)

These is a variety of  command-line based programs and additional software with a graphical interface. Currently the official and most popular graphical one is Mist (https://github.com/ethereum/mist).



# Links and Reference
* Ethereum Official Website is https://www.ethereum.org


----
Author [richard.donovan@realitech.co.uk](email:richard.donovan@realitech.co.uk)  
Contact [info@realitech.co.uk](email:info@realitech.co.uk)
