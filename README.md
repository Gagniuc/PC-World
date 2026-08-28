# PC World Romania CD Interface Archive (2004-2005)

**Complete source-code archive, monthly production trees, graphics, bootstrap programs, and the CD-template generator used for the PC World Romania companion CDs I produced from October 2004 to September 2005.** This repository preserves the development history of **16 PC World CD-ROMs produced during a continuous one-year period**, together with the Visual Basic 6 source code of the interfaces and the software I wrote to generate the monthly CD structure. The repository also preserves intermediate versions, alternative builds, historical assets, and the 2026 Windows 11 compatibility restoration.

> **Historical archive:** this repository intentionally preserves multiple generations of the project. Some folders contain original 2004–2005 sources, others contain later working copies or the 2026 English/Windows 11 restoration. They should not be assumed to represent one perfectly synchronized release tree.

The image below was created with ChatGPT as a visual presentation of the PC World companion CD collection covered by this archive. Each disc represents an edition for which the software interface and CD master structure were produced. The original scan of all 16 physical CDs, made with my printer's scanner, is preserved in the repository under the img directory. It provides the primary visual record of the actual discs, including their original artwork, labels, issue dates and CD variants.

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/ban/set%20(V).png" alt="PC World | CDs">

The CD interface operated as a self-contained software catalog and launcher. When the disc was inserted, the autorun sequence started the PC World application, which loaded the content prepared for that particular monthly edition. Programs were organized into categories such as Utilities, Multimedia, Games, Internet, Antivirus and Permanent software. Selecting an entry displayed its name, description and associated graphic, while the available controls were activated according to the files present on the CD. From the same interface, the user could install the program, run it directly when a portable executable was provided, read additional information, or copy the package to the local computer. The interface therefore acted as the operational front end for the complete contents of each PC World companion CD. Below is an example of the PC World Romania CD interface from June 2005. It was one of the monthly interfaces I designed and programmed in Visual Basic 6.0 for the magazine's companion CDs. The application provided access to software categories, magazine content, help and information sections, and handled the installation, execution, description and presentation of the programs distributed on the disc.


<div align="center">
    <a href="https://github.com/Gagniuc/PC-World"><kbd><img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/macheta.png" alt="PC World | CDs"></kbd></a>
</div>

<hr>

Among the other interface elements was a scrolling LED message display. The message was generated dynamically from the current PC World edition and the computer's system date. The program determined whether the CD corresponded to the latest issue and, if not, reported how many newer monthly issues should already have appeared. The text was rendered as a continuously scrolling dot-matrix display in Visual Basic 6.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jul_2005/ezgif-6fa3ae7da83254c8.gif" alt="PC World">

</div>

<br>
The scrolling effect was generated programmatically. The message was first rendered as ordinary text into an off-screen bitmap, then sampled pixel by pixel. Pixels belonging to the letters were converted into illuminated cells, while background pixels were represented by unlit cells. The resulting matrix was shifted horizontally at regular timer intervals, creating the continuous LED-style movement. As the interface evolved from one monthly edition to the next, additional functionality was progressively integrated into the same application. Later versions included a custom browser, built-in network utilities, host and IP resolution, ping and response-time tools, network and port scanning, and an integrated HTTP web server. The server could expose files directly from the CD over the local network, allowing another computer to browse and retrieve the disc contents through a web browser. If the host computer had a publicly reachable IP address and the necessary network configuration, the same mechanism could also make the CD contents accessible over the Internet.

---

## Historical background

