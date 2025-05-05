
param (
    [Parameter(Mandatory = $false)]
    [string]$QuoteIn
)

# Import modules 
Import-Module BurntToast

# Path to the quotations file 
$quotesPath = "C:\Users\sjcul\OneDrive\Documents\Quotes.txt"

# Test the path is valid
if (-not(Test-Path -Path $quotesPath)) {
    Write-Output "Quotes File Not Found!!!"
    New-BurntToastNotification -Text "Quotes File Not Found!!!" -ExpirationTime $expirationTime
    exit
}

# Get the contents of the quotes file (all our quotes)
$quotes = Get-Content -Path $quotesPath

# Filter out any blank lines from the quotes list
$quotes = $quotes | Where-Object { $_.Trim() -ne "" }

if ($QuoteIn) {
    if ($quotes -contains "`"$QuoteIn`"") {
        Write-Output "Quote already listed."
        exit
    } else {
        # Append the quote to the file if not already present
        Add-Content -Path $quotesPath -Value "`n`"$QuoteIn`""
        Write-Output "Quote added to the file."
        exit
    }
} 

# Generate a random odd number based on the amount of quotes 
$n = Get-Random -Maximum $quotes.Count

$expirationTime = (Get-Date).AddMinutes(5)

# Select a random quote using the above random number 
$quoteOfTheDay = $quotes[$n]

New-BurntToastNotification -Text "$quoteOfTheDay" -ExpirationTime $expirationTime