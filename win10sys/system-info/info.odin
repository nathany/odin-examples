package main

import "core:fmt"
import "core:sys/windows"

main :: proc() {
	si: windows.SYSTEM_INFO
	windows.GetSystemInfo(&si)

	fmt.printfln("Number of Logical Processors: %d", si.dwNumberOfProcessors)
	fmt.printfln("Page size: %d Bytes", si.dwPageSize)
	fmt.printfln("Processor Mask: 0x%016X", si.dwActiveProcessorMask)
	fmt.printfln("Minimum process address: %016p", si.lpMinimumApplicationAddress)
	fmt.printfln("Maximum process address: %016p", si.lpMaximumApplicationAddress)
}
