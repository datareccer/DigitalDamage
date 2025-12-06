const { contextBridge } = require("electron");

// Secure bridge for future tools
contextBridge.exposeInMainWorld("dd", {
  ping: () => "pong",
});