The project started almost by accident. In 2004 I went to **ICI** to register the domain `novusordo.ro`. At that time Romanian `.ro` domains were commonly sold under a one-time/lifetime registration model. On the same floor, close to the office where domain payments were handled, there was also a **PC World Romania** office. On my way out I met **Madalin Lacraru**, who was leaving the PC World office. Out of curiosity I asked whether the magazine might be interested in distributing **Delta Memory Force V2.0**, one of my software projects. He told me that, in principle, this could be possible. I then offered something else: I could build the complete software interface for the PC World companion CDs, free of charge, partly to make the proposed Delta Memory Force distribution more attractive to them. A few days later Madalin called and asked whether I still wanted to do it. The first interface was a test. I created the interface for the **October 2004** CD, after which Madalin and the PC World director approved the result. That test became the first published CD produced with my interface. What initially looked like a single interface quickly became a complete monthly production system. For exactly one year I designed and maintained the launcher, interface, graphics, content structure and CD assembly process. I eventually also wrote a dedicated **CD template generator** so that a new edition could theoretically be assembled without manually rebuilding the whole structure. In practice, Madalin usually preferred to come to me each month and take the finished CD image/tree rather than operate the generator himself. The generator was straightforward for me because I had written it, but it still represented a fairly specialized production workflow. I did all of this without payment. At that age I was more interested in the fact that something I had written would be duplicated and distributed in tens of thousands of copies than in treating the work as a commercial software contract, even though I was very short of money at the time. By the autumn of 2005 I had started working at the **Romanian Ministry of Agriculture** and no longer had enough time to continue the monthly PC World production cycle. My last work in this sequence belongs to the **September 2005** generation. The result of that year is what this repository preserves.

---

## What is preserved here

The repository preserves the PC World CD project at several levels: the source code of the applications themselves, the monthly production material, the reusable CD-generation system, and the assets required to reproduce the original interface and directory structure. It therefore documents both the software seen by the end user and the internal workflow used to prepare each monthly release. The preserved material includes:

- the Visual Basic 6 source code of the PC World CD interface;
- several monthly interface variants from October 2004 to September 2005;
- source snapshots of auxiliary programs such as `Start.exe` and `Control.exe`;
- the original Romanian Windows XP-era generator/template;
- the later English/Windows 11 restoration;
- the monthly CD directory structures;
- the `Geneza` base template used by the generator;
- graphics, GIF animations, wallpapers, cursors, icons and skins;
- WAV files, voice prompts and other interface sounds;
- HTML pages used inside the application;
- custom configuration files generated for each edition;
- installer/package directories for the software presented on a particular CD;
- legacy Visual Basic runtime and ActiveX dependencies preserved with historical builds;
- screenshots and other restoration material.

There are many duplicated or slightly different source trees because this was a real production archive rather than a later cleaned-room project. A monthly build could contain small changes that were never merged back into a single canonical source directory. In 2004, GitHub did not yet exist, and modern distributed version-control workflows were not part of everyday software development. For a one-person project of this scale, development was still something of a "Wild West" in organizational terms: working copies, backups, monthly snapshots and manually duplicated directories often served the role that branches, commits and release tags would provide today.

---

## Time span

The preserved monthly sequence runs from: **October 2004 → September 2005**. The repository organizes this period as twelve monthly editions:

| Index | Edition |
|---:|---|
| 1 | October 2004 |
| 2 | November 2004 |
| 3 | December 2004 |
| 4 | January 2005 |
| 5 | February 2005 |
| 6 | March 2005 |
| 7 | April 2005 |
| 8 | May 2005 |
| 9 | June 2005 |
| 10 | July 2005 |
| 11 | August 2005 |
| 12 | September 2005 |

Across those twelve monthly editions, the production archive represents **16 physical PC World companion CDs**.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Aug_2005/Screenshot%202026-08-26%20052744.png" alt="PC World">

<hr>

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jul_2005/Screenshot%202026-08-26%20052210.png" alt="PC World">

<hr>

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jun_2005/CD2/Screenshot%202026-08-26%20045601.png" alt="PC World">

<hr>

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jun_2005/CD1/Screenshot%202026-08-26%20031653.png" alt="PC World">

<hr>

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20025915.png" alt="PC World">

