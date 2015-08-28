Get-ChildItem -filter "*Project.Name*" -Recurse | Rename-Item -NewName { $_.Name -replace "Project.Name","New.Website" }


$files=get-childitem . *.* -rec | where { ! $_.PSIsContainer }
foreach ($file in $files)
{
    (Get-Content $file.PSPath) | Foreach-Object {$_ -replace "Project.Name", "New.Website"} | Set-Content $file.PSPath
}

