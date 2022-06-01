import express from 'express'
import _ from 'lodash'

console.log('Loading server..')

const app = express()

app.use(express.json())

// Simulating logged in user, would work with sessions as well
let user = {
    username: 'rick00',
    robot: false,
    bday: '1997.11.27'
}

// Exploitable endpoint
app.post('/process', (req, res) => {
    console.log('Data:', req.body )
    // Create a defaults object, useful for dealing with unset properties
    let defaults = {
        a: 0,
        b: 0,
        c: 0
    }

    // Exploit: Lodash merge in v4.17.4 is vulnerable to prototype pollution
    // Merges data from right hand object to left hand object, modifying it
    // Since we can override proto, we added admin=true to ALL objects
    _.merge( defaults, req.body )

    // Print admin from polluted prototype
    console.log('Global admin prototype value:', ({}).admin )

    // Add numbers, then return. Not part of the exploit, just simulating some functionality
    let {a,b,c} = defaults
    return res.send(`${a+b+c}`)
})

// Page only accessible for users with truthy admin property
app.get('/adminonly', (req, res) => {
    if (!user.admin) {
        console.log('User access rejected.')
        return res.sendStatus(403)
    }

    console.log('User access allowed.')
    return res.sendStatus(200)
})

// Start server
const port = 8080
app.listen(port, () => {
    console.log(`Server listening on port: ${port}`)
})