<hr>

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Apr_2005/Screenshot%202026-08-26%20025201.png" alt="PC World">

<hr>

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mar_2005/bandicam%202026-08-27%2002-48-35-624.jpg" alt="PC World">

<hr>

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Feb_2005/Screenshot%202026-08-26%20024137.png" alt="PC World">

<hr>

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jan_2005/Screenshot%202026-08-26%20023749.png" alt="PC World">

<hr>

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Dec_2004/Screenshot%202026-08-26%20020055.png" alt="PC World">

<hr>

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Nov_2004/Screenshot%202026-08-26%20011409.png" alt="PC World">

<hr>

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Oct_2004/ezgif-37e9f571da6a9b64.gif" alt="PC World">

</div>

---

# Technical overview

In modern terminology, the system was a combination of:

**content-management tool + build system + multimedia launcher + software catalog + installer front end + local HTML renderer + utility shell**

implemented primarily in **Microsoft Visual Basic 6.0**.

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/vb%20(I).png">

The project had two principal layers:

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/schema%20(VII).png" alt="PC World">


The historical application itself calls the CD assembly operation a **"compilation"**. Technically, the generator does not recompile the Visual Basic program every month. It performs a content/build step: it creates the directory hierarchy, generates configuration and HTML files, copies graphics and program packages, and places the already compiled runtime executables into the final `Matrita` tree.

---

## 1. The main PC World application - `CD.exe`



<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20025905.png" />

</div>


<hr>


<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jun_2005/CD1/ezgif-1cb34aa39924a704.gif" alt="PC World">

</div>

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jun_2005/CD1/ezgif-190210b98f2adce4.gif" alt="PC World">

</div>

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Aug_2005/Screenshot%202026-08-26%20052827.png" alt="PC World">

</div>

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jul_2005/captura%20(I).png" alt="PC World">

</div>

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jun_2005/CD1/bandicam%202026-08-26%2003-20-27-017.jpg" alt="PC World">

</div>

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Nov_2004/Screenshot%202026-08-26%20012020.png" alt="PC World">

</div>


One preserved August 2005 project identifies the main program as:

```text
Project name:        PC_World
Executable:          CD.exe
Version:             3.2.2
Language:            Visual Basic 6.0
Startup form:        Intrare
Company metadata:    www.NovusOrdo.ro
Copyright metadata:  Paul Gagniuc
```

The main application is a custom-skinned desktop shell rather than a conventional Windows form. Its interface contains the main software categories:

```text
UT  = Utilitare
MM  = Multimedia
JC  = Jocuri
IN  = Internet
AV  = Antivirus
PR  = Permanente
```

The source allocates indexed program slots from `0` to `18`. Historical comments refer to an 18-program-per-section limit, while the arrays themselves contain 19 indexes; this is one of several small inconsistencies preserved exactly as they existed in the working sources.

### Runtime behavior

For each software entry, the interface can dynamically determine which operations are available:

- **Install** — launches the program's `setup.exe`;
- **Run** — launches a directly runnable `Aplicatie.exe`, if present;
- **Copy** — copies the package to a location selected by the user;
- **Read** — displays an optional `Citeste_ma.txt`;
- displays the program description and associated capture;
- calculates and displays the package size;
- disables controls for resources that do not exist.

A typical generated program path is:

```text
PC_World\
└── aferent\
    └── Kit\
        └── UT\
            └── 0\
                ├── Citeste_ma.txt
                ├── Kit\
                │   └── Kit.zip
                ├── 0_Instalare\
                │   └── setup.exe
                └── 0_Rulare\
                    └── Aplicatie.exe
```

Equivalent structures are generated for `MM`, `JC`, `IN`, `AV`, and `PR`. The application also creates/uses `C:\PC_World` as a local working/copy destination.

---

## 2. A custom data format - `biohazard.zulu`

The monthly menus are not hard-coded into a separately compiled executable. Instead, the generator writes a small custom text database named:

