

$env.EDITOR = 'nvim'
$env.config.edit_mode = 'vi'
$env.config.show_banner = false 

$env.PATH ++= ['/opt/homebrew/bin']     

zoxide init nushell | save -f ~/.zoxide.nu

