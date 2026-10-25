# Flop Launcher

Desktop launcher for Minecraft Java with **instances** and a **built-in Modrinth browser**.

- Create isolated instances (each one has its own folder with `mods/`, `config/`, saves and so on)
- Search Fabric mods on Modrinth for the instance's Minecraft version
- Click Install: the jar is downloaded into `instances/<name>/mods/` together with all **required dependencies**
  (for example Fabric API), and every file is checked with its SHA-1 hash
- Fabric Loader is installed automatically when you press Play
- Sign in with your Microsoft account (you must own Minecraft Java Edition)
- Import an instance you built on the Flop website (`flop-instance.json`)

## Run it
1. Install **Node.js 20+** and **Java 25** (needed for Minecraft 26.x).
2. `npm install`
3. `npm start`
4. Build an installer: `npm run dist` (creates an .exe, .dmg or .AppImage in `dist/`)

## Where the files live
- Windows: `%APPDATA%/flop-launcher/instances/`
- macOS: `~/Library/Application Support/flop-launcher/instances/`
- Linux: `~/.config/flop-launcher/instances/`

## Notes
- This source was written for this project and has **not been run yet**. Run `npm test` to check the Modrinth
  resolver against the live API.
- Java path: if Java 25 is not on your PATH, set it in the launcher's Settings field.
