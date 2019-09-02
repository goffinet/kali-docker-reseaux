FROM kalilinux/kali-linux-docker
# Metadata params
ENV DEBIAN_FRONTEND noninteractive
RUN set -x \
    && apt-get -yqq update \
    && apt-get -yqq install arp-scan nmap tshark tcpdump dnsutils traceroute net-tools hping3 ncat \
    && apt-get clean
CMD ["bash"]
