/*
 *
 * Toleda's audio ssdt_hdmi-hd530
 * found at https://github.com/toleda/audio_hdmi_100series
 *
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 *
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLfg4ZeK.aml, Sat May  6 21:34:24 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000180 (384)
 *     Revision         0x01
 *     Checksum         0x4F
 *     OEM ID           "toleda"
 *     OEM Table ID     "100s530"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 1, "toleda", "100s530", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GFX0._ADR, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.HECI._ADR, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0)
    {
        Name (GFX0._STA, Zero)  // _STA: Status
        Device (IGPU)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (Zero, \_SB.PCI0.GFX0._ADR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03
                    })
                }

                Return (Package (0x04)
                {
                    "AAPL,ig-platform-id",
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x12, 0x19
                     },

                    "hda-gfx",
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }
                })
            }
        }

        Name (HECI._STA, Zero)  // _STA: Status
        Device (IMEI)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (Zero, \_SB.PCI0.HECI._ADR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03
                    })
                }

                Return (Package (0x02)
                {
                    "device-id",
                    Buffer (0x04)
                    {
                         0x3A, 0xA1, 0x00, 0x00
                    }
                })
            }
        }
    }

    Store ("ssdt-ami_100_skl-hd530_v2.0 github.com/toleda", Debug)
}

