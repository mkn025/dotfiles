

$env.EDITOR             = 'nvim'
$env.config.edit_mode   = 'vi'
$env.config.show_banner = false

$env.PATH ++= ['/opt/homebrew/bin','/Users/martineldeknutsen/.ghcup/bin' '/Users/martineldeknutsen/.cabal/bin']     



zoxide init nushell | save -f ~/.zoxide.nu

$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense' # optional
mkdir $"($nu.cache-dir)"
carapace _carapace nushell | save --force $"($nu.cache-dir)/carapace.nu"