```text
aferent\biohazard.zulu
```

Despite the intentionally playful filename, the preserved implementation is essentially a tag-delimited manifest. Its structure includes blocks such as:

```text
[MENIURI]

[UTILITARE]
...
[UT-STOP]

[MULTIMEDIA]
...
[MM-STOP]

[JOCURI]
...
[JC-STOP]

[INTERNET]
...
[IN-STOP]

[ANTIVIRUS]
...
[AV-STOP]

[PERMANENTE]
...
[PR-STOP]

[MENIURI-STOP]

[Rupere-de-nori]

[UTILITARE-EXPLICATII]
[0]Program description[STOP]
...

[Rupere-de-nori-STOP]
```

At startup, `CD.exe` reads the entire file in binary mode and then parses it with `InStr`, `Mid`, `Replace`, and the section delimiters above. This allowed the same compiled `CD.exe` engine to be reused from one month to another while changing the software list and descriptions through generated data. The generator also produces:

```text
biohazard.gama
```

from the `Activat()` feature array. It stores disabled/selected feature indexes as compact metadata and is preserved as part of the generated template system. One practical consequence of this home-grown format is visible in the generator validation code: characters such as `[`, `]`, `'`, `"`, `#`, and `|` are rejected in certain text fields because they could collide with the internal delimiters.

---

## 3. Hybrid native/HTML interface

The project mixes native VB6 controls with local HTML. The main application embeds the Microsoft WebBrowser/Internet Explorer COM engine and loads local files such as:

```text
aferent\Intrare.htm
aferent\Ajutor.htm
aferent\Internet.htm
aferent\Drivere.htm
aferent\Revista.htm
```

This was useful because substantial presentation content could be changed every month without recompiling the core executable. A class named `Preia_HTML.cls` / `Extrage_HTM` binds HTML DOM elements to Visual Basic event handlers. In preserved code, elements with IDs such as `Paul1`, `Paul2`, etc. are obtained from the browser document and their click events are redirected back into VB6 functions. So the application is not simply "a VB6 form containing web pages." It is a hybrid interface in which HTML is used as a presentation layer and VB6 remains the application/control layer.

---

## 4. Custom graphics engine and controls

The interface contains a surprisingly large amount of graphics code for a magazine CD launcher. Important components include:

```text
Buton_3D.ctl       custom graphical button control
ucGIFViewer.ctl    custom GIF viewer
cGIF.cls           GIF parser/renderer
cDIB.cls           DIB bitmap abstraction
mGIFLZWDec.bas     GIF LZW decoder
mGIFLZWEnc.bas     GIF LZW encoder
PNG.bas            image-related helper code
Transparenta.bas   transparency/visual effects
```

The GIF code supports frame loading, palettes, transparent colors, delays and animated playback. The underlying DIB implementation calls Win32 GDI functions such as `CreateDIBSection`, `BitBlt`, `StretchBlt`, `SetDIBColorTable`, and `GetDIBColorTable`. The custom button control contains its own hover/pressed rendering, transparency, bevel effects, XP-style rendering, optional sound and picture states. The result is the characteristic PC World "hardware console" interface visible in the archived screenshots: metallic panels, custom buttons, rotary/switch-like controls, a circular capture monitor, animated graphics, an LED-style status display and a fully skinned window with no standard Windows chrome.

---


## The scrolling neon information display

One of the distinctive visual elements of the PC World interface is the red **neon/LED-style scrolling information panel** displayed above the main application. This is not a static image or a conventional scrolling Label control. The effect is rendered programmatically by the application. The implementation is contained primarily in `Mesagerie.frm`, where the `DrawNeon()` routine converts ordinary rendered text into a pixel-based display using separate graphical states for illuminated and non-illuminated cells. The resulting matrix is then shifted horizontally to produce the scrolling electronic-display effect. Conceptually, the rendering pipeline is:

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jul_2005/ezgif-6fa3ae7da83254c8.gif" alt="PC World">

