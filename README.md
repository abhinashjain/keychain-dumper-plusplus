# keychain-dumper-plusplus
Improve existing keychain_dumper by adding the functionality to read certificates and keys from iOS keychain

**Introduction**\
Original keychain_dumper [1](https://github.com/abhinashjain/keychain-dumper-plusplus#Source) usually fails to retreive identity certs from the iOS keychain.
Commit in [2](https://github.com/abhinashjain/keychain-dumper-plusplus#Source) addresses this problem, but fails to compile the build and generate the proper binary.

This repo is a hack-ish attempt to address the compilation problem by modifying some of the headers in the code and flags, SDKs, compiler paths in the *Makefile*. 

**Build**\
######On Mac:######\
Change the *arch* type in *Makefile* for the target iOS device architecture.
and run the below command to get the keychaindumper++ executable.
`make` 

In case of any issue, try to change the SDK/gcc/clang executable path or open a ticket.

######On iOS:######\
Simply run the command:
`ldid -Sentitlements.xml keychaindumper++`

######For usage options:######\
`keychaindumper++ -h`

**Tested**\
keychaindumper++: For both 32 and 64-bit arch type.\
Device: iPad Mini 4 (64-bit device).\
iOS version: 9.3.3 (jailbroken).\
SDK version used for compilation: iPhoneOS11.4.sdk\
Crash: Might get few crashes but shouldn't affect the functionality.\
Result: Able to fetch certs and private keys from iOS keychain along with the already existing functionality of reading various types of passwords.\

**Source**:\
1. [Original keychain_dumper](https://github.com/ptoomey3/Keychain-Dumper/)\
2. [Original commit to fetch certs and keys functionality](https://github.com/rjoudrey/Keychain-Dumper/commit/4c558843e00516513c8cee7b47fe0605a883e180)\
3. [Older SDKs](https://github.com/nst/iOS-Runtime-Headers/releases)\
