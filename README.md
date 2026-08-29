# PC World Romania CD Interface Archive (2004-2005)


In 2026, while nostalgically going through some of my old source-code CDs, I unexpectedly rediscovered the complete PC World material, almost exactly 22 years after the project began. Looking at it again after so much time, and now in an era where AI makes old software considerably easier to inspect, understand and document, I found little reason to leave such a large body of work forgotten on old media. I created these CDs largely out of enthusiasm, curiosity and genuine affection for PC World, without treating the project as a commercial job. Publishing the surviving material in full therefore feels like the proper conclusion to something that began simply because I wanted to build it.

<hr>

Therefore, complete source-code archive, monthly production trees, graphics, bootstrap programs, and the CD-template generator used for the PC World Romania companion CDs I produced from October 2004 to September 2005. This ~750Mb repository preserves the development history of 16 PC World CD-ROMs produced during a continuous one-year period, together with the Visual Basic 6.0 source code of the interfaces and the software I wrote to generate the monthly CD structure. The repository also preserves intermediate versions, alternative builds, historical assets, and the 2026 Windows 11 compatibility restoration.

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/ban/set%20(V).png" alt="PC World | CDs">

> **Historical archive:** this repository intentionally preserves multiple generations of the project. Some folders contain original 2004-2005 sources, others contain later working copies or the 2026 English/Windows 11 restoration. They should not be assumed to represent one perfectly synchronized release tree.

The image above was created with ChatGPT as a visual presentation of the PC World companion CD collection covered by this archive. Each disc represents an edition for which the software interface and CD master structure were produced. The original scan of all 16 physical CDs, made with my printer's scanner, is preserved in the repository under the img directory. It provides the primary visual record of the actual discs, including their original artwork, labels, issue dates and CD variants.


The CD interface operated as a self-contained software catalog and launcher. When the disc was inserted, the autorun sequence started the PC World application, which loaded the content prepared for that particular monthly edition. Programs were organized into categories such as Utilities, Multimedia, Games, Internet, Antivirus and Permanent software. Selecting an entry displayed its name, description and associated graphic, while the available controls were activated according to the files present on the CD. From the same interface, the user could install the program, run it directly when a portable executable was provided, read additional information, or copy the package to the local computer. The interface therefore acted as the operational front end for the complete contents of each PC World companion CD. Below is an example of the PC World Romania CD interface from June 2005. It was one of the monthly interfaces I designed and programmed in Visual Basic 6.0 for the magazine's companion CDs. The application provided access to software categories, magazine content, help and information sections, and handled the installation, execution, description and presentation of the programs distributed on the disc.

<hr>

<div align="center">
    <a href="https://github.com/Gagniuc/PC-World"><kbd><img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/macheta.png" alt="PC World | CDs"></kbd></a>
</div>

<hr>

The introductory page also displayed the minimum hardware requirements for the PC World presentation software itself. In the preserved June 2005 interface these are stated as a **133 MHz CPU and 32 MB of RAM**. These values referred to the requirements of the CD presentation environment rather than to the individual software packages distributed on the disc, which could of course have their own and often considerably higher requirements. The presence of these specifications also reflects the period in which the application was designed. By 2005 such requirements were already very modest, allowing the interface to remain usable on older Windows computers while the actual programs and games supplied on the CD could target much newer hardware. Among the other interface elements was a scrolling LED message display. The message was generated dynamically from the current PC World edition and the computer's system date. The program determined whether the CD corresponded to the latest issue and, if not, reported how many newer monthly issues should already have appeared. The text was rendered as a continuously scrolling dot-matrix display in Visual Basic 6.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jul_2005/ezgif-6fa3ae7da83254c8.gif" alt="PC World">

</div>

<br>
The scrolling effect was generated programmatically. The message was first rendered as ordinary text into an off-screen bitmap, then sampled pixel by pixel. Pixels belonging to the letters were converted into illuminated cells, while background pixels were represented by unlit cells. The resulting matrix was shifted horizontally at regular timer intervals, creating the continuous LED-style movement. As the interface evolved from one monthly edition to the next, additional functionality was progressively integrated into the same application. Later versions included a custom browser, built-in network utilities, host and IP resolution, ping and response-time tools, network and port scanning, and an integrated HTTP web server. The server could expose files directly from the CD over the local network, allowing another computer to browse and retrieve the disc contents through a web browser. If the host computer had a publicly reachable IP address and the necessary network configuration, the same mechanism could also make the CD contents accessible over the Internet.

---

## Historical background

The project started almost by accident. In 2004 I went to **ICI** to register the domain `novusordo.ro`. At that time Romanian `.ro` domains were commonly sold under a one-time/lifetime registration model. On the same floor, close to the office where domain payments were handled, there was also a **PC World Romania** office. On my way out I met **Madalin Lacraru**, who was leaving the PC World office. Out of curiosity I asked whether the magazine might be interested in distributing **Delta Memory Force V2.0**, one of my software projects. He told me that, in principle, this could be possible. I then offered something else: I could build the complete software interface for the PC World companion CDs, free of charge, partly to make the proposed <a href="https://github.com/Gagniuc/Delta-Memory-Force-2.0">Delta Memory Force V2.0</a> distribution more attractive to them. A few days later Madalin called and asked whether I still wanted to do it. The first interface was a test. I created the interface for the **October 2004** CD, after which Madalin and the PC World director approved the result. That test became the first published CD produced with my interface. What initially looked like a single interface quickly became a complete monthly production system. For exactly one year I designed and maintained the launcher, interface, graphics, content structure and CD assembly process. I eventually also wrote a dedicated **CD template generator** so that a new edition could theoretically be assembled without manually rebuilding the whole structure. In practice, Madalin usually preferred to come to me each month and take the finished CD image/tree rather than operate the generator himself. The generator was straightforward for me because I had written it, but it still represented a fairly specialized production workflow. I did all of this without payment. At that age I was more interested in the fact that something I had written would be duplicated and distributed in tens of thousands of copies than in treating the work as a commercial software contract, even though I was very short of money at the time. By the autumn of 2005 I had started working at the **Romanian Ministry of Agriculture** and no longer had enough time to continue the monthly PC World production cycle. My last work in this sequence belongs to the **September 2005** generation. The result of that year is what this repository preserves.

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

The material preserved in this repository spans one complete year of continuous PC World CD production. During this period, the interface, content structure and supporting tools evolved from one monthly edition to the next. The preserved monthly sequence runs from: **October 2004 → September 2005**. The repository organizes this period as twelve monthly editions:

<div align="center">

| Index | Edition | Physical CDs | Archive folder |
|---:|---|---:|---|
| 1 | October 2004 | 1 | `PCW_Oct_2004` |
| 2 | November 2004 | 1 | `PCW_Nov_2004` |
| 3 | December 2004 | 1 | `PCW_Dec_2004` |
| 4 | January 2005 | 1 | `PCW_Jan_2005` |
| 5 | February 2005 | 2 | `PCW_Feb_2005` |
| 6 | March 2005 | 1 | `PCW_Mar_2005` |
| 7 | April 2005 | 2 | `PCW_Apr_2005` |
| 8 | May 2005 | 1 | `PCW_Mai_2005` |
| 9 | June 2005 | 2 | `PCW_Jun_2005` |
| 10 | July 2005 | 1 | `PCW_Jul_2005` |
| 11 | August 2005 | 2 | `PCW_Aug_2005` |
| 12 | September 2005 | 1 | `PCW_Sep_2005` |

