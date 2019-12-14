FROM mitmproxy/mitmproxy

#RUN mkdir /output && chown mitmproxy:mitmproxy /output
ADD https://raw.githubusercontent.com/mitmproxy/mitmproxy/master/examples/complex/har_dump.py /scripts/har_dump.py
COPY localhost_rewrite.py /scripts/localhost_rewrite.py
RUN chown -R mitmproxy:mitmproxy /scripts
RUN touch /scripts/* && chmod ugo+r /scripts/* 



