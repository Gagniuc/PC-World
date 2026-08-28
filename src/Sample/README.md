# VB6 source sample - August 2005

This directory contains a **representative Visual Basic 6 source snapshot of the PC World CD interface from the August 2005 generation**. It is included here as a directly browsable source sample even though the repository already preserves the corresponding source trees inside the historical monthly directories.

The duplication is intentional. Most of the repository is organized according to the original production archive, where each month preserves its own working tree, resources and related material. That structure is historically useful, but it also means that the programming language and the actual implementation are not immediately obvious to someone arriving at the repository for the first time. Keeping one representative project directly under `src/sample` makes the code visible without requiring the reader to understand the historical directory layout first. It also gives GitHub direct access to the `.vbp`, `.frm`, `.bas`, `.cls` and `.ctl` files so that the repository can be recognized and indexed as a **Visual Basic 6 source-code project**, rather than appearing primarily as an archive of images, CD trees and binary resources.

This sample is therefore **not a separate edition, a reduced rewrite, or the canonical source tree**. It is a convenience copy selected from the preserved project material to expose the implementation clearly. The authoritative historical context remains in the monthly directories, where the source belongs together with the resources and production files of each corresponding PC World CD.

The project entry point is:

```text
CD.vbp
```

and the preserved project identifies the application as:

```text
Project name:       PC_World
Executable:         CD.exe
Version:            3.2.2
Language:           Microsoft Visual Basic 6.0
Startup form:       Intrare
Company metadata:   www.NovusOrdo.ro
Copyright:          Paul Gagniuc
```

The sample contains the main PC World interface together with a substantial part of the supporting implementation. Among the visible source files are the principal forms used by `CD.exe`, the startup and presentation forms, custom graphical controls, GIF decoding and rendering classes, HTML integration, file-copy and package-handling code, system-information routines, the scrolling neon display, Ping and TCP/IP scanning tools, and the integrated HTTP-server code. Files such as `Buton_3D.ctl`, `ucGIFViewer.ctl`, `cGIF.cls`, `cDIB.cls`, `Preia_HTML.cls`, `Mesagerie.frm`, `Sc1.frm`, `Sc2.frm`, `Scan3.frm`, `Scan4.frm` and `Server.bas` provide a compact cross-section of the techniques used throughout the complete project.

The `.frx` files are binary companion resources belonging to their respective VB6 forms and must remain beside the corresponding `.frm` files. The project also references legacy 32-bit components such as Microsoft Winsock, Microsoft Internet Transfer and the Internet Explorer WebBrowser control. These dependencies are part of the original architecture and are preserved because this directory is intended primarily as a readable historical source sample, not as a modernized rewrite.

Some files may carry modification dates from the **2026 restoration work** because the historical source was reopened and adjusted for use on current Windows systems. The sample nevertheless represents the architecture and implementation of the PC World interface developed during the original 2004–2005 production period, specifically the mature August 2005 generation represented elsewhere in this repository.

In short, `src/sample` exists so that a visitor, GitHub itself, or a source-code analysis tool can reach an immediately recognizable VB6 project in one location. The complete archive should still be consulted for the monthly variants, original resources, intermediate versions and production context.
