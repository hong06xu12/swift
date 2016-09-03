// RUN: %empty-directory(%t)

// RUN: mkdir -p %t/linker
// RUN: %target-build-swift -emit-module -c %S/library.swift -o %t/linker/library.o
// RUN: %target-build-swift -emit-library -c %S/library.swift -o %t/linker/library.o
// RUN: %target-build-swift %S/main.swift %t/linker/library.o -I %t/linker/ -L %t/linker/ -o %t/linker/main

// REQUIRES: executable_test

import library

extension NuclearMeltdown : Error {}

// Dummy statement
_ = ()
