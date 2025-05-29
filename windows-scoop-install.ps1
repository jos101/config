scoop install git
scoop bucket add extras
scoop bucker add versions

$apps = ("neovim", "starship", "wezterm", "lsd", "zoxide", "mingw-winlibs-llvm-msvcrt")

$apps | ForEach-Object { scoop install $_}
