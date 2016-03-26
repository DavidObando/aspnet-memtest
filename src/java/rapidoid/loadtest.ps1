param([int] $iterations = 50000)

$url = "http://localhost:8080/plaintext"
& loadtest -k -n $iterations -c 100 $url
