param([int] $iterations = 50000)

$url = "http://127.0.0.1:3000/"
& loadtest -k -n $iterations -c 100 $url
# & loadtest -k -n $iterations -c 16 --rps 100 $url