module.exports = {
  // transform: {
  //   "^.+\\.(ts|tsx)$": "ts-jest/preprocessor"
  // },
  testPathIgnorePatterns: [
      "<rootDir>/node_modules/",
      "<rootDir>/dist/",
      "<rootDir>/coverage/",
      "<rootDir>/test_config/"
  ],
  // moduleFileExtensions: ["js", "ts", "tsx", "json"],
  // testMatch: ["**/*.test.ts", "**/*.test.tsx"],
  // snapshotSerializers: ["enzyme-to-json/serializer"],
  setupFiles: ["<rootDir>/test_config/jestSetup.ts"],
  collectCoverageFrom: [
      "src/**/*.{js,jsx}",
      "!index.js",
      "!src/**/*-spec.js"
  ]
};
