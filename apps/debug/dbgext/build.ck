/*++

Copyright (c) 2013 Minoca Corp.

    This file is licensed under the terms of the GNU General Public License
    version 3. Alternative licensing terms are available. Contact
    info@minocacorp.com for details. See the LICENSE file at the root of this
    project for complete licensing information.

Module Name:

    DbgExt

Abstract:

    This module implements the import library for kernel debugger
    extensions.

Author:

    Evan Green 8-May-2013

Environment:

    Debug

--*/

function build() {
    sources = [
        "extimp.c",
    ];

    lib = {
        "label": "dbgext",
        "inputs": sources,
    };

    build_lib = {
        "label": "build_dbgext",
        "output": "dbgext",
        "inputs": sources,
        "build": TRUE,
        "prefix": "build"
    };

    entries = static_library(lib);
    entries += static_library(build_lib);
    return entries;
}

return build();
