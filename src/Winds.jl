module Winds

export main

using LibSerialPort, Blink, Interact, COBS

function getport(; baud = 9600)
    for port in get_port_list()
        sp = open(port, baud)
        txt = LibSerialPort.sp_get_port_usb_manufacturer(sp.ref)
        if occursin(r"arduino", txt)
            return sp
        end
    end
    error("no ports connected to an Arduino were detected...")
end

function main(; min::Int = 0, max::Int = 255)
    @assert min < max "minimum, $min, must be smaller than maximum, $max"
    @assert 0 ≤ min ≤ 255 "minimum must be between 0 and 255"
    @assert 0 ≤ max ≤ 255 "maximum must be between 0 and 255"
    serialport = getport()

    int = rangepicker(min:max, value = [min])
    on(int) do i
        encode(serialport, UInt8(i[]))
    end
    w = Window()
    body!(w, hbox("Intensity", int))
end

end # module
