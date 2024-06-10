const cds = require("@sap/eslint-plugin-cds");
const js = require("@eslint/js");
const globals = require("globals");

module.exports = [
  cds.configs.recommended,
  {
    plugins: {
      "@sap/cds": cds,
    },
    rules: {
      ...cds.configs.recommended.rules,
    },
    files: ["srv/*.cds", "db/schema.cds"],
  },
  {
    files: ["srv/*.js"],
    rules: {
      ...js.configs.recommended.rules,
    },
    languageOptions: {
      globals: {
        ...globals.node,
      },
    },
  },
];
