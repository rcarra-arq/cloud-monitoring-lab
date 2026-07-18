import argparse
import requests
import time

parser = argparse.ArgumentParser(
    description="Generate HTTP load at a controlled rate and report the result."
)
parser.add_argument("--url", default="http://127.0.0.1:8080",
                    help="target URL (default: %(default)s)")
parser.add_argument("--rate", type=float, default=5.0,
                    help="requests per second (default: %(default)s)")
parser.add_argument("--duration", type=int, default=10,
                    help="how long to run, in seconds (default: %(default)s)")
args = parser.parse_args()

start = time.time()
count = 0
ok = 0
failed = 0

while time.time() - start < args.duration:
    try:
        r = requests.get(args.url)
        if r.status_code == 200:
            ok += 1
        else:
            failed += 1
    except requests.exceptions.ConnectionError:
        failed += 1
    count += 1
    time.sleep(1 / args.rate)

elapsed = time.time() - start
print("Sent", count, "requests in", round(elapsed, 1), "seconds")
print("OK:", ok, "| Failed:", failed)