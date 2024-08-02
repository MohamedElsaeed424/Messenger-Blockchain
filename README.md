# Messenger Contract

## Overview

The `Messenger` contract is a simple smart contract deployed on the Ethereum blockchain. It allows users to get and update a stored message. Only the contract owner can update the message, ensuring that unauthorized users cannot make changes.

## Contract Details

### `Messenger`

This contract contains a single message, an owner address, and a few functions to interact with the contract.

#### State Variables

- `string public message`: A public string that holds the current message. Initialized with "Welcome to My Smart Contract".
- `address owner`: The address of the contract creator, who has exclusive rights to update the message.

#### Constructor

- `constructor()`: Sets the contract deployer as the owner of the contract.

#### Functions

- `function getMessage() public view returns (string memory)`: Returns the current message stored in the contract.
- `function updateMessage(string memory _message) public`: Updates the stored message with `_message`, but only if the caller is the owner. If the caller is not the owner, an error message is generated.
- `function viewError() private pure returns (string memory)`: Generates an error message stating that the caller is not the owner. This function is private and used internally.

## Deployment

To deploy this contract, use the following command:

```bash
truffle migrate
```

Ensure you have the Truffle framework installed and configured for your Ethereum development environment.

## Usage

1. **Deploy the Contract**: Deploy the contract to an Ethereum network (e.g., Rinkeby, Mainnet).
2. **Interact with the Contract**:
   - Use the `getMessage` function to retrieve the current message.
   - Use the `updateMessage` function to change the message (only callable by the owner).

## Security Notes

- Only the owner can update the message, enforced by checking the `msg.sender`.
- Unauthorized users attempting to update the message will receive a specific error message.

## License

This contract is licensed under the [MIT License](https://opensource.org/licenses/MIT).
