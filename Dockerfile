FROM sqitch/sqitch:0.9998
LABEL maintainer "Greg Martin <greg.l.martin@gmail.com>"
LABEL revision "202402011028"

COPY docker/run_migrations.sh /
COPY migrations /migrations

WORKDIR /migrations

ENTRYPOINT ["/run_migrations.sh"]