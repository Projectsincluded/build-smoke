# Smoke-test fixture for the pi-cluster build pipeline.
# Deliberately trivial and based on a current alpine, so the Trivy HIGH/CRITICAL
# gate is clean by construction and a failure means the PIPELINE broke, not the image.
FROM alpine:3.22
RUN echo "built by the pi-cluster build pipeline" > /hello.txt
CMD ["cat", "/hello.txt"]
