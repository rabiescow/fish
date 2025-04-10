# curl fish completion

# Complete file paths after @
complete -c curl -n 'string match -qr "^@" -- (commandline -ct)' -k -xa "(printf '%s\n' -- @(__fish_complete_suffix --complete=(commandline -ct | string replace -r '^@' '') ''))"

complete --command curl --long-option 'abstract-unix-socket' --description 'Connect via abstract Unix domain socket' 
complete --command curl --long-option 'alt-svc' --description 'Enable alt-svc with this cache file' 
complete --command curl --long-option 'anyauth' --description 'Pick any authentication method' 
complete --command curl --short-option 'a' --long-option 'append' --description 'Append to target file when uploading' 
complete --command curl --long-option 'aws-sigv4' --description 'AWS V4 signature auth' 
complete --command curl --long-option 'basic' --description 'HTTP Basic Authentication' 
complete --command curl --long-option 'ca-native' --description 'Load CA certs from the OS' 
complete --command curl --long-option 'cacert' --description 'CA certificate to verify peer against' 
complete --command curl --long-option 'capath' --description 'CA directory to verify peer against' 
complete --command curl --short-option 'E' --long-option 'cert' --description 'Client certificate file and password' 
complete --command curl --long-option 'cert-status' --description 'Verify server cert status OCSP-staple' 
complete --command curl --long-option 'cert-type' --description 'Certificate type (DER/PEM/ENG/PROV/P12)' 
complete --command curl --long-option 'ciphers' --description 'TLS 1.2 (1.1, 1.0) ciphers to use' 
complete --command curl --long-option 'compressed' --description 'Request compressed response' 
complete --command curl --long-option 'compressed-ssh' --description 'Enable SSH compression' 
complete --command curl --short-option 'K' --long-option 'config' --description 'Read config from a file' 
complete --command curl --long-option 'connect-timeout' --description 'Maximum time allowed to connect' 
complete --command curl --long-option 'connect-to' --description 'Connect to host2 instead of host1' 
complete --command curl --short-option 'C' --long-option 'continue-at' --description 'Resumed transfer offset' 
complete --command curl --short-option 'b' --long-option 'cookie' --description 'Send cookies from string/load from file' 
complete --command curl --short-option 'c' --long-option 'cookie-jar' --description 'Save cookies to <filename> after operation' 
complete --command curl --long-option 'create-dirs' --description 'Create necessary local directory hierarchy' 
complete --command curl --long-option 'create-file-mode' --description 'File mode for created files' 
complete --command curl --long-option 'crlf' --description 'Convert LF to CRLF in upload' 
complete --command curl --long-option 'crlfile' --description 'Certificate Revocation list' 
complete --command curl --long-option 'curves' --description '(EC) TLS key exchange algorithms to request' 
complete --command curl --short-option 'd' --long-option 'data' --description 'HTTP POST data' 
complete --command curl --long-option 'data-ascii' --description 'HTTP POST ASCII data' 
complete --command curl --long-option 'data-binary' --description 'HTTP POST binary data' 
complete --command curl --long-option 'data-raw' --description 'HTTP POST data, '\''@'\'' allowed' 
complete --command curl --long-option 'data-urlencode' --description 'HTTP POST data URL encoded' 
complete --command curl --long-option 'delegation' --description 'GSS-API delegation permission' 
complete --command curl --long-option 'digest' --description 'HTTP Digest Authentication' 
complete --command curl --short-option 'q' --long-option 'disable' --description 'Disable .curlrc' 
complete --command curl --long-option 'disable-eprt' --description 'Inhibit using EPRT or LPRT' 
complete --command curl --long-option 'disable-epsv' --description 'Inhibit using EPSV' 
complete --command curl --long-option 'disallow-username-in-url' --description 'Disallow username in URL' 
complete --command curl --long-option 'dns-interface' --description 'Interface to use for DNS requests' 
complete --command curl --long-option 'dns-ipv4-addr' --description 'IPv4 address to use for DNS requests' 
complete --command curl --long-option 'dns-ipv6-addr' --description 'IPv6 address to use for DNS requests' 
complete --command curl --long-option 'dns-servers' --description 'DNS server addrs to use' 
complete --command curl --long-option 'doh-cert-status' --description 'Verify DoH server cert status OCSP-staple' 
complete --command curl --long-option 'doh-insecure' --description 'Allow insecure DoH server connections' 
complete --command curl --long-option 'doh-url' --description 'Resolve hostnames over DoH' 
complete --command curl --long-option 'dump-ca-embed' --description 'Write the embedded CA bundle to standard output' 
complete --command curl --short-option 'D' --long-option 'dump-header' --description 'Write the received headers to <filename>' 
complete --command curl --long-option 'ech' --description 'Configure ECH' 
complete --command curl --long-option 'egd-file' --description 'EGD socket path for random data' 
complete --command curl --long-option 'engine' --description 'Crypto engine to use' 
complete --command curl --long-option 'etag-compare' --description 'Load ETag from file' 
complete --command curl --long-option 'etag-save' --description 'Parse incoming ETag and save to a file' 
complete --command curl --long-option 'expect100-timeout' --description 'How long to wait for 100-continue' 
complete --command curl --short-option 'f' --long-option 'fail' --description 'Fail fast with no output on HTTP errors' 
complete --command curl --long-option 'fail-early' --description 'Fail on first transfer error' 
complete --command curl --long-option 'fail-with-body' --description 'Fail on HTTP errors but save the body' 
complete --command curl --long-option 'false-start' --description 'Enable TLS False Start' 
complete --command curl --short-option 'F' --long-option 'form' --description 'Specify multipart MIME data' 
complete --command curl --long-option 'form-escape' --description 'Escape form fields using backslash' 
complete --command curl --long-option 'form-string' --description 'Specify multipart MIME data' 
complete --command curl --long-option 'ftp-account' --description 'Account data string' 
complete --command curl --long-option 'ftp-alternative-to-user' --description 'String to replace USER \[name\]' 
complete --command curl --long-option 'ftp-create-dirs' --description 'Create the remote dirs if not present' 
complete --command curl --long-option 'ftp-method' --description 'Control CWD usage' 
complete --command curl --long-option 'ftp-pasv' --description 'Send PASV/EPSV instead of PORT' 
complete --command curl --short-option 'P' --long-option 'ftp-port' --description 'Send PORT instead of PASV' 
complete --command curl --long-option 'ftp-pret' --description 'Send PRET before PASV' 
complete --command curl --long-option 'ftp-skip-pasv-ip' --description 'Skip the IP address for PASV' 
complete --command curl --long-option 'ftp-ssl-ccc' --description 'Send CCC after authenticating' 
complete --command curl --long-option 'ftp-ssl-ccc-mode' --description 'Set CCC mode' 
complete --command curl --long-option 'ftp-ssl-control' --description 'Require TLS for login, clear for transfer' 
complete --command curl --short-option 'G' --long-option 'get' --description 'Put the post data in the URL and use GET' 
complete --command curl --short-option 'g' --long-option 'globoff' --description 'Disable URL globbing with {} and \[\]' 
complete --command curl --long-option 'happy-eyeballs-timeout-ms' --description 'Time for IPv6 before IPv4' 
complete --command curl --long-option 'haproxy-clientip' --description 'Set address in HAProxy PROXY' 
complete --command curl --long-option 'haproxy-protocol' --description 'Send HAProxy PROXY protocol v1 header' 
complete --command curl --short-option 'I' --long-option 'head' --description 'Show document info only' 
complete --command curl --short-option 'H' --long-option 'header' --description 'Pass custom header(s) to server' 
complete --command curl --short-option 'h' --long-option 'help' --description 'Get help for commands' 
complete --command curl --long-option 'hostpubmd5' --description 'Acceptable MD5 hash of host public key' 
complete --command curl --long-option 'hostpubsha256' --description 'Acceptable SHA256 hash of host public key' 
complete --command curl --long-option 'hsts' --description 'Enable HSTS with this cache file' 
complete --command curl --long-option 'http0.9' --description 'Allow HTTP 0.9 responses' 
complete --command curl --short-option '0' --long-option 'http1.0' --description 'Use HTTP 1.0' 
complete --command curl --long-option 'http1.1' --description 'Use HTTP 1.1' 
complete --command curl --long-option 'http2' --description 'Use HTTP/2' 
complete --command curl --long-option 'http2-prior-knowledge' --description 'Use HTTP 2 without HTTP/1.1 Upgrade' 
complete --command curl --long-option 'http3' --description 'Use HTTP v3' 
complete --command curl --long-option 'http3-only' --description 'Use HTTP v3 only' 
complete --command curl --long-option 'ignore-content-length' --description 'Ignore the size of the remote resource' 
complete --command curl --short-option 'k' --long-option 'insecure' --description 'Allow insecure server connections' 
complete --command curl --long-option 'interface' --description 'Use network interface' 
complete --command curl --long-option 'ip-tos' --description 'Set IP Type of Service or Traffic Class' 
complete --command curl --long-option 'ipfs-gateway' --description 'Gateway for IPFS' 
complete --command curl --short-option '4' --long-option 'ipv4' --description 'Resolve names to IPv4 addresses' 
complete --command curl --short-option '6' --long-option 'ipv6' --description 'Resolve names to IPv6 addresses' 
complete --command curl --long-option 'json' --description 'HTTP POST JSON' 
complete --command curl --short-option 'j' --long-option 'junk-session-cookies' --description 'Ignore session cookies read from file' 
complete --command curl --long-option 'keepalive-cnt' --description 'Maximum number of keepalive probes' 
complete --command curl --long-option 'keepalive-time' --description 'Interval time for keepalive probes' 
complete --command curl --long-option 'key' --description 'Private key filename' 
complete --command curl --long-option 'key-type' --description 'Private key file type (DER/PEM/ENG)' 
complete --command curl --long-option 'krb' --description 'Enable Kerberos with security <level>' 
complete --command curl --long-option 'libcurl' --description 'Generate libcurl code for this command line' 
complete --command curl --long-option 'limit-rate' --description 'Limit transfer speed to RATE' 
complete --command curl --short-option 'l' --long-option 'list-only' --description 'List only mode' 
complete --command curl --long-option 'local-port' --description 'Use a local port number within RANGE' 
complete --command curl --short-option 'L' --long-option 'location' --description 'Follow redirects' 
complete --command curl --long-option 'location-trusted' --description 'As --location, but send secrets to other hosts' 
complete --command curl --long-option 'login-options' --description 'Server login options' 
complete --command curl --long-option 'mail-auth' --description 'Originator address of the original email' 
complete --command curl --long-option 'mail-from' --description 'Mail from this address' 
complete --command curl --long-option 'mail-rcpt' --description 'Mail to this address' 
complete --command curl --long-option 'mail-rcpt-allowfails' --description 'Allow RCPT TO command to fail' 
complete --command curl --short-option 'M' --long-option 'manual' --description 'Display the full manual' 
complete --command curl --long-option 'max-filesize' --description 'Maximum file size to download' 
complete --command curl --long-option 'max-redirs' --description 'Maximum number of redirects allowed' 
complete --command curl --short-option 'm' --long-option 'max-time' --description 'Maximum time allowed for transfer' 
complete --command curl --long-option 'metalink' --description 'Process given URLs as metalink XML file' 
complete --command curl --long-option 'mptcp' --description 'Enable Multipath TCP' 
complete --command curl --long-option 'negotiate' --description 'Use HTTP Negotiate (SPNEGO) authentication' 
complete --command curl --short-option 'n' --long-option 'netrc' --description 'Must read .netrc for username and password' 
complete --command curl --long-option 'netrc-file' --description 'Specify FILE for netrc' 
complete --command curl --long-option 'netrc-optional' --description 'Use either .netrc or URL' 
complete --command curl --short-option ':' --long-option 'next' --description 'Make next URL use separate options' 
complete --command curl --long-option 'no-alpn' --description 'Disable the ALPN TLS extension' 
complete --command curl --short-option 'N' --long-option 'no-buffer' --description 'Disable buffering of the output stream' 
complete --command curl --long-option 'no-clobber' --description 'Do not overwrite files that already exist' 
complete --command curl --long-option 'no-keepalive' --description 'Disable TCP keepalive on the connection' 
complete --command curl --long-option 'no-npn' --description 'Disable the NPN TLS extension' 
complete --command curl --long-option 'no-progress-meter' --description 'Do not show the progress meter' 
complete --command curl --long-option 'no-sessionid' --description 'Disable SSL session-ID reusing' 
complete --command curl --long-option 'noproxy' --description 'List of hosts which do not use proxy' 
complete --command curl --long-option 'ntlm' --description 'HTTP NTLM authentication' 
complete --command curl --long-option 'ntlm-wb' --description 'HTTP NTLM authentication with winbind' 
complete --command curl --long-option 'oauth2-bearer' --description 'OAuth 2 Bearer Token' 
complete --command curl --short-option 'o' --long-option 'output' --description 'Write to file instead of stdout' 
complete --command curl --long-option 'output-dir' --description 'Directory to save files in' 
complete --command curl --short-option 'Z' --long-option 'parallel' --description 'Perform transfers in parallel' 
complete --command curl --long-option 'parallel-immediate' --description 'Do not wait for multiplexing' 
complete --command curl --long-option 'parallel-max' --description 'Maximum concurrency for parallel transfers' 
complete --command curl --long-option 'pass' --description 'Passphrase for the private key' 
complete --command curl --long-option 'path-as-is' --description 'Do not squash .. sequences in URL path' 
complete --command curl --long-option 'pinnedpubkey' --description 'Public key to verify peer against' 
complete --command curl --long-option 'post301' --description 'Do not switch to GET after a 301 redirect' 
complete --command curl --long-option 'post302' --description 'Do not switch to GET after a 302 redirect' 
complete --command curl --long-option 'post303' --description 'Do not switch to GET after a 303 redirect' 
complete --command curl --long-option 'preproxy' --description '\[protocol\://\]host\[\:port\]  Use this proxy first' 
complete --command curl --short-option '#' --long-option 'progress-bar' --description 'Display transfer progress as a bar' 
complete --command curl --long-option 'proto' --description 'Enable/disable PROTOCOLS' 
complete --command curl --long-option 'proto-default' --description 'Use PROTOCOL for any URL missing a scheme' 
complete --command curl --long-option 'proto-redir' --description 'Enable/disable PROTOCOLS on redirect' 
complete --command curl --short-option 'x' --long-option 'proxy' --description '\[protocol\://\]host\[\:port\]  Use this proxy' 
complete --command curl --long-option 'proxy-anyauth' --description 'Pick any proxy authentication method' 
complete --command curl --long-option 'proxy-basic' --description 'Use Basic authentication on the proxy' 
complete --command curl --long-option 'proxy-ca-native' --description 'Load CA certs from the OS to verify proxy' 
complete --command curl --long-option 'proxy-cacert' --description 'CA certificates to verify proxy against' 
complete --command curl --long-option 'proxy-capath' --description 'CA directory to verify proxy against' 
complete --command curl --long-option 'proxy-cert' --description 'Set client certificate for proxy' 
complete --command curl --long-option 'proxy-cert-type' --description 'Client certificate type for HTTPS proxy' 
complete --command curl --long-option 'proxy-ciphers' --description 'TLS 1.2 (1.1, 1.0) ciphers to use for proxy' 
complete --command curl --long-option 'proxy-crlfile' --description 'Set a CRL list for proxy' 
complete --command curl --long-option 'proxy-digest' --description 'Digest auth with the proxy' 
complete --command curl --long-option 'proxy-header' --description 'Pass custom header(s) to proxy' 
complete --command curl --long-option 'proxy-http2' --description 'Use HTTP/2 with HTTPS proxy' 
complete --command curl --long-option 'proxy-insecure' --description 'Skip HTTPS proxy cert verification' 
complete --command curl --long-option 'proxy-key' --description 'Private key for HTTPS proxy' 
complete --command curl --long-option 'proxy-key-type' --description 'Private key file type for proxy' 
complete --command curl --long-option 'proxy-negotiate' --description 'HTTP Negotiate (SPNEGO) auth with the proxy' 
complete --command curl --long-option 'proxy-ntlm' --description 'NTLM authentication with the proxy' 
complete --command curl --long-option 'proxy-pass' --description 'Passphrase for private key for HTTPS proxy' 
complete --command curl --long-option 'proxy-pinnedpubkey' --description 'FILE/HASHES public key to verify proxy with' 
complete --command curl --long-option 'proxy-service-name' --description 'SPNEGO proxy service name' 
complete --command curl --long-option 'proxy-ssl-allow-beast' --description 'Allow this security flaw for HTTPS proxy' 
complete --command curl --long-option 'proxy-ssl-auto-client-cert' --description 'Auto client certificate for proxy' 
complete --command curl --long-option 'proxy-tls13-ciphers' --description 'TLS 1.3 proxy cipher suites' 
complete --command curl --long-option 'proxy-tlsauthtype' --description 'TLS authentication type for HTTPS proxy' 
complete --command curl --long-option 'proxy-tlspassword' --description 'TLS password for HTTPS proxy' 
complete --command curl --long-option 'proxy-tlsuser' --description 'TLS username for HTTPS proxy' 
complete --command curl --long-option 'proxy-tlsv1' --description 'TLSv1 for HTTPS proxy' 
complete --command curl --short-option 'U' --long-option 'proxy-user' --description 'Proxy user and password' 
complete --command curl --long-option 'proxy1.0' --description 'Use HTTP/1.0 proxy on given port' 
complete --command curl --short-option 'p' --long-option 'proxytunnel' --description 'HTTP proxy tunnel (using CONNECT)' 
complete --command curl --long-option 'pubkey' --description 'SSH Public key filename' 
complete --command curl --short-option 'Q' --long-option 'quote' --description 'Send command(s) to server before transfer' 
complete --command curl --long-option 'random-file' --description 'File for reading random data from' 
complete --command curl --short-option 'r' --long-option 'range' --description 'Retrieve only the bytes within RANGE' 
complete --command curl --long-option 'rate' --description 'Request rate for serial transfers' 
complete --command curl --long-option 'raw' --description 'Do HTTP raw; no transfer decoding' 
complete --command curl --short-option 'e' --long-option 'referer' --description 'Referrer URL' 
complete --command curl --short-option 'J' --long-option 'remote-header-name' --description 'Use the header-provided filename' 
complete --command curl --short-option 'O' --long-option 'remote-name' --description 'Write output to file named as remote file' 
complete --command curl --long-option 'remote-name-all' --description 'Use the remote filename for all URLs' 
complete --command curl --short-option 'R' --long-option 'remote-time' --description 'Set remote file'\''s time on local output' 
complete --command curl --long-option 'remove-on-error' --description 'Remove output file on errors' 
complete --command curl --short-option 'X' --long-option 'request' --description 'Specify request method to use' 
complete --command curl --long-option 'request-target' --description 'Specify the target for this request' 
complete --command curl --long-option 'resolve' --description 'Resolve host+port to address' 
complete --command curl --long-option 'retry' --description 'Retry request if transient problems occur' 
complete --command curl --long-option 'retry-all-errors' --description 'Retry all errors (with --retry)' 
complete --command curl --long-option 'retry-connrefused' --description 'Retry on connection refused (with --retry)' 
complete --command curl --long-option 'retry-delay' --description 'Wait time between retries' 
complete --command curl --long-option 'retry-max-time' --description 'Retry only within this period' 
complete --command curl --long-option 'sasl-authzid' --description 'Identity for SASL PLAIN authentication' 
complete --command curl --long-option 'sasl-ir' --description 'Initial response in SASL authentication' 
complete --command curl --long-option 'service-name' --description 'SPNEGO service name' 
complete --command curl --short-option 'S' --long-option 'show-error' --description 'Show error even when -s is used' 
complete --command curl --short-option 'i' --long-option 'show-headers' --description 'Show response headers in output' 
complete --command curl --short-option 's' --long-option 'silent' --description 'Silent mode' 
complete --command curl --long-option 'skip-existing' --description 'Skip download if local file already exists' 
complete --command curl --long-option 'socks4' --description 'SOCKS4 proxy on given host + port' 
complete --command curl --long-option 'socks4a' --description 'SOCKS4a proxy on given host + port' 
complete --command curl --long-option 'socks5' --description 'SOCKS5 proxy on given host + port' 
complete --command curl --long-option 'socks5-basic' --description 'Username/password auth for SOCKS5 proxies' 
complete --command curl --long-option 'socks5-gssapi' --description 'Enable GSS-API auth for SOCKS5 proxies' 
complete --command curl --long-option 'socks5-gssapi-nec' --description 'Compatibility with NEC SOCKS5 server' 
complete --command curl --long-option 'socks5-gssapi-service' --description 'SOCKS5 proxy service name for GSS-API' 
complete --command curl --long-option 'socks5-hostname' --description 'SOCKS5 proxy, pass hostname to proxy' 
complete --command curl --short-option 'Y' --long-option 'speed-limit' --description 'Stop transfers slower than this' 
complete --command curl --short-option 'y' --long-option 'speed-time' --description 'Trigger '\''speed-limit'\'' abort after this time' 
complete --command curl --long-option 'ssl' --description 'Try enabling TLS' 
complete --command curl --long-option 'ssl-allow-beast' --description 'Allow security flaw to improve interop' 
complete --command curl --long-option 'ssl-auto-client-cert' --description 'Use auto client certificate (Schannel)' 
complete --command curl --long-option 'ssl-no-revoke' --description 'Disable cert revocation checks (Schannel)' 
complete --command curl --long-option 'ssl-reqd' --description 'Require SSL/TLS' 
complete --command curl --long-option 'ssl-revoke-best-effort' --description 'Ignore missing cert CRL dist points' 
complete --command curl --long-option 'ssl-sessions' --description 'Load/save SSL session tickets from/to this file' 
complete --command curl --short-option '2' --long-option 'sslv2' --description 'SSLv2' 
complete --command curl --short-option '3' --long-option 'sslv3' --description 'SSLv3' 
complete --command curl --long-option 'stderr' --description 'Where to redirect stderr' 
complete --command curl --long-option 'styled-output' --description 'Enable styled output for HTTP headers' 
complete --command curl --long-option 'suppress-connect-headers' --description 'Suppress proxy CONNECT response headers' 
complete --command curl --long-option 'tcp-fastopen' --description 'Use TCP Fast Open' 
complete --command curl --long-option 'tcp-nodelay' --description 'Set TCP_NODELAY' 
complete --command curl --short-option 't' --long-option 'telnet-option' --description 'Set telnet option' 
complete --command curl --long-option 'tftp-blksize' --description 'Set TFTP BLKSIZE option' 
complete --command curl --long-option 'tftp-no-options' --description 'Do not send any TFTP options' 
complete --command curl --short-option 'z' --long-option 'time-cond' --description 'Transfer based on a time condition' 
complete --command curl --long-option 'tls-earlydata' --description 'Allow use of TLSv1.3 early data (0RTT)' 
complete --command curl --long-option 'tls-max' --description 'Maximum allowed TLS version' 
complete --command curl --long-option 'tls13-ciphers' --description 'TLS 1.3 cipher suites to use' 
complete --command curl --long-option 'tlsauthtype' --description 'TLS authentication type' 
complete --command curl --long-option 'tlspassword' --description 'TLS password' 
complete --command curl --long-option 'tlsuser' --description 'TLS username' 
complete --command curl --short-option '1' --long-option 'tlsv1' --description 'TLSv1.0 or greater' 
complete --command curl --long-option 'tlsv1.0' --description 'TLSv1.0 or greater' 
complete --command curl --long-option 'tlsv1.1' --description 'TLSv1.1 or greater' 
complete --command curl --long-option 'tlsv1.2' --description 'TLSv1.2 or greater' 
complete --command curl --long-option 'tlsv1.3' --description 'TLSv1.3 or greater' 
complete --command curl --long-option 'tr-encoding' --description 'Request compressed transfer encoding' 
complete --command curl --long-option 'trace' --description 'Write a debug trace to FILE' 
complete --command curl --long-option 'trace-ascii' --description 'Like --trace, but without hex output' 
complete --command curl --long-option 'trace-config' --description 'Details to log in trace/verbose output' 
complete --command curl --long-option 'trace-ids' --description 'Transfer + connection ids in verbose output' 
complete --command curl --long-option 'trace-time' --description 'Add time stamps to trace/verbose output' 
complete --command curl --long-option 'unix-socket' --description 'Connect through this Unix domain socket' 
complete --command curl --short-option 'T' --long-option 'upload-file' --description 'Transfer local FILE to destination' 
complete --command curl --long-option 'url' --description 'URL to work with' 
complete --command curl --long-option 'url-query' --description 'Add a URL query part' 
complete --command curl --short-option 'B' --long-option 'use-ascii' --description 'Use ASCII/text transfer' 
complete --command curl --short-option 'u' --long-option 'user' --description 'Server user and password' 
complete --command curl --short-option 'A' --long-option 'user-agent' --description 'Send User-Agent <name> to server' 
complete --command curl --long-option 'variable' --description 'Set variable' 
complete --command curl --short-option 'v' --long-option 'verbose' --description 'Make the operation more talkative' 
complete --command curl --short-option 'V' --long-option 'version' --description 'Show version number and quit' 
complete --command curl --long-option 'vlan-priority' --description 'Set VLAN priority' 
complete --command curl --short-option 'w' --long-option 'write-out' --description 'Output FORMAT after completion' 
complete --command curl --long-option 'xattr' --description 'Store metadata in extended file attributes' 
