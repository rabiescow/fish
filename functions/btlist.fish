function btlist --description "Lists all active Bluetooth devices"
    echo (bluetoothctl devices | \
      sed 's/.*\([0-9A-F]+:[0-9A-F]+:[0-9A-F]+:[0-9A-F]+:[0-9A-F]+:[0-9A-F]+\) \(.*\)/\2/')
end
