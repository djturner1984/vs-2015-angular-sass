$name = Read-Host 'What is your new project namespace?'

If ($name -Match " ")
{
    "No spaces allowed"
    exit
}

Get-ChildItem -filter "*Project.Name*" -Recurse | Rename-Item -NewName { $_.Name -replace "Project.Name", $name }
$files=get-childitem . *.* -rec | where { ! $_.PSIsContainer }
foreach ($file in $files)
{
    (Get-Content $file.PSPath) | Foreach-Object {$_ -replace "Project.Name", $name} | Set-Content $file.PSPath
}

