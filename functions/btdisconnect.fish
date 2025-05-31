function btdisconnect --description "connect device by MAC address"
    set -l hmac $argv[1]
    if test -z "$hmac" then
        bluetoothctl disconnect $hmac
    else return
    end
end
