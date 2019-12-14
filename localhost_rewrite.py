import mitmproxy
import os

def request(flow):

    if "localhost" in flow.request.pretty_host or flow.request.pretty_host.endswith("127.0.0.1"):
            # mitmproxy.ctx.log( flow.request.path )
            localhost_target = os.getenv('LOCALHOST_TARGET', 'host.docker.internal')
            flow.request.host = localhost_target
            flow.request.headers["Host"] = localhost_target