# Grafana MCP

The agent reads dashboards and queries. It does not create or edit them.

1. Start the stack from the parent directory: `./up.sh`
2. In Grafana (`admin` / `admin`), open Administration → Service accounts.
3. Create an account with role **Viewer** and add a token.
4. `cp env.example env` and paste the token. `env` is gitignored.
5. Point Cursor at `mcp.json.example`.

`mcp.json` runs `grafana/mcp-grafana` with `--disable-write` and `--network host`, so the process can open `http://127.0.0.1:3000` on this machine.
