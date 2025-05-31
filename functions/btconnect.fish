function btconnect --description "connect device by MAC address"
    set -l hmac $argv[1]
    if test -z "$hmac"
        bluetoothctl select "8A:88:4B:E1:9C:4C"
        bluetoothctl scan on
        bluetoothctl pair $hmac
        bluetoothctl connect $hmac
    end
    return
end
