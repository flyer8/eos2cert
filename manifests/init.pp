class eos2cert {
#===EMC cert installing===
case $operatingsystem {
      centos, redhat: {
$file_ca = '/etc/pki/ca-trust/source/anchors/emc_ca.crt'
$file_ssl = '/etc/pki/ca-trust/source/anchors/emc_ssl.crt'
$cert_extr = '/usr/bin/update-ca-trust extract'
    }
      debian, ubuntu: {
$file_ca = '/usr/local/share/ca-certificates/emc_ca.crt'
$file_ssl = '/usr/local/share/ca-certificates/emc_ssl.crt'
$cert_extr = '/usr/sbin/update-ca-certificates'
    }
}
#===Set Cert files===
file { $file_ca:
ensure => present,
content => "-----BEGIN CERTIFICATE-----
MIIDajCCAlKgAwIBAgIQDnpJf/sai2ikg8QrEDRcejANBgkqhkiG9w0BAQUFADA9
MQswCQYDVQQGEwJVUzEYMBYGA1UEChMPRU1DIENvcnBvcmF0aW9uMRQwEgYDVQQD
EwtFTUMgUm9vdCBDQTAeFw0xMTAzMDgwMjM1MThaFw0yNjAzMDgwMjM1MThaMD0x
CzAJBgNVBAYTAlVTMRgwFgYDVQQKEw9FTUMgQ29ycG9yYXRpb24xFDASBgNVBAMT
C0VNQyBSb290IENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwEV0
QaykbhIOVKj1BunB8pXsISlXgiv10QSGSxG2Dnbwoli0WSgPpLqPD8bsQuwjReg0
ERGXTXpxDEpb4Kya+YcIr4KGMd+EIdLjogXnrKv1/EWa54UNNjNLU6tkwEnVQ79p
Sbx2weCxEi+VG755+Bbb5AJKDcgk4ss5hXjI8tOzAgHe+tReNQamMSOgCO+4bZJ1
RBalcYHmGxVz2TbK0qrKKC7Um4ALQfRQejB+TuvYMoTZHD8Wm/e3Hdq7wwTOmQUL
/hG4+J+k4fl8WUtf4M6CzmeYVnEpZ34wk4H/1bRmFI9jvEQlmu/uKmFZ8DPOvK8j
YJCPft/fWOLkCZOSPwIDAQABo2YwZDAOBgNVHQ8BAf8EBAMCAYYwEgYDVR0TAQH/
BAgwBgEB/wIBAzAdBgNVHQ4EFgQUjyKad6YrWTr8z+fAlE5VRpSg/zQwHwYDVR0j
BBgwFoAUjyKad6YrWTr8z+fAlE5VRpSg/zQwDQYJKoZIhvcNAQEFBQADggEBALaL
B5rAo9GLri9vvYMIkMwtI4SFYeftNrY47YA4o49sbCVlgdmzUXWk48aevoUZRl6/
rEPFbTxaZUbmjOv+XO+bGFA3T57RS6rAFeGBai/UirrckJhGgusAVU5lFtO31Mgm
W3cPXqV+PXwwHKbgLRCeTJFK3Rw68TxBqazMjNp4WufdnPC379Fg/zeKrCLwgsa4
AVFHmeIadvijSQBpY0bFzsSZGF/PmAh+NiYJpWRdDXfeeQStdZWxPESbWoXPu/Qg
0dIifLaHr2Nugkg8eTcp+F2rl2YIjnQcEFqOUNhyI8kPzzsWinYel47tC9kDL7qR
s34MLubs2L1iMIk7fJ4=
-----END CERTIFICATE-----
",
mode => "0644",
owner => 'root',
group => 'root'
}
file { $file_ssl:
ensure => present,
content => "-----BEGIN CERTIFICATE-----
MIIEszCCA5ugAwIBAgIRAIcKs14u6wcdixs8zCVb2eIwDQYJKoZIhvcNAQEFBQAw
PTELMAkGA1UEBhMCVVMxGDAWBgNVBAoTD0VNQyBDb3Jwb3JhdGlvbjEUMBIGA1UE
AxMLRU1DIFJvb3QgQ0EwHhcNMTExMDA1MTc0MzQ4WhcNMjExMDA1MTc0MzQ5WjCB
nDElMCMGCSqGSIb3DQEJARYWd2ViZmlsdGVyYWRtaW5AZW1jLmNvbTELMAkGA1UE
BhMCVVMxGDAWBgNVBAoTD0VNQyBDb3Jwb3JhdGlvbjElMCMGA1UECxMcR2xvYmFs
IFNlY3VyaXR5IE9yZ2FuaXphdGlvbjElMCMGA1UEAxMcRU1DIFNTTCBEZWNyeXB0
aW9uIEF1dGhvcml0eTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAN1i
2ZE49gUpKmsKmRyGkNRrsnocJ9lkpIAxUbtECxtmLkTlU2iC8XXGCrrIThDmmWex
/Ijch/NKUucJnv9VTUE02/herNxSLTreJsUXYLKx3+X3aYUY6b2Jr+iysUOSuqYK
QVVpoeIV1TH4J0JLdcM3KJsorCdpTVDv9kS1LLFT7/LPzQVDb96MyUEVWF1Sg95g
c/cUexeaRY2RnleLy56ezoRP24eBuqD9z65rpbKfJd7tfhPHIDOj7YFG+Z3Uq3/x
sRYg86fMvH4nOEWsYtW5Hjg01Hmwrow+z4RynShZ+r7VpV9HyQeySaU3Jskd+kGG
cfKnYrDY+Tie1TXEW3kCAwEAAaOCAUwwggFIMIHhBgNVHR8EgdkwgdYwgZyggZmg
gZaGgZNsZGFwOi8vL0NOPUVNQyBSb290IENBLENOPUVNQyBSb290IENBLENOPUNE
UCxDTj1QdWJsaWMgS2V5IFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3Vy
YXRpb24sREM9ZW1jcm9vdCxEQz1lbWMsREM9Y29tP2NlcnRpZmljYXRlUmV2b2Nh
dGlvbkxpc3QwNaAzoDGGL2h0dHA6Ly9wa2kuY29ycC5lbWMuY29tL2NybC9FTUMl
MjBSb290JTIwQ0EuY3JsMA4GA1UdDwEB/wQEAwIBhjAfBgNVHSMEGDAWgBSPIpp3
pitZOvzP58CUTlVGlKD/NDASBgNVHRMBAf8ECDAGAQH/AgECMB0GA1UdDgQWBBTL
MHNagYTKRN+PAb6GTMFMUHnM+jANBgkqhkiG9w0BAQUFAAOCAQEAOII2xpXKxC1Q
50mWqzq+id1wxvthX4GPbHRPz1YYcgadyQJv5JKk3oEMCl8Yvmxka67hE1eMmU6n
eP/8U7PSApbAKs5wtdBGF3+fdYt7GZsjzhZieV+JdBBIAyZHeCIHlDlqbrto5wfe
oM3vO5+rWvBpBXCXFNx0K5Mkba1bCml90NZZuZa0UNADQAXNQ/c7D/b4h3cg9TQk
MHMX+9Tq8mNuH8mpt1SRLbii/ATQYq8gbMNWzlpdGr9/qBS53mlTV+W+qR42BTC0
ut4gIntRJJEfRcwyX3/eN0SObFVOgikvtFq2kZr8Vd6O+Y+BAzAf5VaihCYyN2eJ
OAQuugcJuA==
-----END CERTIFICATE-----
",
mode => "0644",
owner => 'root',
group => 'root'
}
exec { 'update-ca':
    require => File[$file_ca, $file_ssl],
    command => $cert_extr,
}
}