</div>

The screenshots below document the visual evolution of the PC World CD interface across these monthly editions. Although the overall structure remained recognizable, individual releases introduced changes in graphics, layout, controls, content organization and additional functionality. Together, these interfaces show how the application developed from one edition to the next over the course of the 2004–2005 production period. Across these twelve monthly editions, the production archive represents 16 physical PC World companion CDs.

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

<br>

The screenshots above show a clear progression in the interface design. The October 2004 edition still used the earlier blue layout, while the November 2004 release introduced the metallic gray framework that became the visual basis for most subsequent editions. From December 2004 onward, the general control structure remained increasingly stable, while the central presentation area, background artwork, auxiliary controls and available functions continued to change from month to month. Later editions increasingly adapted the interface to the content of the corresponding disc. Themed backgrounds were used for particular games or software collections, while some releases introduced specialized navigation layouts, as seen in the June 2005 graphics-oriented edition with sections for animation, applets and scripts, web editing and web graphics. By June-July 2005, the interface had reached its mature form. The main navigation structure, visual language and interaction model were already established, while the remaining monthly editions mainly refined the presentation, adapted the central content area to each release, and incorporated additional functions without substantially changing the overall architecture.

---


# Info Guide 2005 - Romanian IT&C business directory

Info Guide 2005 was a separate Visual Basic 6.0 application created as an offline business-discovery system for the Romanian IT&C market. Rather than functioning as a conventional alphabetical company directory, it was designed to connect manufacturers, brands, products and technologies with the Romanian companies that distributed or supplied them. The interface organized the market into areas such as Networks & Telecommunications, Data Storage, Peripherals, Systems, Software and Components, and presented two directly related lists: `Firme producatoare` (manufacturers) and `Firme de distributie` (distributors).

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Apr_2005/Info%20Guide/Screenshot%202026-08-28%20233741.png" />

</div>

The relationships between manufacturers and distributors were stored in simple text databases named `db.2s`. When a manufacturer was selected, the application parsed the corresponding record and displayed the associated distributors. Info Guide therefore functioned as a small B2B supplier-discovery and cross-reference system for the Romanian IT&C market.

The application also included an advanced search capable of locating companies either by name or by the products, activities and services they offered. Search results could be opened as detailed company profiles through an embedded Adobe PDF component. A separate Internet directory provided direct access to a wider collection of Romanian IT&C company websites through the application's embedded Internet Explorer/WebBrowser component.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Apr_2005/Info%20Guide/V3%20(II).png" />

</div>

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Apr_2005/Info%20Guide/V3%20(III).png" />

</div>

Historically, these data files are significant independently of the software itself. They preserve a digital snapshot of the Romanian IT&C business ecosystem in 2005, including relationships between manufacturers, distributors, technologies, products and services. Since many of these commercial relationships, companies and websites have since changed or disappeared, the surviving databases and company records also represent a small historical dataset of the Romanian technology market at that time.

The preserved project snapshot, `InfoGuide.vbp`, is dated 2 May 2005 and shows the original implementation directly in Visual Basic 6.0. The application combines native VB6 controls, custom graphical controls, an embedded Internet Explorer/WebBrowser component and Adobe Acrobat ActiveX for displaying the company dossiers. Because the company profiles were displayed as PDF documents, the application checked for Adobe Acrobat Reader at startup. If it was not available, the user was offered the option to install Acrobat Reader 6.0.1 directly from the CD, where the installation kit was included. Like the main PC World project, it belongs to an archive that preserves original 2004-2005 source generations rather than reconstructing them as a single artificial modern release.

---

# Technical overview

The PC World CD project was designed as a complete production and runtime environment rather than as a single launcher application. One part of the system prepared each monthly release by organizing program packages, graphics, drivers, sounds and magazine material, generating the required directory structure and configuration files, and assembling the final CD master ready for duplication. The second part was the software environment executed by the reader when the finished CD was inserted into a computer. In modern terminology, the system combined the functions of a **content-management tool, build system, multimedia launcher, software catalog, installer front end, local HTML renderer and utility shell**. The implementation was developed primarily in **Microsoft Visual Basic 6.0**, with additional use of Win32 APIs, multimedia services, HTML content, custom graphical resources and networking components.

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/vb%20(I).png">

Over the course of the project, the runtime evolved from a software-catalog interface into a broader multimedia shell incorporating installation and execution controls, custom graphics, local HTML presentation, system integration, network utilities and an embedded web server. The diagram below summarizes the two interconnected parts of the system: **monthly CD generation** and the **runtime architecture of the finished disc**.

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/schema%20(VII).png" alt="PC World">

The lower part of the diagram represents the final distribution stage. Once the monthly CD master had been prepared, the disc was duplicated in large quantities and distributed together with **PC World Romania** through the magazine's established circulation channels. Copies reached readers nationwide through newsstands and newspaper kiosks, while subscribers received the corresponding magazine and companion CD through the subscription distribution system. This physical distribution model meant that each completed software build was reproduced and placed directly in the hands of tens of thousands of readers across Romania. Thus, the complete workflow extended from source assets and automated CD generation to the runtime environment used by the reader and, finally, to the large-scale physical duplication and nationwide circulation of the finished disc.

The historical application itself refers to the CD assembly operation as a **"compilation"**. Technically, the generator did not recompile the Visual Basic program for every monthly edition. Instead, it performed a content/build operation: creating the directory hierarchy, generating configuration and HTML files, copying graphics and program packages, and placing the already compiled runtime executables into the final `Matrita` tree.

---

## 1. The main PC World application - `CD.exe`

`CD.exe` was the central application executed by the reader after the CD startup sequence. It provided the common graphical environment from which the contents of each edition could be explored and used. Rather than presenting the disc as a collection of folders, the application organized the material into software categories, descriptions, captures, installation and execution functions, magazine-related content, help pages and, in later builds, additional system and network utilities. One preserved August 2005 project identifies the main program as:

```text
Project name:        PC_World
Executable:          CD.exe
Version:             3.2.2
Language:            Visual Basic 6.0
Startup form:        Intrare
Company metadata:    www.NovusOrdo.ro
Copyright metadata:  Paul Gagniuc
```

The application used a custom-skinned interface rather than standard Windows controls as its visual identity. The main software areas were mapped internally to short category identifiers:

```text
UT  = Utilitare
MM  = Multimedia
JC  = Jocuri
IN  = Internet
AV  = Antivirus
PR  = Permanente
```

The source allocates indexed program slots from `0` to `18`. Historical comments refer to an 18-program-per-section limit, while the arrays themselves contain 19 indexes; this discrepancy is preserved in the original working sources. The category identifiers were used directly as directory names on the CD. Each `UT`, `MM`, `JC`, `IN`, `AV`, or `PR` directory contained the files associated with the programs listed in that category, including installers, runnable executables, archives, descriptions and supplementary resources. The repository does not include the original third-party installation kits distributed on the 16 PC World CDs. A complete preservation of those packages would require roughly the capacity of the original discs themselves - up to about 16 × 650 MB (i.e., roughly 10.4 GB in total) for CDs that were typically filled close to capacity, and would also introduce unnecessary third-party software and licensing material into the source archive. Instead, the preserved directory structures use very small dummy executables, approximately 2 KB in size, wherever an original setup program would otherwise have been required. When executed, the placeholder simply displays: “This dummy file is a placeholder for the setup file of the application described. The original setup file was too large, so it has been replaced with this file.” This keeps the original directory layout and interface behavior testable without storing the full software payload of the historical CDs.


