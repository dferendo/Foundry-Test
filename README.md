# Foundry-Test
Testing out Foundry



Build:

```forge build```

Test:

```forge test```

Deploy:

Create a .env file and fill the variables then export them to the terminal:

```export $(echo $(cat .env | sed 's/#.*//g' | sed 's/\r//g' | xargs) | envsubst)```

```forge create Numbers --contracts ./src/Numbers.sol --private-key <private-key>```

(Currently not working, see [issue](https://github.com/gakonst/foundry/issues/311)) Verify on Etherscan

```forge verify-contract ./src/Numbers.sol:Numbers <contract-address>```

