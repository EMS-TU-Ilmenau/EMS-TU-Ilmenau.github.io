FROM ubuntu:latest

# Install required packages
RUN apt-get update && apt-get install -y \
    wget \
    tar \
    git \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Download and install the latest Hugo Extended version
RUN set -eux; \
    ARCHIVE_URL=$(wget -qO- https://api.github.com/repos/gohugoio/hugo/releases/latest | \
        grep "browser_download_url" | grep "extended" | grep "Linux-64bit.tar.gz" | head -n 1 | cut -d '"' -f 4); \
    wget -q "${ARCHIVE_URL}" -O hugo.tar.gz; \
    tar -zxvf hugo.tar.gz hugo; \
    mv hugo /usr/local/bin/hugo; \
    chmod +x /usr/local/bin/hugo; \
    rm hugo.tar.gz