import { readFile } from 'node:fs/promises'

const WEBHOOK_URL = await readFile('./webhook.txt', 'utf8')

const filePath = process.argv[2] ?? './message.txt'
const message = (await readFile(filePath, 'utf8')).trim()

const body = {
    content: message,
}

const username = (await readFile('./username.txt', 'utf8')).trim()
if (username != '') {
    body.username = username
}

const avatar = (await readFile('./avatar.txt', 'utf8')).trim()
if (avatar != '') {
    body.avatar_url = avatar
}

// console.log('Sending JSON: ' + JSON.stringify(body))

const res = await fetch(WEBHOOK_URL, {
    method: 'post',
    headers: {
        'Content-Type': 'application/json'
    },
    body: JSON.stringify(body)
})

// console.log(`${res.status} ${await res.text()}`)