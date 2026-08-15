ARG VERSION=v0.9.2

FROM chewcw/outerbase-studio:${VERSION}

LABEL maintainer="VergissBerlin"
LABEL description="Outerbase Studio Template for Railway"

# Railway ignores EXPOSE and routes traffic to the port named by $PORT.
# EXPOSE documents the local default, ENV PORT keeps that default reproducible.
ENV PORT=3000
EXPOSE 3000
