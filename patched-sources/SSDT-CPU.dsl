/*
 *
 * Generated through Pike R. Alpha's ssdtPRGen.sh
 * https://github.com/Piker-Alpha/ssdtPRGen.sh
 *
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140210-00 [Feb 10 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000036A (874)
 *     Revision         0x01
 *     Checksum         0x00
 *     OEM ID           "APPLE "
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00020400 (132096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20140210 (538182160)
 */

DefinitionBlock ("ssdt.aml", "SSDT", 1, "APPLE ", "CpuPm", 0x00020400)
{
    External (\_PR_.CPU0, DeviceObj)
    External (\_PR_.CPU1, DeviceObj)
    External (\_PR_.CPU2, DeviceObj)
    External (\_PR_.CPU3, DeviceObj)

    Scope (\_PR_.CPU0)
    {
        Method (_INI, 0, NotSerialized)
        {
            Store ("ssdtPRGen version.....: 20.4 / Mac OS X 10.12 (16A323)", Debug)
            Store ("custom mode...........: 0", Debug)
            Store ("host processor........: Intel(R) Core(TM) i5-6600K CPU @ 3.50GHz", Debug)
            Store ("target processor......: i5-6600K", Debug)
            Store ("number of processors..: 1", Debug)
            Store ("baseFrequency.........: 800", Debug)
            Store ("frequency.............: 3500", Debug)
            Store ("busFrequency..........: 100", Debug)
            Store ("logicalCPUs...........: 4", Debug)
            Store ("maximum TDP...........: 91", Debug)
            Store ("packageLength.........: 32", Debug)
            Store ("turboStates...........: 4", Debug)
            Store ("maxTurboFrequency.....: 3900", Debug)
        }

        Name (APLF, Zero)
        Name (APSN, 0x04)
        Name (APSS, Package (0x20)
        {
            /* High Frequency Modes (turbo) */
            Package (0x06) { 0x0F3C, 0x016378, 0x0A, 0x0A, 0x2700, 0x2700 },
            Package (0x06) { 0x0ED8, 0x016378, 0x0A, 0x0A, 0x2600, 0x2600 },
            Package (0x06) { 0x0E74, 0x016378, 0x0A, 0x0A, 0x2500, 0x2500 },
            Package (0x06) { 0x0E10, 0x016378, 0x0A, 0x0A, 0x2400, 0x2400 },
            /* High Frequency Modes (non-turbo) */
            Package (0x06) { 0x0DAC, 0x016378, 0x0A, 0x0A, 0x2300, 0x2300 },
            Package (0x06) { 0x0D48, 0x015566, 0x0A, 0x0A, 0x2200, 0x2200 },
            Package (0x06) { 0x0CE4, 0x014794, 0x0A, 0x0A, 0x2100, 0x2100 },
            Package (0x06) { 0x0C80, 0x013A03, 0x0A, 0x0A, 0x2000, 0x2000 },
            Package (0x06) { 0x0C1C, 0x012CB1, 0x0A, 0x0A, 0x1F00, 0x1F00 },
            Package (0x06) { 0x0BB8, 0x011F9E, 0x0A, 0x0A, 0x1E00, 0x1E00 },
            Package (0x06) { 0x0B54, 0x0112CA, 0x0A, 0x0A, 0x1D00, 0x1D00 },
            Package (0x06) { 0x0AF0, 0x010634, 0x0A, 0x0A, 0x1C00, 0x1C00 },
            Package (0x06) { 0x0A8C, 0x00F9DB, 0x0A, 0x0A, 0x1B00, 0x1B00 },
            Package (0x06) { 0x0A28, 0x00EDBE, 0x0A, 0x0A, 0x1A00, 0x1A00 },
            Package (0x06) { 0x09C4, 0x00E1DF, 0x0A, 0x0A, 0x1900, 0x1900 },
            Package (0x06) { 0x0960, 0x00D63B, 0x0A, 0x0A, 0x1800, 0x1800 },
            Package (0x06) { 0x08FC, 0x00CAD3, 0x0A, 0x0A, 0x1700, 0x1700 },
            Package (0x06) { 0x0898, 0x00BFA5, 0x0A, 0x0A, 0x1600, 0x1600 },
            Package (0x06) { 0x0834, 0x00B4B3, 0x0A, 0x0A, 0x1500, 0x1500 },
            Package (0x06) { 0x07D0, 0x00A9F9, 0x0A, 0x0A, 0x1400, 0x1400 },
            Package (0x06) { 0x076C, 0x009F7A, 0x0A, 0x0A, 0x1300, 0x1300 },
            Package (0x06) { 0x0708, 0x009533, 0x0A, 0x0A, 0x1200, 0x1200 },
            Package (0x06) { 0x06A4, 0x008B25, 0x0A, 0x0A, 0x1100, 0x1100 },
            Package (0x06) { 0x0640, 0x00814E, 0x0A, 0x0A, 0x1000, 0x1000 },
            Package (0x06) { 0x05DC, 0x0077AF, 0x0A, 0x0A, 0x0F00, 0x0F00 },
            Package (0x06) { 0x0578, 0x006E47, 0x0A, 0x0A, 0x0E00, 0x0E00 },
            Package (0x06) { 0x0514, 0x006516, 0x0A, 0x0A, 0x0D00, 0x0D00 },
            Package (0x06) { 0x04B0, 0x005C1A, 0x0A, 0x0A, 0x0C00, 0x0C00 },
            Package (0x06) { 0x044C, 0x005353, 0x0A, 0x0A, 0x0B00, 0x0B00 },
            Package (0x06) { 0x03E8, 0x004AC2, 0x0A, 0x0A, 0x0A00, 0x0A00 },
            Package (0x06) { 0x0384, 0x004264, 0x0A, 0x0A, 0x0900, 0x0900 },
            /* Low Frequency Mode */
            Package (0x06) { 0x0320, 0x003A3B, 0x0A, 0x0A, 0x0800, 0x0800 }
        })

        Method (ACST, 0, NotSerialized)
        {
            Store ("Method _PR_.CPU0.ACST Called", Debug)
            Store ("CPU0 C-States    : 253", Debug)

            /* Low Power Modes for CPU0 */
            Return (Package (0x06)
            {
                One,
                0x04,
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000000, // Address
                            0x01,               // Access Size
                            )
                    },
                    One,
                    Zero,
                    0x03E8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000010, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x03,
                    0xCD,
                    0x01F4
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000020, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x06,
                    0xF5,
                    0x015E
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000030, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x07,
                    0xF5,
                    0xC8
                }
            })
        }

        Method (_DSM, 4, NotSerialized)
        {
            Store ("Method _PR_.CPU0._DSM Called", Debug)

            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                    0x03
                })
            }

            Return (Package (0x02)
            {
                "plugin-type",
                One
            })
        }
    }

    Scope (\_PR_.CPU1)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _PR_.CPU1.APSS Called", Debug)

            Return (\_PR_.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Store ("Method _PR_.CPU1.ACST Called", Debug)
            Store ("CPU1 C-States    : 31", Debug)

            /* Low Power Modes for CPU1 */
            Return (Package (0x07)
            {
                One,
                0x05,
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000000, // Address
                            0x01,               // Access Size
                            )
                    },
                    One,
                    0x03E8,
                    0x03E8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000010, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x02,
                    0x94,
                    0x01F4
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000030, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x03,
                    0xC6,
                    0xC8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000040, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x06,
                    0xF5,
                    0x015E
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000050, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x07,
                    0xF5,
                    0xC8
                }
            })
        }
    }

    Scope (\_PR_.CPU2)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _PR_.CPU2.APSS Called", Debug)

            Return (\_PR_.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_PR_.CPU1.ACST ()) }
    }

    Scope (\_PR_.CPU3)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _PR_.CPU3.APSS Called", Debug)

            Return (\_PR_.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_PR_.CPU1.ACST ()) }
    }
}
