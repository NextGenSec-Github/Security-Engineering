# Rule Actions

- `alert` -> generate an alert on the current packet
- `block` -> block the current packet and all the subsequent packets in this flow
- `drop` -> drop the current packet
- `log` -> log the current packet
- `pass` -> mark the current packet as passed

### There are also what are known as "active responses" that perform some action in response to the packet being detected:

`react` -> send response to client and terminate session.
`reject` -> terminate session with TCP reset or ICMP unreachable
`rewrite` -> enables overwrite packet contents based on a "replace" option in the rules

The desired action for a given rule is the very first thing declared in a rule.

## #Examples

#### Alert: 
```bash
alert http (msg:"Generate an alert"; sid:1;)
```
#### Drop
```bash
drop http (msg:"Drop this packet"; sid:2;)
```

#### Block
```bash
block http (msg:"Block this packet and subsequent ones"; sid:3;)
```