</div>

```text
text message
     |
     v
temporary text bitmap
     |
     v
sample individual pixels
     |
     +---- active pixel ----> illuminated cell image
     |
     +---- empty pixel -----> dark cell image
     |
     v
LED/neon matrix
     |
     v
scrolling display
```

The text shown by the panel is generated dynamically. Among other information, the original code can display the:

- computer name;
- current Windows user account;
- local IP address;
- current date;
- status/information concerning the current PC World edition;
- location of the emergency HTML backup interface.

The system-information text is assembled by `GetSysInfo()` and then passed to the neon renderer. This small component illustrates the general design philosophy of the project: even apparently decorative elements of the interface were often implemented as functional software components rather than pre-rendered graphics.

---



## 5. Program captures and presentation

For each program, the generator can copy two GIF presentation images into the category tree:

```text
aferent\<CATEGORY>\<index>.gif
aferent\<CATEGORY>\img\<index>.gif
```

The main interface loads these images dynamically when a program is selected.

The monthly CD therefore separates:

- program title;
- program description;
- screenshot/capture;
- installer;
- run-only executable;
- optional ZIP package;
- optional text/readme.

This is essentially a small content database represented by files and directory conventions.

---

## 6. The CD Maker / "Generator Matrita"

The generator is one of the most important parts of this repository.


<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/intro.png">

</div>



A preserved project identifies it as:

```text
Project name:       GenerareMatrita
Window title:       Generare Matrita
Executable:         Set.exe
Historical path:    E:\MADALIN\Generator_Matrita
Language:           Visual Basic 6.0
```


<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/matrita.png">

</div>

The historical development path is itself a useful artifact: the project was explicitly maintained as a generator intended for the PC World production workflow. The generator accepts the material for a monthly CD and creates a directory named `Matrita`.

### Its build process includes

1. validating required fields and enabled sections;
2. building the menu lists and description lists;
3. generating `biohazard.zulu`;
4. generating feature metadata in `biohazard.gama`;
5. generating monthly HTML such as Intro, Help, Magazine and Drivers pages;
6. creating the complete `PC_World\aferent` directory hierarchy;
7. creating category trees for `UT`, `MM`, `JC`, `IN`, `AV`, and `PR`;
8. creating indexed package directories;
9. copying screenshots/captures;
10. copying installers and optional ZIP packages;
11. writing `Citeste_ma.txt` files;
12. copying driver packages;
13. copying the selected background/advertising graphics;
14. copying WAV files and optional monthly background music;
15. copying the PC World wallpaper;
16. copying the optional magazine archive spreadsheet (`arhiva.xls`);
17. copying VB6/runtime dependencies and fonts;
18. copying the application executable;
19. writing/copying `AUTORUN.INF`.

The resulting directory tree was then suitable for the final CD production/burning stage. The generator also includes preview forms, capture forms, folder browsing, graphics handling, HTML generation, GIF support and a custom interface button editor. This was the component I created so that the monthly edition could, in principle, be assembled by filling in the content rather than manually reproducing the entire CD structure every time.

---

## 7. The `Geneza` base template

The generator keeps reusable material under a directory named:

```text
Geneza\
```

"Geneza" is effectively the source template from which a monthly `Matrita` is created. Preserved template contents include:

```text
Geneza\
├── CD.exe
├── AUTORUN.INF
├── PC.ico
├── Ajutor.htm
├── Drivere.htm
├── Internet.htm
├── Intrare.htm
├── Revista.htm
├── biohazard.gama
├── biohazard.zulu
├── IMG\
├── Negativ\
│   └── voce\
└── dep\
```

The `dep` directory contains runtime dependencies and the two fonts used by the interface. The name distinction is therefore useful:

```text
Geneza  = reusable source/template material
Matrita = generated monthly CD structure
```