### Application startup

Before presenting the main interface, all editions displayed a dedicated loading screen. This reflected the design conventions of the period: splash screens, startup animations and visible initialization sequences were still common in desktop software, even though by the early 2000s personal computers had already become fast enough that such screens were often more stylistic than technically necessary. In this project, the loading screen became part of the visual identity of the application while also reporting the initialization sequence to the user. For example, the May 2005 build shown below reports the loading of application information, fonts, directories, configuration data, graphics and presentation resources, followed by the final operational state. A progress indicator at the bottom follows the same startup process.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20025905.png" />

</div>

This startup display also illustrates an important characteristic of the program: the interface depended on a structured collection of external resources rather than having all monthly content compiled permanently into the executable. The same application engine could therefore be reused while the accompanying descriptions, images, installers and other resources changed from one edition to another.

<hr>

### Main interface

After initialization, the reader entered the main PC World environment. The upper navigation bar provided direct access to the principal categories and sections, while the large central area changed according to the selected function. For instance, the June 2005 interface below shows the standard layout that had become established by this stage of development: the main category bar at the top, a large presentation area in the center, persistent sound controls, and the PC World identity panel in the lower-right part of the interface.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jun_2005/CD1/ezgif-1cb34aa39924a704.gif" alt="PC World">

</div>

<br>

The central presentation surface was deliberately dynamic. Depending on the selected section, it could contain introductory artwork, program information, HTML content, captures, application lists, or other edition-specific material. This allowed the same graphical shell to present several different types of content without opening separate Windows forms for each function.

<hr>

### Program presentation and software operations

Selecting a program replaced the central page with a dedicated software-information view. The program description appeared on the left, while a corresponding capture was displayed inside the large circular monitor on the right. Again, the June 2005 example below presents **Cossacks: Napoleonic Wars**. The interface shows a textual description, platform and software type, the associated image, and the actions available for that particular entry.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jun_2005/CD1/ezgif-190210b98f2adce4.gif" alt="PC World">

</div>

<br>

The same mechanism was reused for very different kinds of software. For instance, the August 2005 capture below shows **Download Accelerator Plus** in the Internet category, using the same description/capture layout. The two action buttons below the description were enabled or disabled dynamically according to the files found in the corresponding program directory. If the package was supplied only as an archive, such as a ZIP file, the **Copy / Copiere** button became available so that the reader could copy the package from the CD. If an executable setup kit was present, the **Run / Instalare** button became active and launched the installer directly.

<br>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Aug_2005/Screenshot%202026-08-26%20052827.png" alt="PC World">

</div>

<br> 

In the screenshot below, both buttons are disabled because the preserved repository does not include the original software kits for the described programs. Those packages were intentionally omitted from the archive because of their size; only the interface, directory structure and source code are preserved. Thus, the application did not assume that every program supplied on the CD had the same packaging. For each entry it checked which associated resources were present and enabled only the operations that could actually be performed.

### Runtime behavior

The runtime logic was built around the actual files available for each software entry. Every program directory could contain a different combination of installer, directly executable application, archive and documentation files, so the interface inspected the corresponding path before deciding which controls should be available to the user. This made the launcher tolerant of different software-distribution formats. A program could be supplied as a conventional setup package, as a directly runnable executable, as a ZIP archive to be copied from the CD, or simply with documentation. The interface adapted automatically to these cases instead of requiring every entry to follow the same packaging model. For each software entry, the interface enabled only the operations supported by the files present in the corresponding program directory.

| Romanian | English | Function |
|---|---|---|
| **Instalare** | **Install** | Launches `setup.exe`. |
| **Rulare** | **Run** | Launches `Aplicatie.exe`. |
| **Copiere** | **Copy** | Copies the software package from the CD. |
| **Citire** | **Read** | Opens `Citeste_ma.txt`. |

In addition to these actions, the interface displayed the program description and associated capture, calculated the package size, and automatically disabled controls for resources that were not present. This allowed installers, directly runnable applications, ZIP packages and documentation-only resources to coexist under the same interface without requiring separate launcher logic for each program.

<hr>

### Magazine and supplementary content

The interface also included a dedicated `Revista` section for software associated directly with the printed PC World issue. The term `revista` is Romanian for **magazine**, and in this context it identified a separate group of applications that accompanied editorial material published in the corresponding issue. These programs were stored in their own `Revista` directory on the CD and were presented together with their names and package sizes. Unlike the main software categories, this section was closely tied to the contents of the printed publication. The interface did not attempt to reproduce the complete editorial description of every listed program; instead, it provided direct access to the software while the magazine supplied the detailed explanation, context and related article material.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jul_2005/captura%20(I).png" alt="PC World">

</div>

<br>

The text visible directly in the July 2005 interface explains this relationship explicitly: the listed programs could be found on the CD in the `Revista` directory, while their detailed descriptions could be read in the pages of the magazine. The screenshot therefore documents how the software interface and the printed publication were designed to be used together rather than as completely independent products. This created a direct link between the physical magazine and its companion CD. The magazine provided the editorial description and context, while the CD supplied the corresponding executable packages. The `Revista` section acted as the bridge between the two, allowing the reader to locate the software mentioned in the issue without manually browsing the disc directory structure.

<hr>

### Integrated HTML presentation and help system

Some parts of the interface were implemented as local HTML documents displayed inside the application. The June 2005 Help page below is one example. It is visually integrated into the PC World skin but provides formatted text, links and scrolling through the embedded browser component. The Help section was not strictly necessary for operating the application, but including a dedicated help function had become part of the unwritten conventions of desktop software at the time. This convention was reinforced indirectly by the design patterns of Windows applications and Microsoft software, where a visible Help command or button was commonly expected even when the interface itself was relatively straightforward.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jun_2005/CD1/bandicam%202026-08-26%2003-20-27-017.jpg" alt="PC World">

</div>

<br>

The help text itself describes several interface behaviors. It explains that selecting categories presents the corresponding software titles, selecting a title displays both the program capture and its description, and clicking an image in the `Captura` area enlarges it. The HTML layer therefore functioned as part of the actual application interface rather than only as static documentation. This hybrid architecture made it possible to modify substantial amounts of presentation content between editions without rebuilding every visual element directly as a VB6 form.

<hr>

### Built-in web browser

The browser functionality grew directly out of the hybrid architecture chosen for the application from the beginning of the project in 2004. `CD.exe` combined conventional Visual Basic 6 forms and controls with Microsoft's embedded **WebBrowser** component, which used the Internet Explorer rendering engine already available in Windows. This made it possible to use ordinary VB6 code for the application logic while using HTML whenever a more flexible presentation surface was useful. The embedded browser object was therefore present for a practical reason before it was ever exposed as a web browser. Local HTML pages could be generated or modified independently of the executable and then displayed directly inside the PC World interface. Text, links, images and more complex layouts were considerably easier to construct in HTML than by reproducing every element with native VB6 controls. At the same time, using the Windows browser engine avoided the need to develop a separate HTML renderer and provided a familiar rendering environment across the Windows systems for which the CDs were intended. This **VB6 + HTML/WebBrowser** model was adopted at the beginning of the project in 2004 and remained part of the architecture through the final editions in September 2005. The same embedded object was used for local interface content, Help pages and other HTML-based material. Since the application already contained a functional browser engine, extending it into an actual Internet browser required comparatively little additional work. I therefore exposed the navigation functionality as another feature of the PC World shell. It was technically simple, since the underlying browsing engine was Microsoft's rather than one written specifically for this project, but at the time it produced a useful and visually effective addition to the application. The screenshot below, from **November 2004**, shows this early browser interface identified directly in the application as **version 0.1**. It provides its own **Back, Forward, address entry, Load, Stop and Reload** controls, while the browser itself remains embedded inside the same custom PC World graphical shell.

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Nov_2004/Screenshot%202026-08-26%20012020.png" alt="PC World">

