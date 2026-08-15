# Outerbase Studio for railway.app

![Template Header](./template-header.svg)

Deploy Outerbase Studio on Railway with one click.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/REPLACE_WITH_RAILWAY_TEMPLATE_CODE?referralCode=2_sIT9&utm_medium=integration&utm_source=template&utm_campaign=generic)

## ✨ Features

* Outerbase Studio on Railway with a Dockerfile build
* Pinned upstream image so Renovate can raise update PRs
* Healthcheck and restart policy preconfigured
* Persistent volume mount path declared

## 🚀 Quick Start

1. Click "Deploy on Railway"
2. Set the environment variables listed below
3. Attach a volume at `/app/data` before sending production traffic
4. Wait for the build and open the generated URL

## ⚙️ Configuration

### Environment variables

```bash
STUDIO_USER=admin
STUDIO_PASSWORD=changeme
```

Set real credentials as Railway variables, never in a file inside this repository.

### Optional

* `PORT`: HTTP port Outerbase Studio binds to (default: `3000`). Railway sets this for you;
  leave it alone unless you also change the domain's target port.

## 💾 Persistence

`railway.toml` declares `requiredMountPath = "/app/data"`. Attach a Railway volume to that
path before production traffic, otherwise all data is lost on every redeploy.

## ⚠️ Known limitations

This template uses the community-maintained [`chewcw/outerbase-studio`](https://hub.docker.com/r/chewcw/outerbase-studio)
image (pinned at `v0.9.2`), because the upstream [outerbase/studio](https://github.com/outerbase/studio)
project has no official Docker image yet ([tracking discussion](https://github.com/outerbase/studio/discussions/443)).
Two details are unverified against primary-source documentation and should be confirmed on first deploy:

* `STUDIO_USER` / `STUDIO_PASSWORD` are the env vars this image is reported to require for basic
  auth — check the deploy logs if the container fails to start.
* `/app/data` is a precautionary mount path; it is not confirmed that the image persists anything there.

## 🐳 Local Development

```bash
git clone https://github.com/vergissberlin/railwayapp-outerbase-studio.git
cd railwayapp-outerbase-studio
cp .env.example .env
docker compose up -d
```

Then open http://localhost:3000.

## 🪲 Bug Reporting

Found a bug? [Create an issue](https://github.com/vergissberlin/railwayapp-outerbase-studio/issues/new) or open a pull request with a fix.

## 🤝 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## 📝 License

MIT — see [LICENSE](LICENSE).

## 🔒 Security

* All credentials are supplied as environment variables, never committed
* Railway terminates TLS for the generated domain
* Renovate keeps the pinned upstream image up to date

## Railway runtime defaults

`railway.toml` ships these defaults:

* Healthcheck path: `/`
* Restart policy: `ON_FAILURE` with up to 10 retries
* Dockerfile-based build

Outerbase Studio listens on `$PORT` directly, so no start command is configured.

## 📚 Resources

* [Outerbase Studio documentation](https://github.com/outerbase/studio)
* [Railway documentation](https://docs.railway.app/)
* [Template updates](https://docs.railway.com/reference/templates#updatable-templates)

<!-- footer -->
