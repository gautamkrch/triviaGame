# Trivia Game Smart Contract

## Overview
This Solidity smart contract implements a simple trivia game where users can answer questions and earn token rewards for correct answers. It maintains a balance system for users and ensures fair play by preventing multiple answers to the same question.

## Features
- Users can answer trivia questions.
- Correct answers earn token rewards.
- Prevents users from answering the same question multiple times.
- Allows users to check their token balance.

## Smart Contract Functions

### `setQuestionAnswer(uint256 questionId, string memory answer) public`
Stores the correct answer for a given question ID. The answer is hashed before storing to maintain security.

### `answerQuestion(uint256 questionId, string memory answer) public`
Allows users to answer a question. If the answer matches the stored hash, the user is rewarded with tokens.

### `getBalance() public view returns (uint256)`
Returns the current balance of the caller.

## Usage
1. **Set Questions and Answers:** Admins can set up questions using `setQuestionAnswer`.
2. **Answer Questions:** Users submit their answers using `answerQuestion`.
3. **Check Balance:** Users can check their earned tokens using `getBalance`.

## Contract Address : 0xcBeA6103cCC8402F95a886A3b4c633CB467e5d12
