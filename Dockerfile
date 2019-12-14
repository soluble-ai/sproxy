FROM mitmproxy/mitmproxy


ADD https://raw.githubusercontent.com/mitmproxy/mitmproxy/master/examples/complex/har_dump.py /scripts/har_dump.py
COPY localhost_rewrite.py /scripts/localhost_rewrite.py
