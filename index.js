var minimist = require('minimist')


var argv = minimist(process.argv.slice(2))

if (argv.h) {
  console.log('hello')
}