</div>

<hr>

The text displayed inside the interface explicitly announces that Internet navigation is available directly through the application. In practice, the same component could therefore serve two roles: it could render local HTML belonging to the CD interface or navigate to ordinary web content when given an Internet address. This dual use of the embedded browser became one of the architectural characteristics of `CD.exe`: native VB6 handled the application logic, controls, file operations and system integration, while the browser component provided a flexible HTML presentation layer and, when required, direct Internet navigation.

<hr>

## 2. A custom data format - `biohazard.zulu`

The monthly software catalog was not hard-coded directly into a newly compiled executable for every issue. Instead, `CD.exe` acted as a reusable runtime engine, while the actual contents of each edition were described by an external text database generated during preparation of the CD. The main file used for this purpose was:

```text
aferent\biohazard.zulu
```

This file contained the software lists, category boundaries and descriptive text required by the interface. Changing the contents of a monthly edition therefore did not require rewriting the application logic itself. The generator could create a new data file for the current issue, place the corresponding software packages and images in the expected directories, and reuse the same `CD.exe` engine. In practical terms, `biohazard.zulu` functioned as a small custom manifest/database format. It was plain text, but it used explicit tags and terminating markers so that the VB6 application could locate individual sections without requiring an external database engine, XML parser or additional dependency. Its general structure included blocks such as:

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

The first group of blocks describes the entries belonging to the principal software categories. Their names correspond directly to the categories visible in the interface:

```text
[UTILITARE]     -> UT
[MULTIMEDIA]    -> MM
[JOCURI]        -> JC
[INTERNET]      -> IN
[ANTIVIRUS]     -> AV
[PERMANENTE]    -> PR
```

Each section has an explicit terminating marker such as `[UT-STOP]`, `[MM-STOP]`, or `[AV-STOP]`. This gave the parser clear boundaries from which it could extract the corresponding portion of the file. The later blocks contain additional information associated with those entries, including the descriptions displayed inside the main interface. Entries could be indexed explicitly, for example:

```text
[0]Program description[STOP]
[1]Another program description[STOP]
```

The numeric index corresponds to the software slot used internally by `CD.exe`. This is how a menu entry, its description, its capture and the corresponding directory on the CD could be associated without compiling those values permanently into the program.

### Parsing

At startup, `CD.exe` reads the complete `biohazard.zulu` file and parses it using ordinary Visual Basic string operations such as:

```text
InStr
Mid
Replace
```

The program searches for the section markers, identifies their start and stop positions, extracts the enclosed text and then uses the resulting values to construct the interface dynamically. The parser was intentionally simple. No SQL engine, registry database or external parser was required; the format could be produced directly by the CD generator and interpreted using functionality already available in Visual Basic 6. Conceptually, the runtime process was:

```text
biohazard.zulu
      |
      v
read complete file
      |
      v
locate section tags
      |
      v
extract menu entries and descriptions
      |
      v
associate entries with indexed CD directories
      |
      v
populate the PC World interface
```

This separation between **application logic** and **monthly content** was important to the production workflow. The executable could remain largely unchanged while the generator produced a different catalog for October, November, December and the subsequent 2005 editions. New programs, descriptions and category contents could therefore be introduced primarily by changing generated data and resources rather than modifying and recompiling the complete interface for every CD.

### Format restrictions

Because the format relied on characters embedded directly in the text as structural delimiters, some characters could not safely appear in arbitrary user-entered fields. The generator therefore contains validation code that rejects characters such as:

```text
[  ]  '  "  #  |
```

These restrictions were not cosmetic. Allowing delimiter characters inside program names or descriptions could interfere with the parser and cause part of the text to be interpreted as structural metadata instead of ordinary content. This is one of the characteristic limitations of the home-grown format: it was compact and easy to generate, but the syntax and the stored content were not completely independent. The generator had to protect the data format by preventing input that could collide with its control characters.

### `biohazard.gama`

The generator also produces a second small metadata file:

```text
biohazard.gama
```

This file is associated with the generator's `Activat()` feature array and stores selected or disabled feature indexes in a compact form. It allowed the generated CD configuration to indicate which interface elements or functions should be active for a particular build. Together, `biohazard.zulu` and `biohazard.gama` formed a lightweight configuration layer between the CD-generation software and `CD.exe`:

```text
CD generator
    |
    +-- biohazard.zulu  -> menus, entries, descriptions
    |
    +-- biohazard.gama  -> feature-state metadata
    |
    +-- program directories, captures and resources
                |
                v
              CD.exe
                |
                v
        generated monthly interface
```

The result was a data-driven architecture in which one VB6 runtime could interpret the configuration and resources prepared for each monthly edition. For a 2004-2005 desktop application distributed entirely from CD-ROM, this provided a relatively simple way to separate the reusable application engine from the material that changed every month.

---


## 3. Hybrid native/HTML interface

As briefly mentioned above, the project mixes native VB6 controls with local HTML content. The main application embeds the Microsoft WebBrowser/Internet Explorer COM engine and loads local files such as:

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

The interface contains a large amount of native graphics code for a magazine CD launcher. Important components include both code written specifically for the project and third-party graphical components. In particular, some of the ActiveX controls and GIF-handling libraries were written by other programmers and published on **Planet Source Code**, a major programming community and source-code archive at the time. Planet Source Code was also one of the main places from which I learned advanced programming during that period. In many respects, this ecosystem played a role similar to the package and library ecosystem surrounding Python today. Long before Python became a mainstream development platform, Visual Basic 6 already had a large community producing reusable controls, graphics libraries, networking components, parsers and complete source-code modules that could be incorporated into other applications. Planet Source Code was one of the principal repositories through which such code circulated.

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

One of the distinctive visual elements of the PC World interface is the red **neon/LED-style scrolling information panel** displayed above the main application. This is not a static image or a conventional scrolling Label control. The effect is rendered programmatically by the application. The implementation is contained primarily in `Mesagerie.frm`, where the `DrawNeon()` routine converts ordinary rendered text into a pixel-based display using separate graphical states for illuminated and non-illuminated cells.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Jul_2005/ezgif-6fa3ae7da83254c8.gif" alt="PC World">

</div>

The message is first rendered as ordinary text into an off-screen bitmap represented by `Lungime_txt`. `DrawNeon()` then samples this bitmap pixel by pixel. Pixels sufficiently different from the background are treated as parts of the characters and replaced with the illuminated-cell graphic `Pe_fundal`, while background pixels are represented by the dark-cell graphic `fundal_pix`. The resulting dot matrix is drawn into the visible `Cadran_afisare` area.

```text
text message
     |
     v
off-screen text bitmap (`Lungime_txt`)
     |
     v
sample individual pixels
     |
     +---- text pixel ------> illuminated cell (`Pe_fundal`)
     |
     +---- background ------> dark cell (`fundal_pix`)
     |
     v
visible LED matrix (`Cadran_afisare`)
     |
     v
horizontal scrolling
```