---

## 8. Startup animation - `Start.exe`

The project also contains source snapshots for `Start.exe`. The program is a borderless VB6 window that uses the Windows Multimedia API:

```text
mciSendString()
```

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/animatie.gif" alt="PC World">

</div>


to play the intro AVI as an embedded child video. The preserved 2004 and 2005 variants show the intro for approximately **6 seconds** and **4.5 seconds**, respectively, and then launch:

```text
CD.exe
```

The source also converts the AVI path to an old-style DOS short filename through `GetShortPathName`, which avoided path/space problems common in multimedia code of that period. The August 2005 `AUTORUN.INF` preserved in the archive contains:

```ini
[AUTORUN]
OPEN=PC_World\Start.exe
Icon=PC_World\aferent\PC.ico
```

Thus the user experience was designed to begin with the animated intro before entering the main interface.

---

## 9. `Control.exe` - watchdog and fallback

`Control.exe` is a small hidden helper application.

Its source is only a few dozen lines long, but its purpose is interesting: it implements a primitive watchdog/fallback mechanism. It waits roughly **22 seconds** and examines:

```text
C:\PC_World\control.evolutie
```

The PC World application uses this file as a tiny state channel:

```text
0 = startup/loading stage
1 = main application reached an operational state
2 = application exited
```

If the expected success state is not detected, `Control.exe` opens:

```text
aferent\BackUp.htm
```

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mar_2005/Screenshot%202026-08-27%20024641.png" alt="PC World">

</div>

as a fallback. The exact bootstrap relationship between `Start.exe` and `Control.exe` changed between archived snapshots, and not every historical source folder is synchronized with every final CD binary. That is why the repository preserves the variants instead of pretending there was a single immutable bootstrap implementation.

---

## 10. Audio and voice feedback

The interface includes a substantial set of WAV files, including interaction sounds and spoken feedback. Examples preserved in the template include:

```text
Buton.wav
Negativ.wav
Revista.wav
ScurtCircuit.wav
S_fundal.wav

voce\
├── apasa.wav
├── citeste.wav
├── copiaza_in.wav
├── copiere.wav
├── instalare.wav
├── rulare.wav
└── ...
```

The application can enable/disable interface sound, play a looping monthly background track and trigger voice feedback for operations such as installation, copying, reading and running software. Some of the audio control is routed through tiny local HTML files loaded into hidden browser controls, another example of the hybrid VB6/HTML architecture.

---

## 11. Built-in network tools

The PC World interface was not merely a graphical menu used to launch installers. Over time it evolved into a **self-contained Windows utility suite**, providing several tools that could be used directly from the CD interface. Among the functionality preserved in the source code are:



<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-02%20010912.png" alt="PC World">

</div>


<hr>


<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20030326.png" alt="PC World">

</div>

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20030511.png" alt="PC World">

</div>

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20030612.png" alt="PC World">

</div>

<hr>


<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20030424.png" alt="PC World">

</div>

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20030646.png" alt="PC World">

</div>


<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20031150.png" alt="PC World">

</div>


- **Ping / response-time testing** for remote hosts;
- **IP and local-network scanning**;
- **TCP port scanning**;
- **service identification** for known network ports;
- **hostname and IP-address resolution**;
- several Winsock-based network diagnostics;
- an integrated **HTTP server**;
- the ability to expose and browse CD content over a local network.

One of the more unusual components was the built-in **Inter-Server**, a small HTTP server implemented directly in Visual Basic 6 using Winsock. It could listen on a configurable TCP port, process incoming HTTP requests, generate response headers, display directories and serve files from the local machine/CD. This meant that the contents of the PC World disc could effectively be made available to another computer on the same network without installing a separate web-server package. The interface therefore served two roles simultaneously:

