param([int] $iterations = 50000)

$url = "http://localhost:5000/"
& loadtest -k -n $iterations -c 100 $url
# & loadtest -k -n $iterations -c 16 --rps 100 $url