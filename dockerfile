FROM ghcr.io/eunomia-bpf/ecc-x86_64:latest

COPY . /root/template
WORKDIR /root/template

RUN wget -q -O /root/.eunomia/bin/ecli https://github.com/eunomia-bpf/eunomia-bpf/releases/latest/download/ecli

RUN chmod +x /root/.eunomia/bin/ecli

ENV PATH="/root/.eunomia/bin:${PATH}"

RUN make build

ENTRYPOINT ["ecli"]

CMD ["run", "src/package.json"]
