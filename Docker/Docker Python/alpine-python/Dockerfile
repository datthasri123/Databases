FROM alpine:latest

ENV PATH /usr/local/bin:$PATH

RUN set -eux; \
	apk add --no-cache \
		ca-certificates \
		tzdata \
	;

RUN set -eux;

RUN apk update \
    && apk add python3

COPY HelloWorld/hello.py /app/

RUN mkdir /var/log/python/ \
    && touch access.log \
    && touch error.log
    
RUN ln -sf /dev/stdout /var/log/python/access.log \
    && ln -sf /dev/stderr /var/log/python/error.log 

CMD ["python3", "/app/hello.py"]