# Explorer

Blockchain Explorer for [Hyperledger Besu](https://besu.hyperledger.org).
![Dashboard](./image/dashboard.png "Dashboard")

## Deployment instructions

Clone repository

```shell
git clone git@github.com:web3kt/explorer.git
```

or

```shell
git clone https://github.com/web3kt/explorer.git
```

### External RPC

```shell
RPC_ENDPOINT=http://<rpc_endpoint> docker compose up
```

### Mainnet

```shell
cd mainnet
DIRECTORY=/data ./run.sh
```