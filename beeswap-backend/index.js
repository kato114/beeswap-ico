var express = require("express");
var app = express();
const Moralis = require('moralis').default;

var swap = require("./app/swap.js");
var history = require("./app/history.js");
var config = require("./app/config.js");
var moralis = require("./app/moralis.js");

app.use("/swap", swap);
app.use("/conf", config);
app.use("/history", history);
app.use("/moralis", moralis)

const MORALIS_API_KEY = 'OaRrbOfKUZ9sEth0hqMoTlPMC4iqCM6MDMKQFqMcYBKimh8neIA3VO0qI7fe57k8';
const startServer = async () => {
    await Moralis.start({
      apiKey: MORALIS_API_KEY,
    });
  };

  startServer();

app.listen(3000);