The scrolling itself is timer-driven. The `secunda` timer calls `DrawNeon()` approximately every **110 ms**, while the message position advances by **three units per update** (`xbStep = 3`). Parts of the previous frame are reused with `PaintPicture`, so the display does not need to reconstruct the complete visible matrix from scratch for every movement. Once the entire message has passed across the display, its horizontal position is reset and the scrolling cycle begins again. Clicking the display can also pause or resume the animation by disabling or re-enabling the timer. The text shown by the panel is generated dynamically. Among other information, the original code can display the computer name, the current Windows user account, the local IP address, the current date, status information concerning the current PC World edition, and the location of the emergency HTML backup interface. The system-information text is assembled by `GetSysInfo()` and then passed to the neon renderer.

A particularly specific function of the panel was to compare the date of the PC World edition stored on the CD with the computer's current system date. The generated message could indicate whether the inserted disc represented the latest expected issue, whether one newer monthly issue should already have appeared, or how many newer editions should exist according to the elapsed months. The display therefore combined system information, edition-status logic and custom graphics inside the same scrolling component. Even this relatively small interface element consequently contains its own text-generation logic, bitmap rasterization, pixel classification, animation timing and frame management rather than relying on a pre-rendered animation.

---


## 5. Program captures and presentation

The visual presentation of each software entry was also generated from the directory structure rather than being embedded permanently in `CD.exe`. During preparation of a monthly CD, the generator copied the images associated with each program into predictable locations inside the corresponding category directory:

```text
aferent\<CATEGORY>\<index>.gif
aferent\<CATEGORY>\img\<index>.gif
```

The `<CATEGORY>` component identifies the software section (`UT`, `MM`, `JC`, `IN`, `AV`, or `PR`), while `<index>` corresponds to the numerical program slot used throughout the rest of the application. The same index therefore linked the program listed in the menu with its description, graphical capture and files stored elsewhere in that category tree.

When the reader selected a program, `CD.exe` used this information to load the corresponding GIF dynamically and place it into the presentation area of the interface. This is the mechanism visible in the monthly screenshots where selecting different software immediately changes both the descriptive text and the image shown on the right side of the interface. The executable itself did not need to contain those screenshots; replacing the files belonging to an indexed entry was sufficient to change what the reader saw.

The presentation data and the actual software package were deliberately kept as separate resources. A single program entry could therefore have its title and description in the generated data file, one or more GIF images for visual presentation, an installer executable, a directly runnable version, a ZIP archive, and an optional text file. Not every entry needed to contain every type of resource. `CD.exe` checked what was actually available and adapted the interface accordingly.

This file-based organization was particularly useful for monthly production. Most of the application engine could remain unchanged while the programs, descriptions, captures and installation packages were replaced for the next issue. The directory structure effectively served as a lightweight content database: filenames, numerical indexes and predefined locations established the relationships that a conventional database would normally store in records and fields. Consequently, the material presented to the reader was assembled at runtime from several independent components, generated textual metadata, indexed images and the corresponding software files - rather than from a separate hard-coded interface created for every program on every CD.

---

## 6. The CD Maker / "Generator Matrita"

The generator is one of the central components of the entire PC World production system because it was responsible for transforming the material prepared for a new issue into the complete directory structure of a finished companion CD. Instead of rebuilding the disc manually every month, the generator automated the repetitive parts of the process and produced a standardized output tree ready for testing and, eventually, duplication. A preserved project identifies it as:

```text
Project name:       GenerareMatrita
Window title:       Generare Matrita
Executable:         Set.exe
Historical path:    E:\MADALIN\Generator_Matrita
Language:           Visual Basic 6.0
```

The historical path is itself useful evidence of how the program was used in practice. The generator was maintained as a dedicated production tool for the PC World workflow rather than as a generic utility. Its purpose was to take the material selected for a particular issue, including software packages, descriptions, captures, magazine pages, drivers, sounds, graphics and configuration choices, and assemble them into a new directory named `Matrita`. The term **"Matrita"** literally means **"master/template"** in Romanian. In this project it referred to the complete master directory from which the physical CD could be produced. The generator therefore sat between content preparation and disc duplication. It converted editorial and software material into the exact filesystem structure expected by `CD.exe`, `Start.exe`, `Control.exe` and the rest of the runtime environment.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/matrita.png">

</div>

The generator interface provided the controls required to prepare a monthly edition without manually creating every directory and file. Program titles and descriptions could be entered, categories enabled or disabled, screenshots selected, installation packages assigned, graphics chosen and supplementary material added. Once the required content had been supplied, the generator reproduced the expected directory hierarchy and generated the metadata consumed later by the runtime application. This was particularly important because the final CD was not simply a folder containing executables. `CD.exe` expected a specific relationship between category names, numeric program indexes, captures, descriptions, installers, ZIP archives, HTML pages and configuration files. The generator encoded those conventions into the production tool itself, reducing the possibility of assembling each monthly issue differently by mistake.

### Generation workflow

During a build, the generator first validates the required fields and determines which sections and features are enabled for the current edition. It then constructs the menu and description data used by `CD.exe` and writes the custom configuration files `biohazard.zulu` and `biohazard.gama`. The same process creates the corresponding HTML material for sections such as **Intro**, **Help**, **Magazine** and **Drivers**, followed by the complete `PC_World\aferent` hierarchy used by the runtime. Category directories are generated for `UT`, `MM`, `JC`, `IN`, `AV` and `PR`, together with the indexed subdirectories associated with individual programs.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/intro.png">

</div>

For each software entry, the generator can copy the appropriate presentation image, installer, directly runnable executable, ZIP archive and optional `Citeste_ma.txt` documentation. It also handles resources that apply to the entire edition rather than to one program, including driver packages, backgrounds, advertising graphics, WAV files, optional background music, the PC World wallpaper and the optional magazine archive spreadsheet `arhiva.xls`. The final stage adds the components required for the CD to execute correctly on the target Windows systems. These include the principal application executable, supporting programs, VB6 runtime dependencies, fonts and `AUTORUN.INF`. The resulting `Matrita` directory therefore contains both the editorial and software content of the current issue and the complete runtime environment required to present that content to the reader.

Conceptually, the process was:

```text
monthly material
      |
      ├── program titles and descriptions
      ├── installers and ZIP packages
      ├── screenshots and graphics
      ├── magazine and driver material
      ├── sounds and music
      └── configuration choices
      |
      v
Generare Matrita / Set.exe
      |
      ├── validates content
      ├── generates metadata
      ├── generates HTML
      ├── creates directory hierarchy
      ├── copies program resources
      └── copies runtime components
      |
      v
Matrita
      |
      v
complete CD master
      |
      v
testing / burning / duplication
```

The generator also contains functionality that goes beyond simple file copying. The preserved project includes preview forms, capture selection tools, directory browsing, graphics handling, HTML generation, GIF support and a custom interface button editor. These features allowed much of the monthly production work to be performed from inside the same application rather than by manually preparing every file with separate tools.

In practical terms, `Generare Matrita` was the production counterpart of `CD.exe`. `CD.exe` interpreted and displayed the finished structure, while `Set.exe` created that structure in the first place. The two applications were therefore designed around the same conventions: category codes, numeric program indexes, predictable filenames, generated metadata and fixed directory locations.

The generator was created so that a new issue could, in principle, be produced primarily by supplying the new monthly content and allowing the program to reconstruct the standard PC World CD environment automatically. This became increasingly useful as the interface accumulated more resources and functionality, because manually reproducing the complete structure for every edition would have been both slower and more prone to errors.

