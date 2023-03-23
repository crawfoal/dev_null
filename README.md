# DevNull

This is a really basic plug application that will accept any request, and
respond with the status code specified in the path. E.g.

```
curl -X PUT http://localhost:4000/200
```

will respond with an empty body and a status code of 200.

Currently only supports PUT requests, but would be very simple to support other
methods.

