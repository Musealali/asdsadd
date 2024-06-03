# Define variables
$commitCount = 1000
$repoPath = "C:\Users\Muslim\Desktop\asdasd\asdsadd"  # Change this to your repository path
$filePath = "$repoPath\example.txt"

# Navigate to the repository
Set-Location -Path $repoPath

# Loop to create commits
for ($i = 1; $i -le $commitCount; $i++) {
    # Make a change to a file
    Add-Content -Path $filePath -Value "Commit number $i `n"

    # Stage the changes
    git add .

    # Commit the changes
    git commit -m "Automated commit number $i"
}

Write-Host "Completed $commitCount commits."
