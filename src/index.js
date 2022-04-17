const child = require('child_process')
child.execSync('bash ./bash/say.sh', { encoding: 'utf-8', stdio: 'inherit' })

// child.execSync('bash ./bash/add.sh', { encoding: 'utf-8', stdio: 'inherit' })
