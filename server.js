const express = require('express')
const app = express()

app.get('*', (req, res) => res.send('Hi'))
app.get('/status', (req, res) => res.send('OK'))

app.listen(process.env.PORT || 3000)