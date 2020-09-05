import express, { Request, Response, NextFunction } from 'express'
import bodyparser from 'body-parser'

import 'reflect-metadata'

const app = express()
const port = 3000

app.use(bodyparser.json())

interface PostParams {
  id: string
}

app.get('/posts', (req, res) => {
  res.send('Posts')
})

app.get('/posts/:id', (req: Request<PostParams>, res) => {
  res.send(`Get a post by ${req.params.id}`)
})

app.put('/posts/:id', (req: Request<PostParams>, res) => {
  res.send(
    `Put post by ${req.params.id} with a body ${JSON.stringify(req.body) ?? ''}`
  )
})

app.post('/posts/:id', (req: Request<PostParams>, res) => {
  res.send(
    `Post a post by ${req.params.id} with a body ${
      JSON.stringify(req.body) ?? ''
    }`
  )
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
