$drive = Get-CimInstance -ClassName Win32_Volume | Where-Object { $_.Label -eq "X-Ways Portable" }
if ($drive -ne $null) {
    $sourcePath = Join-Path -Path $drive.Name -ChildPath "xwfportable"
    $destinationPath = "Path\To\Your\Docker\Context\xwfportable"
    Copy-Item -Path $sourcePath -Destination $destinationPath -Recurse
} else {
    Write-Error "USB drive not found."
}
