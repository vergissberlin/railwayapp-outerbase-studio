ARG VERSION=v0.9.2

FROM chewcw/outerbase-studio:${VERSION}

LABEL maintainer="VergissBerlin"
LABEL description="Outerbase Studio Template for Railway"

# This image ignores $PORT and always binds to 8080 internally (verified on a live Railway
# deployment). Railway's proxy auto-detects the listening port regardless, so no startCommand
# or entrypoint wrapper is needed here - EXPOSE just documents reality for local `docker run`.
EXPOSE 8080
