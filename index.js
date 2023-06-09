const lynx = require('lynx');

// instantiate a metrics client
//  Note: the metric hostname is hardcoded here
const be_host = process.env.METRICS_BACKEND_HOST
const be_port = process.env.METRICS_BACKEND_PORT
const metrics = new lynx(be_host, be_port);

// sleep for a given number of milliseconds
function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

async function main() {
  // send message to the metrics server
  metrics.timing('test.core.delay', Math.random() * 1000);

  // sleep for a random number of milliseconds to avoid flooding metrics server
  return sleep(3000);
}

// infinite loop
(async () => {
  console.log("🚀🚀🚀");
  while (true) { await main() }
})()
  .then(console.log, console.error);