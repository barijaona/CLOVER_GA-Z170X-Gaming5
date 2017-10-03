# EFI/CLOVER for Gigabyte Z170X-Gaming 5 based Customac

This is to document the software part of a Customac build, especially the CLOVER folder in the EFI System Partition of my SSD.

Philosophy of the build and hardware choice are described more extensively (in French) [in a series of articles on my blog](http://blog.barijaona.com/macintosh/Jirokaki/ "Jirōkaki on barijaona.com").

To sumarize the hardware :

- Motherboard : Gigabyte GA-Z170X-Gaming 5 (rev 1.0)
- CPU : Intel Skylake Core i5-6600K 3.5 - 3.9 GHz
- Graphics card : MSI GTX960 GAMING 2G
- Wifi/Bluetooth : built from a genuine Apple Airport card, which uses a BCM94360CD chipset.

Particularity of this configuration : I can use a vanilla macOS installation (High Sierra 10.13 latest production release) ! SIP is enabled like in a stock Mac.

I keep the Clover version relatively current, but do not systematically update, unless a new macOS version is released (going from 10.12.3 to 10.12.4 for instance).

### Points which require personalization

#### BIOS

This board is notoriously picky regarding memory, so you might have to configure the BIOS with a single memory stick at first. I currently use BIOS F20, which runs OK after forcing the board to stick to the memory speed of 2133 MHz during initial startup.

Most settings can be seen in this [photo album](https://www.flickr.com/photos/barijaona/albums/72157683707850861 "A Flickr photo album"). If you have a non K CPU, you will probably have to disable (at least during initial installation) VT-D.

#### USB

This motherboard has a lot of USB ports. More than macOS can natively handle. To have a reliable and easily upgradable machine, you must compromise and prevent the use of some of the physical ports, in order to respect a 15 ports limit inherent to macOS's controller.

Other approaches can be seen in [issue #9](https://github.com/barijaona/CLOVER_GA-Z170X-Gaming5/issues/9#issuecomment-305057990), but here is my recommandation for setting up USB.  
You will need to:

- download the [full archive of the GA\_Z170X\_G5\_Injector.kext](https://github.com/barijaona/barijaona.github.io/blob/master/macintosh/Jirokaki/GA-Z170X-Gaming5-USBinjector.zip),
- make your ports choice with the help of the included drawings, in order to respect the logical limit of 15 ports. It must be noted that physical USB3 ports use 2 logical ports: one for USB2 and one for USB3.
- once you have made your choice, edit the Info.plist file included inside the .kext and put the modified GA\_Z170X\_G5\_Injector.kext into the `kexts/Other` folder.

#### CPU

If you have another CPU model than the one I use, you will probably need to run  [ssdtPRGen.sh](https://github.com/Piker-Alpha/ssdtPRGen.sh) to generate your own SSDT-CPU.aml (and SSDT-CPU.dsl for your own documentation) in order to take full advantage of the processor.

#### iMessage, iTunes, AppStore…

Some personal details, especially SMBIOS SerialNumber, BoardSerialNumber and SmUUID from `config.plist`, are not published in this public repository. There are [good references on generating appropriate values](http://www.fitzweekly.com/2016/02/hackintosh-imessage-tutorial.html "FitzSimmons weekly"), but take care that Clover Configurator might mess with other settings.

### Additional notes

For increased legitibility, sources or .dsl of DSDT/SSDT patches (which are .aml files in the `ACPI/patched` folder) are available in the `patched-sources` folder.

### About license

This work is published for informational use only. Any component shown here retains its own licence.
