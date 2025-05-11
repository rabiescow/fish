set STEAM_APP_ID 2225070
set STEAM_GAME_ID 2225070
set PROTON_VERSION "Proton 9-21"
set UBISOFT_PATH "~/.local/share/Steam/steamapps/compatdata/2225070/pfx/drive_c/Program Files (x86)/Ubisoft/Ubisoft Game Launcher/UbisoftConnect.exe"

function TrackMania
    set -l STEAM_HOME "$HOME/.local/share/Steam"
    set -l STEAM_HOME_APPS_PATH "$STEAM_HOME/steamapps"
    set -lx SteamAppId $STEAM_APP_ID
    set -lx SteamGameId $STEAM_GAME_ID

    set -l STEAM_GAME_LIBRARY "$STEAM_HOME"

    set -l STEAM_GAME_LIBRARY_APPS "$STEAM_GAME_LIBRARY/steamapps"
    set -l APP_PATH "$STEAM_GAME_LIBRARY_APPS/common/$APP_SUBPATH"
    cd "$APP_PATH"
    set -l APP_EXEC_FULL_PATH "$APP_PATH/$APP_EXEC"

    set -lx STEAM_COMPAT_CLIENT_INSTALL_PATH "$STEAM_GAME_LIBRARY_APPS"
    set -lx STEAM_COMPAT_DATA_PATH "$STEAM_GAME_LIBRARY_APPS/compatdata/$SteamAppId"

    set -l PROTON_PATH "$STEAM_HOME_APPS_PATH/common/$PROTON_VERSION"
    set -l PROTON_EXEC "$PROTON_PATH/proton"

    set -x WINEPREFIX "$STEAM_COMPAT_DATA_PATH/pfx"
    set -x PROTON_USE_D9VK 1
    set -x PROTON_NO_ESYNC 1
    set -x WINEDLLOVERRIDES "steam.exe=b;dotnetfx35.exe=b"
    set -x PROTON_USE_WINED3D 1
    exec python "$PROTON_EXEC" run "$UBISOFT_PATH" --skip-launcher
end
