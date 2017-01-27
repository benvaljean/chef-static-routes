# chef-static-routes
Simple chef recipe to add static routes via attributes

### Example

```json
"static_routes": [
      {
        "dest": "5.1.1.0/24",
        "gw": "1.1.1.1",
        "device": "eth0"
      },
      {
        "dest": "5.2.2.0/24",
        "gw": "1.2.1.1",
        "device": "eth0"
      }
    ]
```
