# EFI/CLOVER for Gigabyte Z170X-Gaming 5 based Customac

This is to document the software part of a Customac build, especially the CLOVER folder in the EFI System Partition of my SSD.

Philosophy of the build and hardware choice are described more extensively (in French) [in a series of articles on my blog](http://blog.barijaona.com/macintosh/Jirokaki/ "Jirōkaki on barijaona.com").

To sumarize the hardware :

- Motherboard : Gigabyte GA-Z170X-Gaming 5 (rev 1.0)
- CPU : Intel Skylake Core i5-6600K 3.5 - 3.9 GHz
- Graphics card : MSI GTX960 GAMING 2G
- Wifi/Bluetooth : built from a genuine Apple Airport card, which uses a BCM94360CD chipset.

Particularity of this configuration : I can use a vanilla macOS installation (Sierra 10.12 latest production release) ! SIP is enabled like in a stock Mac.

I keep the Clover version relatively current, but do not systematically update, unless a new macOS version is released (going from 10.12.3 to 10.12.4 for instance.

Some personal details, especially SMBIOS SerialNumber, BoardSerialNumber and SmUUID from `config.plist`, are not published in this public repository. There are [good references on generating appropriate values](http://www.fitzweekly.com/2016/02/hackintosh-imessage-tutorial.html "FitzSimmons weekly"), but take care that Clover Configurator might mess with other settings.

For increased legitibility, sources or .dsl of DSDT/SSDT patches (which are .aml files in the `ACPI/patched` folder) are available in the `patched-sources` folder.

About license. This work is published for informational use only. Any component shown here retains its own licence.
