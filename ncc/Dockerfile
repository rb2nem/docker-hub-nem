FROM java:8
MAINTAINER rb2
RUN apt-get -y install tar gnupg
RUN curl http://bob.nem.ninja/nis-ncc-0.6.74.tgz > nis-ncc-0.6.74.tgz
RUN curl http://bob.nem.ninja/nis-ncc-0.6.74.tgz.sig > nis-ncc-0.6.74.tgz.sig
RUN gpg --keyserver keys.gnupg.net --recv-key A46494A9
RUN gpg --verify nis-ncc-0.6.74.tgz.sig nis-ncc-0.6.74.tgz && tar zxf nis-ncc-0.6.74.tgz
COPY start.sh /usr/local/bin/start.sh
RUN echo "nem:nem:1000:1000::/home/nem:" | newusers
RUN chown nem /package -R
USER nem
RUN mkdir -p /home/nem/nem/ncc/
EXPOSE 8989
USER root
ENTRYPOINT ["/usr/local/bin/start.sh"]
