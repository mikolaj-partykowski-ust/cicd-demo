const cds = require("@sap/cds");

class ZooService extends cds.ApplicationService {
  async init() {
    const eslint = 0;
    console.log(eslint);

    await super.init();
  }
}

module.exports = ZooService;
