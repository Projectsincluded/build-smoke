# build-smoke

Tiny public fixture used by the `build` namespace smoke test
(`cluster/pi-cluster/infrastructure/production/build/install.md` §3b).

It exists so the end-to-end gate — fetch → gitleaks → buildah → trivy → cosign —
can be exercised against a repository that is public (no GitHub App yet) and has a
Dockerfile that passes the vulnerability gate. A failure here means the pipeline
is broken, not the image.
