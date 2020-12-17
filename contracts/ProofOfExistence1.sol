pragma solidity ^0.5.0;

// Proof of Existence contract, version 1
contract ProofOfExistence1 {
  // state
  bytes32 public proof;
  // Calcula y almacena la prueba de existencia de un documento
  // *Funcion para una transaccion simple*
  function notarize(string memory document) public {
    proof = proofFor(document);
  }
  // Nos permite obtener la info de un documento sha256
  // *Funcion de solo lectura*
  function proofFor(string memory document) public view returns (bytes32) {
    return sha256(abi.encode(document));
  }
}