The word **"compilation"** appears in the historical generator interface, but in this context it refers to assembling the CD master rather than recompiling the Visual Basic source code. The operation consisted of generating metadata and HTML, creating directories, copying resources and placing the already compiled runtime executables into the final `Matrita` tree. The completed `Matrita` directory was then the master used for the final CD production stage.

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

`Start.exe` was the first graphical component executed when the PC World CD was inserted. Its role was deliberately small and separate from the main application. Instead of loading the complete `CD.exe` interface immediately, it opened a borderless Visual Basic 6 window, played the animated PC World introduction, and then transferred control to the main application. The separation was intentional. The intro could remain a lightweight bootstrap program while `CD.exe` contained the much larger interface, software catalog, HTML presentation system and utility functions. This also meant that the startup animation could be changed independently from the main application. The preserved source uses the Windows Multimedia API function:

```text
mciSendString()
```

Rather than implementing AVI decoding itself, `Start.exe` delegates video playback to the multimedia services already present in Windows. The AVI is opened through MCI and displayed inside the VB6 window as an embedded child video surface. The surrounding form has no normal Windows border or title bar, so from the user's perspective the animation appears as a dedicated startup screen rather than as a conventional application window.

<div align="center">

<kbd><img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/animatie.gif" alt="PC World"></kbd>

</div>

The intro was primarily a presentation element rather than a technical requirement. Splash screens and animated startup sequences were very common in desktop software of the period, particularly in multimedia applications and magazine CDs. By 2004 and 2005 the computers on which PC World normally ran were already fast enough that a several second loading animation was not generally required simply to hide initialization time. In this case, the sequence was used to give the CD a recognizable beginning before the reader entered the main interface. The preserved variants show that the duration was adjusted during the life of the project. An earlier 2004 version keeps the intro visible for approximately **6 seconds**, while a later 2005 version reduces this to approximately **4.5 seconds**. At the end of the sequence, `Start.exe` launches:

```text
CD.exe
```

and the main PC World environment takes over. The source also contains a small compatibility detail typical of Windows multimedia programming at the time. Before passing the AVI filename to MCI, the application converts its path using:

```text
GetShortPathName()
```

This produces the traditional DOS style short path, such as a name based on the `PROGRA~1` convention. Multimedia APIs and older Windows components could sometimes behave unpredictably when filenames contained spaces or other characters, so using the short path reduced the possibility of the video failing to open because of pathname parsing. The startup sequence therefore followed a simple chain:

```text
CD inserted
     |
     v
AUTORUN.INF
     |
     v
Start.exe
     |
     v
open intro AVI through MCI
     |
     v
display AVI inside borderless VB6 window
     |
     v
wait for intro sequence
     |
     v
launch CD.exe
     |
     v
main PC World interface
```

The August 2005 `AUTORUN.INF` preserved in the archive shows this relationship explicitly:

```ini
[AUTORUN]
OPEN=PC_World\Start.exe
Icon=PC_World\aferent\PC.ico
```

Windows therefore did not start `CD.exe` directly when the disc was inserted. It started `Start.exe`, while the icon associated with the CD was loaded separately from `PC.ico`. Only after the introductory sequence had completed did the bootstrap application open the main program. This small executable consequently formed the first stage of the complete runtime environment. `AUTORUN.INF` initiated the disc, `Start.exe` handled the animated introduction, and `CD.exe` provided the actual interactive PC World interface. The arrangement also kept the presentation layer of the startup process independent from the considerably more complex main application.

---


## 9. `Control.exe` - watchdog and fallback

`Control.exe` was a very small companion program whose purpose was to detect whether the main PC World application had successfully completed its startup sequence. Although its source contains only a few dozen lines, it added a simple recovery mechanism to a CD that otherwise depended on several components working correctly, including the VB6 runtime, ActiveX controls, local HTML files, graphics resources and the main `CD.exe` executable. The program runs without presenting a normal user interface. After being started, it waits for approximately **22 seconds** and then examines a small state file created in the local PC World working directory:

```text
C:\PC_World\control.evolutie
```

This file acts as a primitive communication channel between the main application and the watchdog. Instead of using Windows messages, shared memory, pipes or another interprocess communication mechanism, the applications exchange a single state value through the filesystem. The preserved code uses the following states:

```text
0 = startup/loading stage
1 = main application reached an operational state
2 = application exited
```

The mechanism is intentionally simple. During startup, the state begins at `0`. Once `CD.exe` has completed its initialization and reached the normal interactive interface, the value becomes `1`. A value of `2` records that the application has terminated. Thus, `Control.exe` waits long enough for the normal startup process to finish and then checks whether the expected operational state has been reached. If it has not, the watchdog assumes that the graphical application failed somewhere during initialization and opens:

```text
aferent\BackUp.htm
```

The fallback was particularly useful because the PC World interface was a hybrid application. Much of the presentation material already existed as local HTML and could be rendered using the Microsoft browser engine available in Windows. If the complete VB6 interface could not become operational, the CD could therefore fall back to a much simpler HTML based interface rather than leaving the reader with nothing more than an error or an apparently unresponsive disc.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mar_2005/Screenshot%202026-08-27%20024641.png" alt="PC World">

</div>

The screenshot above shows the emergency interface reached through this fallback path. It preserves access to the principal PC World sections in a simpler form and demonstrates another advantage of the hybrid architecture used throughout the project. The HTML layer was not only useful for ordinary presentation inside `CD.exe`; it could also provide an independent recovery path when the native interface could not be used. From a modern perspective, using a text file as a watchdog state channel is extremely elementary, but for this application it had several practical advantages. It required no additional libraries, worked with the file operations already available in VB6, could be inspected manually during development, and remained independent of the internal state of `CD.exe`. If the main process failed before reaching its normal operating state, the external helper could still detect that condition. The approximately 22 second delay also shows that this was not intended as continuous process supervision in the modern sense. `Control.exe` was primarily a **startup watchdog**. Its task was to give the main application enough time to initialize and then decide whether the normal graphical interface had become usable. If initialization succeeded, the helper had nothing further to do. If initialization failed, it redirected the reader to the emergency HTML interface. This arrangement created two possible startup outcomes:

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/start.png" alt="PC World">

</div>

The exact bootstrap relationship between `Start.exe`, `Control.exe` and `CD.exe` is not identical in every archived snapshot. Some source directories represent intermediate development versions, while others correspond more closely to particular monthly releases. The surviving source trees were working production copies rather than synchronized version control snapshots, so differences between source folders and final CD binaries are expected. For that reason, the repository preserves the available variants rather than reconstructing a single artificial bootstrap sequence and presenting it as definitive. What remains consistent across the preserved implementation is the underlying idea: the normal VB6 interface was the preferred execution path, while a lightweight external watchdog and local HTML page provided a second path if startup did not complete successfully.

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

## 11. Built in network tools

By May 2005, the PC World interface had developed a complete group of networking utilities integrated directly into `CD.exe`. These tools were accessible from the same graphical shell used for the software catalog and embedded browser, so network diagnostics, Internet access and CD content remained part of one application rather than being split across unrelated external programs. The networking functions were implemented around the Winsock and Windows networking facilities available to Visual Basic 6. They included Ping and response time measurements, TCP port scanning, service identification for known ports, IP range scanning, hostname and address related functions, and an integrated HTTP server capable of exposing files from the local machine or directly from the PC World CD.

### Network tools screen