```text
PC World CD
     |
     +-- Software distribution platform
     |      installers
     |      applications
     |      drivers
     |      magazine content
     |
     +-- Stand-alone utility environment
            ping / response tests
            IP scanner
            port scanner
            host resolution
            network diagnostics
            HTTP file server
```

These functions were integrated into the same custom graphical environment as the software catalog, rather than being separate external programs. For a magazine companion CD from 2004–2005, this made the application considerably more than an `AUTORUN` menu: it was a small **multimedia and networking shell** with its own diagnostic and content-sharing capabilities.

---

## 12. Other operating-system integration

The code also demonstrates direct Win32 integration in several places. Examples include:

- changing the desktop wallpaper with `SystemParametersInfo`;
- querying and manipulating the Windows taskbar/appbar;
- re-parenting windows with `SetParent`;
- moving/resizing windows with `MoveWindow` / `SetWindowPos`;
- dragging borderless forms through `SendMessage`;
- system tray integration with `Shell_NotifyIcon`;
- launching files/programs through `ShellExecute`;
- multimedia playback through `winmm.dll`;
- graphics operations through `gdi32.dll`;
- direct file copying and binary file access.

This was therefore a native Windows application with substantial Win32 interaction, not only a visual front end.

---

# Repository organization

The current repository intentionally separates historical material, monthly editions and restoration work. A simplified view is:

```text
PC-World/
├── img/
│   ├── AVI-2005/
│   ├── Graphics-PCW/
│   ├── PCW_Oct_2004/
│   ├── PCW_Nov_2004/
│   ├── ...
│   └── PCW_Sep_2005/
│
└── src/
    ├── Graphics/
    │   ├── resurse/
    │   └── skin/
    │       └── original/
    │
    ├── PC World (EN Win 11 - 02.08.2026)/
    │   ├── Generator Matrita CD/
    │   └── PC-World CDs/
    │       ├── [1] Octombrie 2004/
    │       ├── [2] Noiembrie 2004/
    │       ├── ...
    │       └── [12] Septembrie 2005/
    │
    └── PC World (RO Win XP - 19.09.2004)/
        └── Generator Matrita CD/
```

The exact tree continues to evolve as the surviving material is identified, repaired and organized.

---

# Original code versus 2026 restoration

Two kinds of material should be distinguished.

### Original/historical material

The historical sources were created for the Windows 2000/XP-era software ecosystem and use VB6, ActiveX and Internet Explorer components that were normal at that time. Historical project files reference development locations such as:

```text
E:\PC_februarie\
E:\MADALIN\Generator_Matrita\
C:\PC_World\
```

These paths are part of the original source history and have intentionally not been erased everywhere.

### Modern restoration

The `PC World (EN Win 11 - 02.08.2026)` area contains compatibility/restoration work intended to make the interface inspectable or runnable again on current Windows systems while preserving its original design. This includes an English adaptation and compatibility work around old media, fonts and VB6 dependencies. The repository also contains `font.bat`, a 2026 self-contained helper that embeds and installs the two historical fonts:

```text
B074000D.TTF  -> BankScrD
G034000D.TTF  -> GlaserSteD
```

The script elevates to Administrator, decodes the embedded Base64 font data, copies the fonts into the Windows Fonts directory, registers them and broadcasts `WM_FONTCHANGE`. This exists because the original program simply attempted to copy the TTF files into the Windows Fonts directory, an approach that no longer behaves the same way under modern Windows permissions and font registration rules.

---

# Legacy dependencies

Depending on the source snapshot, the project references components such as:

```text
msvbvm60.dll
VBA6.DLL
olepro32.dll
winmm.dll
shdocvw.dll / ieframe.dll
MSINET.OCX
MSWINSCK.OCX
TABCTL32.OCX
COMDLG32.OCX
```

