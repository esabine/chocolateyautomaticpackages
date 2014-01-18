$package = 'SQLSentryPlanExplorer'

try {
  # HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\
  $msiId = '{C3A314F5-28BA-4395-B6A4-76939840D7AE}'
  Uninstall-ChocolateyPackage $package 'MSI' -SilentArgs "$msiId /qb" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw 
}
