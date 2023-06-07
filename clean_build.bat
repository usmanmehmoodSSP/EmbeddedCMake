@echo off
set TOOLCHAIN_FILE=C:\Users\u.mehmood\Desktop\EmbeddedCMake\cmake\arm_none_eabi_gcc.cmake

if exist build (
    echo Removing old build directory...
    rd /s /q build
)

cmake -GNinja -Bbuild -DARCH="-mcpu=cortex-m4 -mfloat-abi=hard" -DCMAKE_TOOLCHAIN_FILE=%TOOLCHAIN_FILE% -DCMAKE_BUILD_TYPE=Debug -DCMAKE_MAKE_PROGRAM=ninja .
ninja -C build