function DisneyDreamlightValley
    set -l STEAM_HOME "$HOME/.local/share/Steam"
    set -l STEAM_HOME_APPS_PATH "$STEAM_HOME/steamapps"
    set -lx SteamAppId 1401590
    set -lx SteamGameId 1401590

    set -l PROTON_VERSION "Proton 9-21"
    set -l STEAM_GAME_LIBRARY "$STEAM_HOME"

    set -l APP_SUBPATH "Disney Dreamlight Valley"
    set -l APP_EXEC "ddv.exe"

    set -l STEAM_GAME_LIBRARY_APPS "$STEAM_GAME_LIBRARY/steamapps"
    set -l APP_PATH "$STEAM_GAME_LIBRARY_APPS/common/$APP_SUBPATH"
    cd "$APP_PATH"
    set -l APP_EXEC_FULL_PATH "$APP_PATH/$APP_EXEC"

    set -lx STEAM_COMPAT_CLIENT_INSTALL_PATH "$STEAM_GAME_LIBRARY_APPS"
    set -lx STEAM_COMPAT_DATA_PATH "$STEAM_GAME_LIBRARY_APPS/compatdata/$SteamAppId"

    set -l PROTON_PATH "$STEAM_HOME_APPS_PATH/common/$PROTON_VERSION"
    set -l PROTON_EXEC "$PROTON_PATH/proton"

    set -x PROTON_USE_WINED3D 1
    exec python "$PROTON_EXEC" run "$APP_EXEC_FULL_PATH" --skip-launcher
end
