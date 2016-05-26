# docker-nghttpx
nghttpx is a light-weight HTTP/2 proxy. https://github.com/nghttp2/nghttp2
This docker image is based on debian:jessie.
The openssl has been upgrade to 1.0.2 from debian stretch to support ALPN.
The libnghttp2 in this image is built against openssl 1.0.2.

Currently, only client mode is implemented.

## Usage
place the client certification, private key, and password files in a directory (e.g. key), then

`docker run --name=nghttpx-client \
            -v ./key:/key \
            -e H2_CERT=client.cer \
            -e H2_KEY=client.key \
            -e H2_KEYPASS=client.pass \
            -e H2_BACKEND=yourh2.proxyserver.com,443;;proto=h2;tls
            -e H2_WORKERS=4 \
            -p 8080:8080
            yangliu/nghttpx`

The above command will start a HTTP/1.1 proxy on localhost:8080 that connects to yourh2.proxyserver.com (HTTP/2).