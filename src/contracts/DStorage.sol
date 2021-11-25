pragma solidity ^0.5.0;

contract DStorage {
  //public type to access this variable outside of the smart contract
  // Name
  string public name = 'DStorage';
  uint public fileCount = 0;

  // Number of files - each file is a key-val pair with key_id and file hash
  // Mapping fileId=>Struct 
  mapping(uint => File) public files;

  // Struct
  struct File {
    uint fileId;
    string fileHash;
    uint fileSize;
    string fileType;
    string fileName;
    string fileDescription;
    uint uploadTime;
    address payable uploader;
  }


  // Event
  //upload and save the file
  constructor() public {
  }

  // Upload File function
  function uploadFile(string memory _fileHash, uint _fileSize, string memory _fileType, string memory _fileName, string memory _fileDescription) public {

    // Make sure the file hash exists
    require(bytes(_fileHash).length > 0);
    // Make sure file type exists
    require(bytes(_fileType).length > 0);
    // Make sure file description exists
    require(bytes(_fileDescription).length > 0);
    // Make sure file fileName exists
    require(bytes(_fileName).length > 0);
    // Make sure uploader address exists
    require(msg.sender!=address(0));
    // Make sure file size is more than 0
    require(_fileSize > 0);


    // Increment file id
    fileCount++;

    // Add File to the contract
    //creating a file object
    files[fileCount] = File(fileCount, _fileHash, _fileSize, _fileType, _fileName, _fileDescription, now, msg.sender); //now => timestamp | msg.sender => address of caller

    // Trigger an event
  }

}