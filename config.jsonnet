local SERVER_ADDR = "10.5.131.142";
local IP = "10.5.88.133";

{
    "client.json": {
        "node_name": "consul-client",
        "ui_config": {
            "enabled": true
        },
        "data_dir": "/consul/data",
        "advertise_addr": IP,
        "bind_addr": "0.0.0.0",
        "addresses": {
            "http": "0.0.0.0"
        },
        "retry_join": [SERVER_ADDR]
    },
    "node-exporter.json": {
        "Service": {
            "Address": IP,
            "ID": "Controller1_NodeExporter",
            "Name": "node-exporter",
            "Port": 9100,
            "Tags": [
                "_service=node-exporter",
                "_hostname=controller1",
                "_environment=prod",
                "_instance=namlacontroller1"
            ]
        }
    }
}