The main networking screen preserved the general structure of the PC World interface. The embedded browser controls remained visible at the top, while the central area used a world map as the visual background for the networking section. Four dedicated controls provided access to the principal tools: **Scanare IP** for IP scanning, **Viteza de raspuns** for response testing, **Scanare porturi** for TCP port scanning, and **Server Web** for the integrated HTTP server. This arrangement shows how the network functions were added as another working layer of `CD.exe` rather than as a separate utility package. The reader could move from the software catalog to Internet browsing or network diagnostics while remaining inside the same PC World shell.

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20030326.png" alt="PC World">

</div>

<hr>

The screenshot also captures the hybrid character of the application particularly well. The navigation controls at the top belong to the embedded browser environment, while the four networking commands below the map invoke native VB6 functionality and dedicated utility windows. The text visible over the map identifies the integrated browser as **version 0.6**, showing that the browser component itself was still evolving alongside the networking tools during the monthly releases. The world map was primarily a thematic background for this part of the interface, visually separating the networking functions from the ordinary software catalog while preserving the same surrounding skin, sound controls and navigation conventions. Selecting one of the four network functions did not replace the entire application; it opened the corresponding diagnostic or server interface on top of, or in conjunction with, the main PC World environment. This screen therefore acted as the central entry point for the networking subsystem. From here, the user could test the reachability and response time of another host, scan TCP ports on a selected machine, search ranges of IP addresses for a particular service, or start the integrated HTTP server. The following subsections document these functions individually and show the information produced by each tool.


<hr>


### Ping and response time testing

The **Viteza de raspuns** function opened a dedicated Ping window. The user could specify the destination IP address, the number of requests and the packet size. The application then displayed the reply information for each packet, including the returned size, round trip time and TTL value. The utility was designed as a graphical equivalent of the familiar command line Ping diagnostic, but with the principal test parameters exposed directly in the interface. The **Ping** control determines how many requests are issued, while **Pachet** specifies the packet size. The destination can be entered either as an IP address or as a host address, allowing the same window to be used for quick reachability checks or for a longer sequence of measurements.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20030511.png" alt="PC World">

</div>

During the test, every successful reply is appended to the result window rather than replacing the previous one. Each line records the responding address together with the number of returned bytes, the measured **RTT** and the **TTL** value. This makes it possible to observe individual responses as the test progresses and to notice changes in latency or missing replies instead of receiving only a final summary. In the preserved example, the destination is `192.168.1.5`. The program repeatedly receives 32 byte replies with a reported round trip time of approximately zero milliseconds and a TTL value of `128`. At the end of the test, it calculates and displays the approximate average response time. The capture therefore shows both the individual measurements recorded during the test and the final summary produced by the utility.


<hr>

### TCP port scanner

The **Scanare porturi** function tested a selected range of TCP ports on one target machine. The user entered the target IP address together with the first and last port to be scanned, after which the program attempted connections throughout that range and reported ports that responded. Internally, the scanner performs ordinary TCP connection attempts through the VB6 Winsock control. For each candidate port, the program assigns the target host and port and calls `Connect`. A port is considered open when the Winsock `Connect` event is successfully raised; failed connection attempts are closed and the scan continues with the next port. The implementation therefore corresponds to what would now normally be described as a **TCP connect scan**, rather than a raw packet or UDP scanner. The scanner also contains a small service identification table. When an open port corresponds to a known port number, the result is supplemented with a human readable service name. This allowed the output to provide more useful information than the port number alone. Unknown open ports were still reported, but without an associated service description.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20030612.png" alt="PC World">

</div>

During execution, the current port is continuously displayed in the status area, while detected services are appended to the result window together with timestamps. The scan could cover almost the complete TCP port space, but it could also be stopped manually before reaching the selected upper limit. This made the same tool useful both for short targeted checks and for much longer full range scans. The screenshot shows a scan of `192.168.1.5` beginning at port `1` and progressing through the TCP range. Ports `135`, `139` and `445` are detected as open. The program also associates several known port numbers with recognizable service names, including **DCE endpoint resolution**, **NETBIOS Session Service** and **Microsoft DS**. The status line continuously reports the port currently being tested. The preserved execution also shows that a running scan could be interrupted before reaching the requested upper limit.

<hr>


### Complete TCP port scan

The screenshot below isolates the port scanner window in order to show the result of a complete scan more clearly. It is not a separate or standalone scanner. The same TCP scanning component shown above is presented here after completing a scan of the target `192.168.1.5` across the full port range, from port `1` to port `65536`. The result window records each detected open port together with the time at which it was found. When the port number corresponds to a known service, the scanner also displays its name.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-02%20010912.png" alt="PC World">

</div>

In this example, ports `135`, `139` and `445` are identified respectively as **DCE endpoint resolution**, **NETBIOS Session Service** and **Microsoft DS**. Other detected ports, including `623`, `5040` and `16992`, are reported as open even when the application does not have a corresponding service name in its internal list. The first line records the target address, the requested port range and the scan start time, while the final line reports that the scan has completed and records the completion time. The status bar at the bottom also shows the current port during execution. This capture therefore provides a more complete view of the information produced by the port scanner during an actual full range scan.


<hr>

### IP range scanner

The project also contains a separate **Scanner IP de precizie**. Instead of testing many ports on one machine, this utility examines a range of IP addresses while testing one selected TCP port. This utility complements the TCP port scanner by reversing the scanning logic. Instead of probing many ports on one host, it probes one selected port across many IP addresses. The purpose was to identify systems exposing a specific service within a given address interval, making the tool suitable for simple local-network discovery and service-oriented host enumeration. The screenshot below shows the preserved **Scanner IP de precizie** interface. The user provides the start and end IP addresses as separate octets and selects the target port to be tested. During execution, the application advances through the requested range and writes the results to the log window, reporting which hosts respond on the selected port.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20030424.png" alt="PC World">

</div>

The start and end addresses are entered as four separate octets. In the preserved example, the range begins at `127.0.0.19` and extends to `255.255.255.255`, with port `139` selected for the test. The application advances through the requested address range and reports hosts for which the selected port can be reached. The two scanning tools therefore performed complementary tasks. The port scanner examined many TCP ports on one IP address, while the IP scanner examined many IP addresses using one selected port.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/scan.png" alt="PC World">

</div>

<hr>

### Inter Server v1.0 beta

The most substantial network component was **Inter Server v1.0 beta**, a small HTTP server implemented directly in Visual Basic 6. The server interface allowed the user to select a root directory and choose the TCP port on which the HTTP service would listen. Port `80` was used by default. A directory tree on the right side of the window provided direct selection of the server root, while the main panel displayed the active configuration, connection status and transfer information. The screenshot shows the server pointed directly into the preserved PC World directory structure, with the `aferent` directory visible in the selected tree.

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20030646.png" alt="PC World">

</div>

This allowed material normally consumed locally by `CD.exe` to be exposed through HTTP instead. The implementation uses Winsock to accept incoming connections, process HTTP requests, construct response headers, resolve requested paths under the selected root directory and transmit the corresponding files. It therefore operated as a small standalone web server without requiring Apache, IIS or another external server package. One practical use was to share the contents of the PC World CD with another computer on the same network. The machine containing the CD could run Inter Server, select the relevant directory as the server root, and make those files available to a browser on another system. Inter-Server v1.0 was a functional HTTP file server, not only an HTML presentation server. It could enumerate directories and transmit arbitrary files from the selected server root, including executable installers, ZIP archives, images, audio and video files. Large files were streamed in 2 KB blocks through the VB6 Winsock control. Consequently, another computer on the network could browse the exposed PC World CD directory and download the actual software packages directly through a web browser.

