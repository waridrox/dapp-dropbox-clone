pragma solidity ^0.5.0;

contract DStorage {
  //public type to access this variable outside of the smart contract
  // Name
  string public name = 'DStorage';

  // Number of files - each file is a key-val pair with key_id and file hash
  // Mapping fileId=>Struct 
  mapping( uint => File ) public files;

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
  function uploadFile() {

    //creating a test file 
    files[1] = File(1, 'xyzabc', 2048, 'Testing123', 'Ok ok fellas', 19203854, 0x0);
    // Make sure the file hash exists

    // Make sure file type exists

    // Make sure file description exists

    // Make sure file fileName exists

    // Make sure uploader address exists

    // Make sure file size is more than 0


    // Increment file id

    // Add File to the contract

    // Trigger an event
  }

}