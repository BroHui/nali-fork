FROM alpine as build
WORKDIR /app
RUN apk add --no-cache make bash gcc libc-dev perl
COPY . /app/
RUN ./configure \
	&& make \
	&& make install

FROM alpine
COPY --from=build /usr/local/bin/ /usr/local/bin/
COPY --from=build /usr/local/share /usr/local/share/
COPY --from=build /usr/bin/perl /usr/bin/
COPY --from=build /usr/lib/perl5/core_perl/CORE/libperl.so /usr/lib/perl5/core_perl/CORE/