<hr>

### Browsing the PC World content through HTTP

The final screenshot shows the other side of this mechanism. **Inter Server v1.0 beta** is running locally, while a standard web browser connects to `localhost` and receives a PC World page generated from the served content. The page identifies itself as **PC World Web Server** and **Inter Server v1.0 beta**. It exposes the software catalog through an HTML interface containing a category selector, a list of programs, a description field and the capture associated with the selected entry. 

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/PCW_Mai_2005/Screenshot%202026-08-26%20031150.png" alt="PC World">

</div>

<hr>

In the example, **Imperial Glory** is selected and its image and textual description are displayed in the browser. This is significant because the HTTP server reused the same content model already employed by the local CD application. Program names, descriptions and presentation images were not restricted to the native VB6 shell. The same material could also be presented through HTML and delivered to another browser over the network. The two access paths can be summarized as follows:

<hr>

<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/old/server.png" alt="PC World">

</div>

<hr>

On a local network, another machine could therefore browse material from the disc without having the physical CD inserted in that computer. If the host machine had a publicly reachable IP address and the necessary network configuration, the same HTTP mechanism could in principle expose the selected content beyond the local network as well. By this stage of development, the PC World environment included software distribution, local HTML presentation, Internet browsing, Ping and response testing, TCP port scanning, service identification, IP range scanning and HTTP serving inside the same application family. These network tools were an extension of the architecture already used throughout the project, combining VB6 application logic, Winsock networking, the embedded browser and the generated CD content structure.

---


## 12. Other operating system integration

A significant part of `CD.exe` communicates directly with Windows rather than relying only on standard Visual Basic 6 controls. The source contains numerous calls to the Win32 API for controlling windows, interacting with the desktop and taskbar, launching external programs, handling multimedia and performing low level graphical operations. This allowed the custom PC World interface to behave much less like a conventional VB6 form and much more like an application integrated with the Windows desktop environment. Several of these calls are related directly to the unusual graphical interface. `SetParent` is used to change the parent of windows and embed or reposition them inside other interface elements, while `MoveWindow` and `SetWindowPos` provide precise control over their size and position. Borderless forms could still be moved by the user through `SendMessage`, reproducing normal window dragging even when the standard Windows title bar was absent. These techniques were particularly useful because much of the PC World interface replaced conventional window decoration with its own graphical skin.

The application also interacts with the Windows shell. `SystemParametersInfo` is used for desktop wallpaper operations, while taskbar and AppBar related API calls allow the program to query or manipulate elements of the Windows desktop environment. `Shell_NotifyIcon` provides access to the system tray, and `ShellExecute` is used throughout the project to open documents, launch executables and delegate files or URLs to the applications registered by Windows. Multimedia support also extends outside the normal VB6 control set. Functions from `winmm.dll` are used for audio and video playback, including the MCI functionality used elsewhere in the project for the introductory AVI. Graphics related operations rely extensively on `gdi32.dll`, which complements the custom bitmap, GIF and interface rendering code described in previous sections.

File handling similarly mixes ordinary Visual Basic operations with direct binary access and explicit file copying. This was important because `CD.exe` continuously worked with resources stored on the disc, generated configuration files, temporary local files and software packages that could be installed, executed or copied to the user's computer. The result is a fairly extensive Win32 layer underneath the visible VB6 interface. Although the application was developed in Visual Basic 6, many of the behaviors visible to the reader depended on direct interaction with Windows APIs for window management, desktop integration, multimedia, graphics, file operations and process launching. This combination of VB6 application logic with native Windows services is present throughout the surviving source code.

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


### Original/historical material

The historical source trees are preserved as working material from the original 2004 and 2005 development period, not as a later cleaned or normalized release. They therefore reflect the machines, directory layouts, tools and Windows environment on which the CDs were actually produced. The code assumes the software ecosystem of the Windows 2000/XP period and makes extensive use of Visual Basic 6, ActiveX controls, Internet Explorer components and Win32 APIs that were standard choices at the time. Several source files also retain absolute development paths used during production, for example:

```text
E:\PC_februarie\
E:\MADALIN\Generator_Matrita\
C:\PC_World\
```

These paths have intentionally been left in the historical sources because they provide useful provenance. They show where particular components were developed, generated or tested and preserve traces of the original production workflow that would disappear if every reference were modernized. They should not be interpreted as installation requirements for the current archive. Some directories refer to drives or folders that no longer exist, and a historical project may require path adjustments before it can be compiled or executed on another computer. Likewise, duplicated files, obsolete references and small differences between monthly source trees are retained where they document the actual state of the project rather than being silently rewritten into a single artificial final version.


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

The project is historical software rather than a modern single command build. The closest development environment is **Microsoft Visual Basic 6.0** with a 32 bit ActiveX setup matching the references stored in the original `.vbp` files. The corresponding `.frm` and `.frx` files must remain together, and any custom `.ctl`, `.cls` and `.bas` modules referenced by a project must also be available.

The `.frx` files are especially important because they contain binary resources used by the forms. Likewise, custom `.ctl` controls may depend on associated resource files and should not be separated from them. The archive contains several experimental, intermediate and alternate modules, so the presence of a source file inside a directory does not automatically mean that it belongs to the active `.vbp` project for that particular snapshot.

Some preserved `.vbp` files still contain absolute development paths inherited from the original machines used during production. These can be adjusted for a modern local setup when necessary. Old OCX references may also need to be restored and registered in a 32 bit environment before a project can be opened or compiled correctly.

Legacy AVI playback depends on the Windows MCI subsystem and on codecs that were common at the time. On current versions of Windows, some preserved media files may therefore require repair or conversion before they can be played successfully. The HTML portions of the interface similarly assume the behavior of the legacy Internet Explorer WebBrowser component rather than that of a modern browser engine.

Several source files make extensive use of `On Error Resume Next`. This reflects the defensive programming style used to keep the CD interface running across heterogeneous consumer PCs with different Windows installations, multimedia configurations, ActiveX registrations and available system components. When restoring or debugging the projects today, this behavior should be kept in mind because an unavailable dependency may be silently ignored rather than immediately producing a visible runtime error.

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
- 2026 edits living beside 2004-2005 timestamps.

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

## Final note

For me, this repository is a snapshot of a very specific period in personal-computer history: software was still distributed physically, magazine CDs were an important way for users to discover programs, and a single CD interface had to run on an unpredictable collection of Windows machines, graphics cards, codecs and installed runtimes. What began as a casual question about distributing **Delta Memory Force V2.0** became a one-year software-production project and, eventually, this archive.

For someone browsing the repository today, it may appear simply as a collection of old Visual Basic projects, graphics, configuration files and monthly CD structures. For the programmer who created them, however, a project of this scale represents much more than source code. Every substantial software project occupies a period of one's life: particular computers, places, people, problems, routines, ideas and countless hours spent trying to make things work. Looking back at such a project twenty years later can feel almost like looking into another life, because the code preserves not only how a program worked, but also how its author thought and worked at that particular moment in time.

This is ultimately why I chose to preserve the project as completely as possible. Beyond its technical and historical value, the archive records one year of my own life as a programmer, captured in source code, interfaces, experiments, mistakes, solutions and the sixteen physical CDs that resulted from that work.


<div align="center">

<img src="https://github.com/Gagniuc/PC-World/blob/main/img/ban/set%20(II).png" alt="PC World">

</div>
