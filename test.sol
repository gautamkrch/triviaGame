pragma solidity ^0.8.0;

contract TriviaGame {
    mapping(address => uint256) public balances;
    mapping(uint256 => bytes32) private questionAnswers;
    mapping(address => mapping(uint256 => bool)) private answeredQuestions;

    function setQuestionAnswer(uint256 questionId, string memory answer) public {
        questionAnswers[questionId] = keccak256(abi.encodePacked(answer));
    }

    function answerQuestion(uint256 questionId, string memory answer) public {
        require(!answeredQuestions[msg.sender][questionId], "Already answered");
        if (keccak256(abi.encodePacked(answer)) == questionAnswers[questionId]) {
            balances[msg.sender] += 10;
        }
        answeredQuestions[msg.sender][questionId] = true;
    }
    
    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}
