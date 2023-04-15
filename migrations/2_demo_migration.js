const Migrations = artifacts.require("demo");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
