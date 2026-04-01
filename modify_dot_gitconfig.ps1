# chezmoi modify script for ~/.gitconfig
# Reads the current .gitconfig from stdin, ensures the [include] for
# delta config is present, and writes the result to stdout.

$content = [Console]::In.ReadToEnd()

if ($content -notmatch 'path\s*=\s*~/\.gitconfig-delta') {
    if ($content.Length -gt 0 -and -not $content.EndsWith("`n")) {
        $content += "`n"
    }
    $content += "[include]`n`tpath = ~/.gitconfig-delta`n"
}

[Console]::Out.Write($content)
