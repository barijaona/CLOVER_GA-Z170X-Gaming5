/*
 *
 * Toleda's audio ssdt_hdmi-nvidia-PEG0
 * found at https://github.com/toleda/audio_hdmi_amd-nvidia/
 *
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 *
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLs5Jnqp.aml, Sat Oct  1 09:35:30 2016
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001F7 (503)
 *     Revision         0x01
 *     Checksum         0x91
 *     OEM ID           "toleda"
 *     OEM Table ID     "ami789n"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 1, "toleda", "ami789n", 0x00003000)
{
    External (_SB_.PCI0.PEG0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP._ADR, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0.PEG0)
    {
        Device (GFX0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_SUN, One)  // _SUN: Slot User Number
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (0x0F, \_SB.PCI0.PEG0.PEGP._ADR)
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

                Return (Package (0x0E)
                {
                    "@0,connector-type",
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00
                    },

                    "@1,connector-type",
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00
                    },

                    "@2,connector-type",
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00
                    },

                    "@3,connector-type",
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00
                    },

                    "@4,connector-type",
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00
                    },

                    "@5,connector-type",
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00
                    },

                    "hda-gfx",
                    Buffer (0x0A)
                    {
                        "onboard-2"
                    }
                })
            }
        }

        Device (HDAU)
        {
            Name (_ADR, One)  // _ADR: Address
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
                    "layout-id",
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00
                    },

                    "hda-gfx",
                    Buffer (0x0A)
                    {
                        "onboard-2"
                    }
                })
            }
        }
    }

    Store ("ssdt-ami-7/8/9series_nvidia_hdmi_audio_v3.0 github.com/toleda", Debug)
}

