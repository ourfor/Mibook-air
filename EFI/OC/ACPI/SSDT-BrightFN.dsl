// BrightKey for TP
// In config ACPI, _Q1C to XQ1C(TP-up)
// Find:     5F 51 31 34
// Replace:  58 51 31 34

// In config ACPI, _Q1D to XQ1D(TP-down)
// Find:     5F 51 31 35
// Replace:  58 51 31 35
//
DefinitionBlock("", "SSDT", 2, "ACDT", "BrightFN", 0)
{
    External(_SB.PCI0.LPCB.KBD0, DeviceObj)
    External(_SB.PCI0.LPCB.EC0, DeviceObj)
    External(_SB.PCI0.LPCB.EC0.XQ1C, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ1D, MethodObj)
    
    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q1C, 0, NotSerialized)//up
        {
            If (_OSI ("Darwin"))
            {
                Notify(\_SB.PCI0.LPCB.KBD0, 0x0406)
                Notify(\_SB.PCI0.LPCB.KBD0, 0x10)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ1C()
            }
        }

        Method (_Q1D, 0, NotSerialized)//down
        {
            If (_OSI ("Darwin"))
            {
                Notify(\_SB.PCI0.LPCB.KBD0, 0x0405)
                Notify(\_SB.PCI0.LPCB.KBD0, 0x20)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ1D()
            }
        }
    }
}
//EOF
