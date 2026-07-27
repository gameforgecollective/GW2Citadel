# GW2Citadel
GW2Citadel is a lightweight companion overlay for Guild Wars 2. It brings combat information, healing, boons, navigation tools, maps, guides, and account information into one customizable interface.

GW2Citadel is an independent community project. It does not automate gameplay, control your character, or bypass Guild Wars 2 protections.

Download

Download the newest version from the GW2Citadel Releases page.

Current version: v0.1.51

Main features

Movable and resizable in-game overlay

Always-on-top and hide-behind-game controls

Guild Wars 2 game detection

Mumble Link map and character-position support

Combat, damage, DPS, healing, and boon tables

Player, profession, NPC, pet, summon, and siege identification

Shared encounter timer and automatic table reset

Adjustable reset duration

WvW and PvP support

Tyria and WvW map tools

Guild Wars 2 API integration

Discord webhook battle reports

Built-in lightweight browser for community websites and guides

Local settings saved between launches

Reduced background CPU usage

Installation

Download GW2Citadel-v0.1.51.zip.

Extract the entire ZIP into a normal folder.

Keep all included files and folders together.

Run GW2Citadel.exe.

Start Guild Wars 2.

If Mumble Link cannot be accessed, close GW2Citadel and use:

Open GW2Citadel as Administrator.cmd

Guild Wars 2 and GW2Citadel should normally run with the same administrator permission level.

Optional game add-ons

Some combat, healing, and boon information requires arcDPS and compatible providers. Use:

Install GW2Citadel Game Add-ons.cmd

Only install add-ons you trust and keep them updated from their official projects:

arcDPS

arcDPS Healing Stats

GW2 ArcDPS Boon Table

arcdps_bridge

axibridge

GW2Citadel can detect installed providers, but it cannot create data that an external provider does not expose.

Guild Wars 2 API

Public game information works without an API key. Private account, character, build, inventory, and equipment information requires an ArenaNet API key with the appropriate permissions.

Create a key through the official Guild Wars 2 account website.

Your API key is stored locally using Windows Credential Manager. Never post your API key publicly or include it in bug reports.

Discord reports

GW2Citadel can send selected encounter summaries to a Discord webhook after a battle. Reports can include combat results and win-or-loss information.

Webhook posting is optional and must be enabled by the user. Treat webhook URLs like passwords and never publish them in screenshots, source files, or public issues.

Community resources

GW2Citadel provides convenient access to independent community resources:

Guild Wars 2 Wiki

GW2Efficiency

GW2Mists

GuildJen Builds

Snow Crows

Hardstuck

That Shaman World Map

GW2 Elite Insights Parser

These websites and projects are owned by their respective creators and are not affiliated with GW2Citadel.

Troubleshooting

Guild Wars 2 is not detected

Make sure Guild Wars 2 is running.

Make sure both programs use the same administrator permission level.

Restart GW2Citadel after the game reaches the character-selection screen.

Mumble Link is unavailable

Enable the game’s Mumble Link option.

Match the administrator level of Guild Wars 2.

Restart both Guild Wars 2 and GW2Citadel.

Combat tables are empty

Confirm arcDPS is loaded in Guild Wars 2.

Confirm the required bridge or provider is installed.

Check the provider’s log file for loading errors.

Enter combat after opening GW2Citadel.

Windows security software flags the application

GW2Citadel is currently distributed as an unsigned community application. Some security programs may be cautious about new unsigned executable files.

Only download GW2Citadel from this official repository. Verify the SHA-256 checksum shown in the release notes before running it.

Safety

GW2Citadel is intended only for displaying and analyzing information.

It does not:

Automate combat or movement

Send gameplay input

Modify Guild Wars 2

Read undocumented game memory

Alter network traffic

Bypass anti-cheat or game protections

Players remain responsible for following the Guild Wars 2 User Agreement and ArenaNet policies.

Development

GW2Citadel is built for Windows using .NET 9 and WPF.

dotnet build .\src\GW2Citadel\GW2Citadel.csproj
dotnet run --project .\src\GW2Citadel\GW2Citadel.csproj

The application creates its local settings file at:

%LOCALAPPDATA%\GW2Citadel\settings.json

Reporting problems

Use the repository’s Issues page for bugs and feature requests.

When reporting a bug, include:

GW2Citadel version

Windows version

Game mode: PvE, PvP, or WvW

Installed providers and versions

A screenshot with API keys and webhook URLs hidden

Steps that reproduce the problem

Credits and licenses

GW2Citadel is an independent community project and is not affiliated with or endorsed by ArenaNet or NCSOFT.

Guild Wars 2, ArenaNet, and their associated names and artwork are trademarks or registered trademarks of their respective owners.

Third-party components remain subject to their original licenses. See THIRD_PARTY_NOTICES.md for attribution and licensing details.
