TOOLCHAIN_DIR = /usr/bin

SYSROOT = /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk
GCC_BIN = $(TOOLCHAIN_DIR)/gcc
MIN_VER = 9.0

ARCH_FLAGS = -arch arm64	#armv7

LDFLAGS	=\
	-framework Foundation\
	-framework Security\
	-lsqlite3

GCC_ARM = $(GCC_BIN) -v -miphoneos-version-min=$(MIN_VER) -Wimplicit -isysroot $(SYSROOT) $(ARCH_FLAGS)

default: main.o 
	$(GCC_ARM) $(LDFLAGS) main.o -o keychaindumper++

main.o: main.m
	$(GCC_ARM) -c main.m

clean:
	rm -f keychaindumper++ *.o 



# --------------------------------------------------- For 64-bit (arm64) and min_iOS_version 9.0---------------------------------------------------

# CWD = <path-to- keychain-dumper-plusplus -folder>

#/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -cc1 -triple arm64-apple-ios9.0.0 -Wdeprecated-objc-isa-usage -Werror=deprecated-objc-isa-usage -Werror=implicit-function-declaration -emit-obj -mrelax-all -disable-free -disable-llvm-verifier -discard-value-names -main-file-name main.m -mrelocation-model pic -pic-level 2 -mthread-model posix -mdisable-fp-elim -fno-strict-return -masm-verbose -munwind-tables -faligned-alloc-unavailable -target-cpu cyclone -target-feature +fp-armv8 -target-feature +neon -target-feature +crypto -target-feature +zcm -target-feature +zcz -target-abi darwinpcs -target-linker-version 351.8 -v -dwarf-column-info -debugger-tuning=lldb -coverage-notes-file $(CWD)/main.gcno -resource-dir /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/9.1.0 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk -c-isystem . -Wimplicit -fdebug-compilation-dir $(CWD) -ferror-limit 19 -fmessage-length 181 -stack-protector 1 -fallow-half-arguments-and-returns -fblocks -fobjc-runtime=ios-9.0.0 -fencode-extended-block-signature -fobjc-exceptions -fexceptions -fmax-type-align=16 -fdiagnostics-show-option -fcolor-diagnostics -o main.o -x objective-c main.m

#/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ld -demangle -lto_library /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libLTO.dylib -dynamic -arch arm64 -iphoneos_version_min 9.0.0 -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk -o keychaindumper++ -framework Foundation -framework Security -lsqlite3 main.o -lSystem /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/9.1.0/lib/darwin/libclang_rt.ios.a

# -------------------------------------------------------------------------------------------------------------------------------------------------


# --------------------------------------------------- For 32-bit (armv7) and min_iOS_version 9.0---------------------------------------------------

# CWD = <path-to- keychain-dumper-plusplus -folder>

#/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -cc1 -triple thumbv7-apple-ios9.0.0 -emit-obj -mrelax-all -disable-free -disable-llvm-verifier -discard-value-names -main-file-name main.m -mrelocation-model pic -pic-level 2 -mthread-model posix -mdisable-fp-elim -fno-strict-return -masm-verbose -faligned-alloc-unavailable -target-cpu generic -target-feature +soft-float-abi -target-abi apcs-gnu -mfloat-abi soft -target-linker-version 351.8 -v -dwarf-column-info -debugger-tuning=lldb -coverage-notes-file $(CWD)/main.gcno -resource-dir /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/9.1.0 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk -c-isystem . -Wimplicit -fdebug-compilation-dir $(CWD) -ferror-limit 19 -fmessage-length 181 -stack-protector 1 -fallow-half-arguments-and-returns -fblocks -fobjc-runtime=ios-9.0.0 -fencode-extended-block-signature -fobjc-exceptions -fexceptions -fsjlj-exceptions -fmax-type-align=16 -fdiagnostics-show-option -fcolor-diagnostics -o main.o -x objective-c main.m

#/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ld -demangle -lto_library /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libLTO.dylib -dynamic -arch armv7 -iphoneos_version_min 9.0.0 -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk -o keychaindumper++ -framework Foundation -framework Security -lsqlite3 main.o -lSystem /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/9.1.0/lib/darwin/libclang_rt.ios.a

# -------------------------------------------------------------------------------------------------------------------------------------------------



