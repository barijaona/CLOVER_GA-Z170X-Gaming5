//
// SSDT-DeepIdle.dsl
//
// This SSDT adds IOPMDeepIdleSupported to IOPMRootDomain
// (found at IOService:/AppleACPIPlatformExpert/IOPMrootDomain).
//
// From https://pikeralpha.wordpress.com/2017/01/12/debugging-sleep-issues/
//

DefinitionBlock("", "SSDT", 1, "Pike", "DIDLE", 0)
{
    Scope (\_SB)
    {
        Method (LPS0, 0, NotSerialized)
        {
            Store ("Method \\_SB._LPS0 Called", Debug)
            Return (One)
        }
    }

    Scope (\_GPE)
    {
        Method (LXEN, 0, NotSerialized)
        {
            Store ("Method \\_GPE.LXEN Called", Debug)
            Return (One)
        }
    }

    Scope (\)
    {
        Name (SLTP, Zero)

        Method (_TTS, 1, NotSerialized) // _TTS: Transition To State
        {
            Store ("Method \\__TTS Called", Debug)
            Store (Arg0, SLTP)
        }
    }
}