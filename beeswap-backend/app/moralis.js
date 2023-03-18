var express = require("express");
var router = express.Router();

const Moralis = require('moralis').default;

const { EvmChain } = require('@moralisweb3/common-evm-utils');

router.get("/", async function (req, res) {  

  res.setHeader("Access-Control-Allow-Origin", "http://127.0.0.1:5500");
  res.setHeader("Access-Control-Allow-Methods", "GET");

  const address = "0xd8da6bf26964af9d7eed9e03e53415d37aa96045";

  const chain = EvmChain.BSC;

  const response = await Moralis.EvmApi.transaction.getWalletTransactionsVerbose({
        address,
        chain,
  });
  
  // console.log(response.toJSON());

  res.send(JSON.stringify(response));

  // const webhook = req.body;

  // console.log(webhook);

  // return res.status(200).json();
});

//export this router to use in our index.js
module.exports = router;
