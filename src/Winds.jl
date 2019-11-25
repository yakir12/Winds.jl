module Winds

export main

using LibSerialPort, Blink, Interact, COBS

function main(; min::Int = 0, max::Int = 255, levels = min:max, baud::Int = 9600)
    @assert min < max "minimum, $min, must be smaller than maximum, $max"
    @assert 0 ≤ min ≤ 255 "minimum must be between 0 and 255"
    @assert 0 ≤ max ≤ 255 "maximum must be between 0 and 255"

    ports = get_port_list()
    if isempty(ports)
        error("no ports were detected...")
    end
    dd = dropdown(ports)
    ok = button("OK")
    w = Window()
    body!(w, hbox("Port", dd, ok))
    on(ok) do _
        serialport = open(dd[], baud)
        int = rangepicker(levels, value = [minimum(levels)])
        on(int) do i
            encode(serialport, UInt8(i[]))
        end
        body!(w, hbox("Intensity", int))
    end
end

end # module
