/*
 * NB: since truffle-hdwallet-provider 0.0.5 you must wrap HDWallet providers in a 
 * function when declaring them. Failure to do so will cause commands to hang. ex:
 * ```
 * mainnet: {
 *     provider: function() { 
 *       return new HDWalletProvider(mnemonic, 'https://mainnet.infura.io/<infura-key>') 
 *     },
 *     network_id: '1',
 *     gas: 4500000,
 *     gasPrice: 10000000000,
 *   },
 */

var HDWalletProvider = require("truffle-hdwallet-provider");
var infura_apikey = "8256b4895b7f4065af4a65d827e56ce5"; // Replace this with your own API key
var mnemonic = "shallow screen marble soldier dwarf afford blade negative cigar because venue rose"; // Replace with your own seed phrase from MetaMask

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
        host: "localhost",
        port: 7545,
        gas: 4600000, // Ignore it for the time being network_id: "5777"
        network_id: "5777" // Don't worry about this
    },
    ropsten: {
      // You can pass an optional account index as last param to below function.
      provider: new HDWalletProvider(mnemonic, "https://ropsten.infura.io/" + infura_apikey),
      network_id: 3,
      gas: 4600000
    }
}
};
