#class critical_policy($wmikey='01 00 04 80 44 00 00 00 54 00 00 00 00 00 00 00 14 00 00 00 02 00 30 00 02 00 00 00 00 00 14 00 ff 0f 12 00 01 01 00 00 00 00 00 05 12 00 00 00 00 00 14 00 e1 04 12 00 01 01 00 00 00 00 00 05 0b 00 00 00 01 02 00 00 00 00 00 05 20 00 00 00 20 02 00 00 01 02 00 00 00 00 00 05 20 00 00 00 20 02 00 00') {
  #registry::value { 'Legal notice caption':
   # key   => 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System',
   # value => 'legalnoticecaption',
   # data  => 'Legal Notice',
  #}

  #registry::value { 'Legal notice text':
   #key   => 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System',
    #value => 'legalnoticetext',
    #data  => 'Login constitutes acceptance of the End User Agreement',
    #}
#if ($facts['operatingsystemmajrelease']=='2019'){

  #registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection\696C1FA1-4030-4FA4-8713-FAF9B2EA7C0A':
    #ensure => absent,
    #}
  #registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection\DisableEnterpriseAuthProxy':
    #ensure => present,
    #type  => dword,
    #data  => '1',
    #}
  #registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection\ForceDefenderPassiveMode':
   # ensure => present,
   # type  => dword,
    #data  => '1',
   # }

  #registry_value{'HKLM\SYSTEM\CurrentControlSet\Control\WMI\Security\14f8138e-3b61-580b-544b-2609378ae460':
   # ensure => present,
    #type => binary,
    #data  => '01 00 04 80 44 00 00 00 54 00 00 00 00 00 00 00 14 00 00 00 02 00 30 00 02 00 00 00 00 00 14 00 ff 0f 12 00 01 01 00 00 00 00 00 05 12 00 00 00 00 00 14 00 e1 04 12 00 01 01 00 00 00 00 00 05 0b 00 00 00 01 02 00 00 00 00 00 05 20 00 00 00 20 02 00 00 01 02 00 00 00 00 00 05 20 00 00 00 20 02 00 00',
    #data => $wmikey,
    #}
	#registry_value{'HKLM\SYSTEM\CurrentControlSet\Control\WMI\Security\1cb2ff72d-d4e4-585d-33f9-f3a395c40be7':
    #ensure => present,
    #type => binary,
    #data  => '01 00 04 80 44 00 00 00 54 00 00 00 00 00 00 00 14 00 00 00 02 00 30 00 02 00 00 00 00 00 14 00 ff 0f 12 00 01 01 00 00 00 00 00 05 12 00 00 00 00 00 14 00 e1 04 12 00 01 01 00 00 00 00 00 05 0b 00 00 00 01 02 00 00 00 00 00 05 20 00 00 00 20 02 00 00 01 02 00 00 00 00 00 05 20 00 00 00 20 02 00 00',
    #data =>$wmikey,
    #}
  #registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection\OnboardingInfo':
   # ensure => present,
   # data  => '{"body":"{\"previousOrgIds\":[],\"orgId\":\"0d0689b1-2821-4197-a60e-7c963a275f8b\",\"geoLocationUrl\":\"https://winatp-gw-cus3.microsoft.com/\",\"datacenter\":\"CentralUs3\",\"vortexGeoLocation\":\"US\",\"version\":\"1.35\"}","sig":"k4DDCURrQaDQpWHzDVdIDbONqSBqNQcp3Qa0HDhNq7hJj8gA9bznEEv8JVy3OgmelzISTEccRsH0D4Kg3ayuM7WQLKQpLPs9U8xf1VO4NQeHOmDe0cc+8ivfdEJ9gXnaTbhAMFsriEiPufl/rMB2BkHPqXzcW3vKfcgeQAbG3zkcKrpUe8YyluzdEx8JkNZPBDx41T3VJ+Pib/VokwVvvsbnC5wLnkyKOjvXOxzGw/YIF5acjak/66QRmZSiXqOmzsqIqAQ4TOhCwrlv0/L6YVRPoeAme+GJsPL3ifx1r7oPQ1HlzAnIvDJp+GTDe9UYExO9+a3Z0HxlJBO35hMLYQ==","sha256sig":"KAfwS49zdxNJa+gs2dofe2GZP5GZ6ytnbyUM3inYJrC8PLhCd8H6qttVMzx6xFunhj80rsCrYnRERdmLkTBqZy7gM6JCRs4mP9KJk+shlnOa8a6yk/pzXFyg3IXkGcvDsGkiytMhum9FlqYKAD61+z9FRIAXjSfaVQm3y2AzMqkQ7RKft5EkWQaGA3+wUCiD8ehENXK6vX+VNYIXorJc7nHu2Aq/vdRtcPV9q2ZTgPJCTBJaV+hk1aI0FHFVErHb1k58HVEH+Q/bUMlaHMbIqmCrC+U8qioSvlkvhQ7h2tFq7FHbMhR3JF9K3awL3Llqyw+Zmm9v0RshvkwSffm+Gg==","cert":"MIIFgzCCA2ugAwIBAgITMwAAAbnvaa3BtdDiyQAAAAABuTANBgkqhkiG9w0BAQsFADB+MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYDVQQDEx9NaWNyb3NvZnQgU2VjdXJlIFNlcnZlciBDQSAyMDExMB4XDTIxMDcwMTE5MTQ0OFoXDTIyMDcwMTE5MTQ0OFowHjEcMBoGA1UEAxMTU2V2aWxsZS5XaW5kb3dzLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANwQqmQnh8zPAWsIqT9w8fO/isnLjIq7xGqSBGJd85GZRC2PS/hHJEtxLhKblzBiPwu9MAEkDx6yp+uDpf1hMkIYDo47D/R67fvAcQ0TJ82TdBs8byYBsIsyulf16Tw6QMyZssaDd7W9wFc1pTmB60B6ybx9BVcGxHe5HMzNfmWpcC/+jl9DZpJTAJPjPGmw4JBe2uTkx/M3kfohWjD6vTzLCDtFGU+YvK9n/Tky8AYy7iOflff4HsqrQfsjvLPB4Eqf5DH6dd+OpfScpmpWq23GTVwYMLIVtkgG3pzWS6Gt1f7wxFjpV0qFKix/ROQ+QqcsXisymMdLEP07mhYpeVECAwEAAaOCAVgwggFUMA4GA1UdDwEB/wQEAwIFIDAdBgNVHSUEFjAUBggrBgEFBQcDAQYIKwYBBQUHAwIwDAYDVR0TAQH/BAIwADAeBgNVHREEFzAVghNTZXZpbGxlLldpbmRvd3MuY29tMB0GA1UdDgQWBBRiSr3YSZ29UH7giX6oEKqOUnf85jAfBgNVHSMEGDAWgBQ2VollSctbmy88rEIWUE2RuTPXkTBTBgNVHR8ETDBKMEigRqBEhkJodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NybC9NaWNTZWNTZXJDQTIwMTFfMjAxMS0xMC0xOC5jcmwwYAYIKwYBBQUHAQEEVDBSMFAGCCsGAQUFBzAChkRodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY1NlY1NlckNBMjAxMV8yMDExLTEwLTE4LmNydDANBgkqhkiG9w0BAQsFAAOCAgEANseRAsrd/3LBKGAR9PO4QG9qXMrYcsPMmAruZGWe2hLBVdj5Vq5RaDs+PUisS08Jf5kkQBLRiwx061a4U9YrobNVdP/FUjwq8UJSHxWVr3erVSazOqCY+ZOYRQgBJBtzi4nhKV/L0+G8uxj/r2yiHBuQeWHI/eeXOd+/bw/3BkdUTgENrrtm4fXanuHyaSHj/q+g4ea/cqrOuD+iIb+gaKM/5e8pWJ0McF3dYwUvBcH0FfxKjegKrsCBU+Y+BmEir8NEHXN7ZUVGx1BiW5DOBjgjCqYo5uxE4bztMmijb5cuH3GbQXPmfGm7GKBN+S7zyA+qK4xanS4cCqaVvZpIYXoPy4CTGXyctyAFLDTybkcxuXU2UqD+k43UkrTpgvZfzAu0XeWkcmNfHsuJOp+YA3Bxq1DUAtdvNwE+oQ0LQhjvqhzE9+nTykXFQq5mVZlXYM3G/Y3lGyxDMqfyEAFnT+nYLbRhnkN6Nidhfe9MKRNSu2jKzfkmYoIGIaWW/bd7WnCDd75DhIgsCW9LHAikaT2jb+JiP9R1grsY3kf98g9KO2gIQKNyifiVYrZQn02wXVfrEh2Qelvom4lBERrU3B/W5mmph4UF3X3iU5lCv55OcoHU2FY4EusnQoxAmBMRz6yxxHZqVuc8IW3G8jxuNu0HaB9vZ+iMEkd9sEIfMpA=","chain":["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"]}',
    #before => Service['sense'],
   # }

  #exec { 'machinekayacl':
  #command   => file('critical_policy/restore-machinekeys-acl.ps1'),
  #nless    =>'if(((((((get-acl C:\\ProgramData\\Microsoft\\Crypto\\RSA\\MachineKeys).access)| select IdentityReference | ft -HideTableHeaders | Out-String).trim()) -replace "\`r\`n", "" ) -replace "              ",",") -ne "Everyone,BUILTIN\Administrators"){exit 1 }',
  #provider  => powershell,
  #}
  #exec { 'rename-guest':
  #command   => '(Get-WMIObject Win32_UserAccount -Filter "Name=\'guest\'").Rename("new-guest")',
  #onlyif    => 'if (Get-WmiObject Win32_UserAccount -Filter "Name=\'guest\'") { exit 0 }',
  #provider  => powershell,
  #}
  #service { 'sense':
   # ensure  => 'running',
   # enable  => true,
    #timeout =>120,
#}
#}
#}
