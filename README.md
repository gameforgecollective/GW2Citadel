# GW2Citadel
GW2Citadel is a lightweight Windows companion overlay for Guild Wars 2. It combines combat, healing, boons, navigation, maps, guides, and account tools in a compact interface designed to stay out of the game's way.

GW2Citadel is an independent community project. It does not automate gameplay, control your character, or bypass Guild Wars 2 protections.

## Download

Download the newest version from the [GW2Citadel Releases page](https://github.com/gameforgecollective/GW2Citadel/releases/latest).

**Current version: v0.1.54.2 - Exit Crash Hotfix**

Download: `GW2Citadel-v0.1.54.2-Exit-Crash-Hotfix.zip`

### Exit-crash fixer

If Guild Wars 2 crashes while closing and `arcdps_lastcrash.log` identifies `arcdps_bridge.dll`, close the game and run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\GW2Citadel-ExitCrash-Fixer.ps1
```

The fixer verifies the patched DLL with SHA-256 and creates a timestamped backup before installation. To undo it, add `-Restore` to the command. The patch is for `arcdps_bridge` v1.0.4 and does not change the bridge protocol.

## Interface

The compact combat and player table opens automatically. Use **MORE** to access:

- Combat, DPS, healing, and boons
- NPC and WvW siege statistics
- Navigation, Tyria maps, and WvW maps
- Guild Wars 2 API tools and GW2Efficiency
- Elite Insights
- Community websites, guild resources, builds, and guides
- Add-on checks, encounter resets, timers, and detailed columns

The v0.1.54.2 hotfix adds a verified, reversible fix for the `arcdps_bridge.dll` shutdown crash. No statistics, websites, guild resources, or other tools were removed.

## Main features

- Compact movable in-game overlay
- Always-on-top and behind-game controls
- Guild Wars 2 process detection
- Mumble Link map and character-position support
- Combat, damage, DPS, healing, and boon tables
- Player, profession, NPC, pet, summon, and siege identification
- Shared encounter timer with automatic reset
- WvW and PvP support
- Tyria and WvW map tools
- Guild Wars 2 API integration
- Optional Discord webhook battle reports
- Built-in lightweight browser for community resources
- Reduced background CPU and memory activity

## Installation

1. Download `GW2Citadel-v0.1.53.1-Hotfix.zip`.
2. Extract the complete ZIP into a normal folder.
3. Keep all included files and folders together.
4. Run `GW2Citadel.exe`.
5. Start Guild Wars 2.

Guild Wars 2 and GW2Citadel should use the same administrator permission level when Mumble Link cannot be accessed.

## Antivirus-friendly package

The stable core package does not bundle third-party game add-on DLLs or executables. It contains no command scripts, debug symbols, logs, browser cache, or automatic binary installer. A SHA-256 manifest is included.

GW2Citadel remains an unsigned community application, so reputation-based warnings are still possible. Only download it from this official repository and verify the checksum published with the release.

## Optional add-ons

Install optional providers manually from their official projects:

- [arcDPS](https://www.deltaconnected.com/arcdps/x64)
- [arcDPS Healing Stats](https://github.com/Krappa322/arcdps_healing_stats)
- [GW2 ArcDPS Boon Table](https://github.com/knoxfighter/GW2-ArcDPS-Boon-Table)
- [arcdps_bridge](https://github.com/knobin/arcdps_bridge)
- [axibridge](https://github.com/darkharasho/axibridge)
- [GW2-SCT](https://github.com/jake-greygoose/GW2-SCT)

GW2Citadel can display information supplied by compatible providers, but it cannot create data that a provider does not expose.

## Community resources

**MORE → TOOLS AND GUIDES** provides access to:

- [Guild Wars 2 Wiki](https://wiki.guildwars2.com/wiki/Main_Page)
- [GW2Efficiency](https://gw2efficiency.com/)
- [GW2Mists](https://gw2mists.com/en)
- [GuildJen Builds](https://guildjen.com/gw2-builds/)
- [Snow Crows](https://snowcrows.com/)
- [Hardstuck](https://hardstuck.gg/)
- [That Shaman World Map](https://thatshaman.com/tools/worldmap/)
- [GW2 Elite Insights Parser](https://github.com/baaron4/GW2-Elite-Insights-Parser)

These independent resources are owned by their respective creators and are not affiliated with GW2Citadel.

## Guild Wars 2 API

Public information works without a key. Private account, character, build, inventory, and equipment information requires an ArenaNet API key with the appropriate permissions. Create one through the official [Guild Wars 2 account website](https://account.arena.net/applications).

Never publish an API key or Discord webhook URL.

## Troubleshooting

### Guild Wars 2 is not detected

- Make sure Guild Wars 2 is running.
- Match the administrator permission level of both programs.
- Restart GW2Citadel after reaching character selection.

### Mumble Link is unavailable

- Enable the game's Mumble Link option.
- Match the administrator permission level of Guild Wars 2.
- Restart both applications.

### Combat tables are empty

- Confirm arcDPS is loaded.
- Confirm the required bridge or provider is installed.
- Check the provider's log for loading errors.
- Enter combat after opening GW2Citadel.

## Safety

GW2Citadel does not automate combat or movement, send gameplay input, modify Guild Wars 2, read undocumented game memory, alter network traffic, or bypass game protections.

Players remain responsible for following the [Guild Wars 2 User Agreement](https://www.guildwars2.com/en/legal/guild-wars-2-user-agreement/) and ArenaNet policies.

## Development

GW2Citadel is built for Windows using .NET 9 and WPF.

```powershell
dotnet build .\src\GW2Citadel\GW2Citadel.csproj
dotnet run --project .\src\GW2Citadel\GW2Citadel.csproj
```

Local settings are stored at `%LOCALAPPDATA%\GW2Citadel\settings.json`.

## Reporting problems

Use the repository's [Issues page](https://github.com/gameforgecollective/GW2Citadel/issues). Include the GW2Citadel version, Windows version, game mode, installed providers, reproduction steps, and a screenshot with API keys and webhook URLs hidden.

## Credits and licenses

GW2Citadel is not affiliated with or endorsed by ArenaNet or NCSOFT. Guild Wars 2 and related names and artwork belong to their respective owners. Third-party components remain subject to their original licenses; see `THIRD_PARTY_NOTICES.md`.


Credits and licenses

GW2Citadel is an independent community project and is not affiliated with or endorsed by ArenaNet or NCSOFT.

Guild Wars 2, ArenaNet, and their associated names and artwork are trademarks or registered trademarks of their respective owners.

Third-party components remain subject to their original licenses. See THIRD_PARTY_NOTICES.md for attribution and licensing details.
