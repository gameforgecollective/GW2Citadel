# arcDPS bridge shutdown patch

This is a compatibility-preserving patch for `knobin/arcdps_bridge` v1.0.4.

The observed crash was an access violation in `arcdps_bridge.dll` while Guild Wars 2 was exiting. The bridge log showed a client connecting while `PipeHandler` was closing. The v1.0.4 release routine stopped the server and immediately deleted it even though arcDPS could still finish an already-dispatched callback that uses the global server pointer.

The patch stops and joins the bridge threads but keeps the stopped server object alive until Windows unloads the DLL. This removes that late-callback use-after-free without changing the bridge protocol.

Patched DLL SHA-256:

`FEEF82565BCA5F0ED72B3CB7C997C9D3BF70F8522E1BA4A6450A9E3B55BC2BA4`

Source: https://github.com/knobin/arcdps_bridge/tree/v1.0.4
