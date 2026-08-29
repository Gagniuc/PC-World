# Compiled PC World CD Generator

This directory contains the compiled distribution of the historical **PC World CD Maker**, the Visual Basic 6 application used to assemble the monthly PC World Romania companion CD structure. The main executable is:

```text
Set.exe
```

`Set.exe` is the compiled counterpart of the `GenerareMatrita` Visual Basic 6 source project preserved elsewhere in this repository. The source directories document how the generator was developed, while this directory preserves the form in which the program could actually be executed during the production workflow.

The generator was created to automate preparation of a new PC World CD edition. It accepted the material selected for a particular month and generated the standardized directory hierarchy expected by the PC World runtime. Program descriptions, software packages, captures, HTML pages, graphics, sounds, drivers and configuration choices were assembled into a new `Matrita` directory that could then be tested and used as the master for CD production.

A central part of this compiled distribution is the accompanying:

```text
Geneza\
```

directory. `Geneza` is the reusable base template from which the generator constructs a monthly CD master. It contains the runtime application, HTML pages, configuration files, graphical resources, sounds, fonts and other material that remains common between editions. During generation, this base material is combined with the content selected for the current issue.

The relationship is therefore:

```text
Set.exe
   |
   v
Generare Matrita
   |
   +---- reads and copies reusable material from Geneza
   |
   +---- adds the selected monthly programs and resources
   |
   +---- generates configuration and HTML content
   |
   v
Matrita
   |
   v
complete monthly PC World CD master
```

The `Geneza` directory preserved here includes the historical `CD.exe` runtime, `AUTORUN.INF`, the PC World icon, the local HTML pages used by the interface, `biohazard.zulu` and `biohazard.gama`, interface graphics, wallpaper, sound effects, spoken feedback and the fonts and runtime components required by the original application. In other words, this directory preserves both the executable CD generator and the reusable material from which it produced a finished monthly disc.

The additional DLL and OCX files beside `Set.exe` belong to the original 32 bit Visual Basic 6 execution environment. Components such as the VB6 runtime and legacy Microsoft controls were normal dependencies for applications of this period. They are retained here to document the original binary distribution and to make historical reconstruction easier.

This directory should be understood as a **binary preservation snapshot**, not as the primary source tree. The readable Visual Basic 6 implementation of the generator is preserved separately in the repository and should be used when studying how the application works. This compiled copy is included to preserve the executable form of the production tool and the environment that accompanied it.

On modern 64 bit Windows systems, old VB6 runtime components and OCX controls should be handled carefully. The presence of historical DLL and OCX files in this archive does not imply that they should be copied over current Windows system files or registered indiscriminately. A controlled 32 bit compatibility environment or virtual machine is preferable when reproducing the original setup.

The generator belongs directly to the one year PC World production workflow preserved by this repository. `Set.exe` created the CD master, while the generated copy of `CD.exe` became the application ultimately executed by the magazine reader. Preserving both sides makes it possible to study the complete process, from monthly content assembly to the finished interactive companion CD.
