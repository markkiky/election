// Declare version of solidity
pragma solidity >=0.4.22 <0.8.0;

contract Election {
    // Constructor
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

     // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Attributes
    string public candidate;
    mapping(uint => Candidate) public candidates;
    uint public candidatesCount;


    // Add Candidate
    function addCandidate(string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

}