const cds = require("@sap/cds");

class ZooService extends cds.ApplicationService {
    async init () {
        const temp = 0;
        
        await super.init();
    };
}

module.exports = ZooService