Some monthly CD trees preserved local copies of runtime DLLs so that the software would have a better chance of running on the wide variety of PCs owned by magazine readers. Modern Windows should not be treated like Windows XP: copying/registering old system components blindly is not recommended. For historical testing, a virtual machine or a carefully controlled 32-bit compatibility setup is preferable. The embedded WebBrowser control also depends on the legacy Internet Explorer COM architecture, so modern behavior may differ even when the VB6 executable itself runs correctly.

---

# Notes for building the VB6 sources

The project is historical software, not a modern single-command build. For the closest development environment, use:

```text
Microsoft Visual Basic 6.0
32-bit ActiveX controls matching the .vbp references
the original .frm/.frx pairs
the required custom .ctl/.cls/.bas modules
```

Important points:

1. Keep `.frm` and `.frx` files together. The `.frx` files contain binary resources used by the forms.
2. Keep `.ctl` controls with their associated resources when present.
3. Do not assume every source file in a folder is part of the active `.vbp`; the archive contains experimental and alternate modules.
4. Some `.vbp` files still contain absolute development paths. These can be edited for a modern local setup.
5. Old OCX references may need to be restored/registered in a 32-bit environment.
6. Legacy AVI playback depends on MCI/codecs and may require a repaired or converted media file on current Windows.
7. The main HTML layer assumes legacy IE/WebBrowser behavior.
8. Several sources use `On Error Resume Next`, reflecting the defensive style used to keep the CD interface running on heterogeneous consumer PCs.

---

# Why there are so many variants

The production process existed before Git-based workflows were part of my day-to-day development. Monthly work was commonly preserved by copying whole project directories, modifying them for the next edition, and keeping backup variants. As a result, this archive contains:

- files with almost identical names but different dates;
- multiple source revisions of the same component;
- binaries that may be newer than the source beside them;
- source modules not enabled in the corresponding `.vbp`;
- old experimental functions left in place;
- commented-out implementations next to replacement code;
- historical hard-coded paths;
- 2026 edits living beside 2004–2005 timestamps.

For software archaeology, these inconsistencies are useful. They show how the application actually evolved under a monthly production deadline.

---

# Historical significance of the project

The part I consider most important is not any single VB6 trick. The project demonstrates how a complete magazine software distribution system could be built by one developer in the early 2000s using the tools available at the time. It combined:

- a reusable runtime engine;
- data-driven monthly menus;
- automated directory generation;
- installer/package management;
- an embedded browser presentation layer;
- custom GIF decoding and rendering;
- custom graphical controls;
- sound and voice feedback;
- Windows shell integration;
- network utilities;
- a fallback/watchdog mechanism;
- a dedicated content-generation application.

The main executable could remain largely unchanged while the generator produced a new monthly edition from new content. In that sense, the project had a clear separation between **engine**, **template**, **content**, and **generated distribution**. That is the main reason I am publishing the complete source archive rather than only the screenshots or executables.

---

# A note about third-party material

This repository is primarily a historical and educational software archive. The original source code written for the interface and generator is preserved together with material needed to understand the original distribution environment. The repository may also contain historical PC World artwork, Microsoft runtime components, fonts, magazine material, and third-party software packages that retain their own copyrights, trademarks and license conditions. **PC World** and related logos/branding belong to their respective rights holders. Inclusion in this archive documents the historical project and should not be interpreted as a claim of ownership over third-party brands or software.

---

# Credits

**Software, CD interface, template system and production: Paul A. Gagniuc**

**PC World Romania coordination: Madalin Lacraru**

**Original production period: October 2004 – September 2005**

**Archival restoration / modern compatibility work: 2026**

---

## Final note

For me, this repository is a snapshot of a very specific period in personal-computer history: software was still distributed physically, magazine CDs were an important way for users to discover programs, and a single CD interface had to run on an unpredictable collection of Windows machines, graphics cards, codecs and installed runtimes. What began as a casual question about distributing **Delta Memory Force V2.0** became a one-year software-production project and, eventually, this archive.


<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/ban/set%20(II).png" alt="PC World">

</div>
